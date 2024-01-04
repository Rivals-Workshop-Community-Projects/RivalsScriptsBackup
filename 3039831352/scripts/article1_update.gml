//article1_update.gml

if (!ignores_walls) ignores_walls = true;

//the idle state is interractable
is_hittable = (state == 1);
ring_is_useable = (state == 1);

//ring going away
if (state == 1 && state_timer >= destruct_time || player_used_ring || player_id.state == PS_DEAD || player_id.state == PS_RESPAWN)
{
    if (state != 2) set_artc_state(2);
}

//prevent article from being hit by the owner's teammates (unless tester is using fspecial or can hit the article with rune H)
with (oPlayer)
{
    if (get_player_team(player) == get_player_team(other.trick_ring_player))
    {
        //can_be_hit works similarly to a move_cooldown, where it's a timer that counts down to 0
        other.can_be_hit[player] = 2;
    }
}

//state machine
switch (state)
{
    case 0: //spawning
        cur_anim_frame = state_timer >= ring_spawn_anim_time ? image_number-1 : lerp(0, image_number, state_timer/ring_spawn_anim_time);
        if (point_distance(0, 0, hsp, vsp) > 1) do_sparkles(); //vfx

        //friction shenanigans
        if (abs(hsp) > ring_air_fric) hsp -= ring_air_fric * sign(hsp);
        else hsp = 0;
        if (abs(vsp) > ring_air_fric) vsp -= ring_air_fric * sign(vsp);
        else vsp = 0;
        
        //wall bouncing
        if (solid_check() == "left" || solid_check() == "right") artc_bounce(1);
        if (solid_check() == "up" || solid_check() == "down" || plat_check() != noone && vsp > 0) artc_bounce(0);

        //stop on borders fun fact playtest doesn't have any lmao
        if (!player_id.playtest_active)
        {
            if (x < get_stage_data(7) + 20 || x > get_stage_data(8) - 20) hsp = 0;
            if (y < get_stage_data(9) + 20 || y > get_stage_data(10) - 20) vsp = 0;
        }
        
        if (state_timer >= ring_spawn_time) set_artc_state(1);
        break;
    case 1: //idle
        hsp = 0;
        vsp = 0;

        //prevent sonic from spawning a ring if he doesn't own the existing one
        if (state_timer == 1) player_id.can_spawn_trick_ring = (trick_ring_player == player_id.player);

        //sparkle effect that will add to the initial glow
        if (state_timer % 3 == 0)
        {
            var fx = spawn_hit_fx(
                x + (random_func(8, 9, true)-4) * 8 + lengthdir_x(32, ring_launch_angle),
                y + (random_func(9, 9, true)-4) * 8 + lengthdir_y(32, ring_launch_angle),
                fx_sparkle
            );
            fx.depth = depth - 1;
            fx.hsp = lengthdir_x(1, ring_launch_angle);
            fx.vsp = lengthdir_y(1, ring_launch_angle);
        }

        //interraction with ring
        with (oPlayer) if (place_meeting(x, y, other) && !hitpause)
        {
            //you can parry the ring, which makes you the current owner of it
            //you can hit the ring to change the owner but that's on the hit script
            if (perfect_dodging && player != other.trick_ring_player) with (other)
            {
                trick_ring_player = other.player;
                trick_ring_player_id = other;
                hud_owner_col = (trick_ring_player_id.temp_level == 0 || get_match_setting(SET_TEAMS)) ? get_player_hud_color(trick_ring_player) : hud_col_sel[trick_ring_player];

                //spawn vfx
                var newdust = spawn_dust_fx(x, y, asset_get("empty_sprite"), 18);
                newdust.x = floor(x);
                newdust.y = floor(y);
                newdust.dust_fx = 9;
                newdust.player = trick_ring_player;
                sound_play(sound_get("sfx_rainbowring_swap"));
                sound_play(asset_get("sfx_parry_success"));

                ring_stun_start_time = 0;
                set_artc_state(4);

                with (trick_ring_player_id)
                {
                    old_hsp = hsp;
                    old_vsp = vsp;
                    hitstop = 10;
                    hitpause = true;

                    invince_time = hitstop;
                    invincible = true;
                }
                exit;
            }
            else if (!perfect_dodging && state != PS_RESPAWN && state != PS_DEAD && !hurtboxID.dodging && player != 5 && !bubbled)
            {
                //teammate / owner behaviour
                if (player == other.trick_ring_player && !get_match_setting(SET_TEAMS) || get_player_team(player) == get_player_team(other.trick_ring_player))
                {
                    if (("is_bar_sonic" in self || "sonic_rainbowring_atk" in self)) //sonic/compatibility behaviour
                    {
                        other.launching_player = player;
                        set_ring_attack("is_bar_sonic" in self ? AT_USPECIAL_2 : sonic_rainbowring_atk);
                    }
                    else //a teammate without compatibility
                    {
                        other.launching_player = player;
                        if (!hitpause) set_state(PS_IDLE_AIR);
                    }
                }
                else //enemy behaviour
                {
                    if (invince_time <= 0 && !initial_invince && !invincible)
                    {
                        other.launching_player = player;

                        //knockback shenanigans
                        /* old code lmao
                            var temp_angle = point_direction(x, y, x + hsp, y + vsp);
                            if (temp_angle > 60 && temp_angle < 150) hurt_img = 4;
                            else if (temp_angle > 240 && temp_angle < 300) hurt_img = 2;
                            else hurt_img = 0;
                            if (hsp != 0) spr_dir = -sign(hsp);
                        */
                        hurt_img = 4;

                        if (state != PS_HITSTUN) //set them to hitstun
                        {
                            hurtboxID.sprite_index = hitstun_hurtbox_spr;
                            hitstun_full = 30;
                            hitstun = hitstun_full;
                            hit_player = other.player;
                            set_state(PS_HITSTUN);
                        }
                        else //reset hitstun
                        {
                            state_timer = 0;
                            hitstun = hitstun_full;
                            other.ring_launch_speed = orig_knock;
                        }

                        if (self != other.player_id)
                        {
                            other.player_id.combo_timer += hitstun_full; //combo counter
                            other.player_id.combo_timer_full = other.player_id.combo_timer;
                            other.player_id.combo_hits ++;
                            other.player_id.comboing = true;
                        }
                    }
                }
                

                //setup
                if (other.launching_player > 0)
                {
                    x = other.x;
                    y = other.y;
                    free = true;
                    other.ring_launch_speed = other.ring_base_spd + (point_distance(x, y, x + hsp, y + vsp/2) / 2);
                    if (other.ring_launch_speed > other.ring_spd_limit) other.ring_launch_speed = other.ring_spd_limit;

                    //launch player up
                    if (state_cat != SC_HITSTUN && "is_bar_sonic" not in self) other.ring_launch_speed *= (gravity_speed/4+1);
                    hsp = lengthdir_x(other.ring_launch_speed, other.ring_launch_angle); //tbh i technecally don't need this but whatever
                    vsp = lengthdir_y(other.ring_launch_speed, other.ring_launch_angle);
                    if (vsp > 0) sent_down = true; //always bounce lol (it's unused)

                    other.player_used_ring = true;
                    exit;
                }
            }
        }
        break;
    case 2: //destroyed
        player_id.can_spawn_trick_ring = true;

        image_alpha = lerp(1, 0, state_timer/ring_despawn_time);
        var fx = spawn_hit_fx(
            x + (random_func(8, 15, true) - 8) * 8 + (lengthdir_x(32 * player_used_ring, ring_launch_angle)),
            y + (random_func(9, 15, true) - 8) * 8 + (lengthdir_y(32 * player_used_ring, ring_launch_angle)),
            fx_sparkle
        );
        fx.depth = depth - 1;
        if (player_used_ring)
        {
            fx.hsp = lengthdir_x(1, ring_launch_angle) + lengthdir_x(0.5, point_direction(x, y, fx.x, fx.y));
            fx.vsp = lengthdir_y(1, ring_launch_angle) + lengthdir_y(0.5, point_direction(x, y, fx.x, fx.y));

            cur_anim_frame = lerp(0, image_number, state_timer/ring_despawn_time);
            if (state_timer == 0)
            {
                sound_play(sound_get("sfx_rainbowring_use"));
                sound_play(asset_get("sfx_blink_dash"));
                var fx = spawn_hit_fx(x, y, fx_trickring_dirspark);
                fx.spr_dir = 1;
                fx.depth = depth - 1;
                fx.draw_angle = ring_launch_angle;
            }
        }
        else
        {
            fx.hsp = lengthdir_x(2, point_direction(x, y, fx.x, fx.y));
            fx.vsp = lengthdir_y(2, point_direction(x, y, fx.x, fx.y));

            if (state_timer == 0)
            {
                sound_play(sound_get("sfx_rainbowring_despawn"));
                var fx = spawn_hit_fx(x, y, fx_trickring_circspark);
                fx.depth = depth - 1;
            }
        }

        if (state_timer >= ring_despawn_time)
        {
            instance_destroy();
            exit;
        }
        break;
    //there is no state 3 in ba sing se
    case 4: //swapping owner
        if (state_timer == 0) spr_dir = x > trick_ring_player_id.x ? -1 : 1;
        var spins = 3;
        var time_math = (state_timer >= 0 ? state_timer : 0)/(ring_stun_time/2);

        cur_anim_frame = time_math > 1 ? image_number-1 : lerp(0, image_number-1, time_math);

        image_angle = ease_circOut(
            floor(spr_dir == 1 ? ring_launch_angle - 90 : ring_launch_angle - 90 + (360 * spins)),
            floor(spr_dir == 1 ? ring_launch_angle - 90 + (360 * spins) : ring_launch_angle - 90),
            floor(state_timer - ring_stun_start_time), ring_stun_time + abs(floor(ring_stun_start_time))
        );

        if (state_timer >= ring_stun_time) 
        {
            image_angle = (ring_launch_angle - 90) % 360;
            set_artc_state(1);
        }
        break;
}

state_timer ++;
image_index = cur_anim_frame;
artc_state_update(state);

#define artc_bounce(is_horz)
{
    if (is_horz) hsp *= -1;
    else vsp *= -1;

    sound_play(asset_get("sfx_oly_uspecial_hit"));
    var fx = spawn_hit_fx(
        x - (hsp * 2),
        y - (vsp * 2), 
        fx_trickring_col
    );
    fx.spr_dir = 1;
    fx.draw_angle = point_direction(0, 0, hsp, vsp);
}
#define set_artc_state(new_state)
{
    state = new_state;
    state_timer = 0;
}
#define artc_state_update(cur_state)
{
    switch (cur_state)
    {
        case 0: sprite_index = sprite_get("artc_tr_spawn"); break;
        case 1: sprite_index = sprite_get("artc_tr_idle"); break;
        case 2: sprite_index = sprite_get(player_used_ring ? "artc_tr_despawn" : "artc_tr_idle"); break;
        //case 3: sprite_index = sprite_get("artc_tr_collect"); break; //may not use this?
        case 4: sprite_index = sprite_get("artc_tr_swap"); break;
    }

    if (cur_state == 0) mask_index = sprite_get("artc_ring_mask");
    else mask_index = sprite_get("artc_tr_mask");
}
#define plat_check
{
    var on_plat = collision_rectangle(
        x - 16,
        y + 16 + 1 + vsp,
        x + 16,
        y + 16 + 1 + vsp,
        asset_get("par_jumpthrough"),
        false,
        true
    );

    var in_plat = collision_rectangle(
        x - 16,
        y + 16,
        x + 16,
        y + 16,
        asset_get("par_jumpthrough"),
        false,
        true
    );

    if (on_plat != noone && on_plat != in_plat) return on_plat;
    else return noone;
}
#define solid_check
{
    if (place_meeting(x + hsp, y, asset_get("par_block")))
    {
        if (hsp > 0) return "right";
        else if (hsp < 0) return "left";
        else return noone;
    }
    else if (place_meeting(x, y + vsp, asset_get("par_block")))
    {
        if (vsp > 0) return "down";
        else if (vsp < 0) return "up";
        else return noone;
    }
    else return noone;
}
#define check_offscreen(offset)
{
    if (x < get_stage_data(7) - offset || x > get_stage_data(8) + offset || y < get_stage_data(9) - offset || y > get_stage_data(10) + offset) return true;
    else return false;
}
#define do_sparkles
{
    var fx = spawn_hit_fx(
        x + (random_func(8, 5, true)-2) * 8,
        y + (random_func(9, 5, true)-2) * 8,
        fx_sparkle
    );
    fx.depth = depth - 1;
}
#define set_ring_attack(atk)
{
    if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR || attack != atk)
    {
        set_attack(atk);
        state_timer = 0;
        hurtboxID.sprite_index = get_attack_value(atk, AG_HURTBOX_SPRITE);
        spr_angle = 0;
        draw_x = 0;
        draw_y = 0;
        if ("is_bar_sonic" in self)
        {
            airdash_stats = [1, 0, 0, -1];
            keep_air_speed = abs(hsp);
        }
    }
}