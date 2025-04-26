//article1_update.gml

if (!ignores_walls) ignores_walls = true;
//ring going away
if (state == 1 && state_timer >= destruct_time || player_used_ring || player_id.state == PS_DEAD || player_id.state == PS_RESPAWN)
{
    if (state != 2) set_artc_state(2);
}
//the idle state is interractable
is_hittable = (state == 1);
can_be_hit[5] = 2;
ring_is_useable = (state == 1);


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
        if (state_timer >= destruct_time - 60) visible = (state_timer % 6 > 3);

        //interraction with ring
        if (launching_player == noone)
        {
            with (oPlayer) if (place_meeting(x, y, other) && !hitpause)
            {
                if (state != PS_RESPAWN && state != PS_DEAD && !bubbled && !super_armor && soft_armor < other.soft_armor_check &&
                    invince_time <= 0 && !initial_invince && !invincible && !hurtboxID.dodging &&
                    (player == other.trick_ring_player && !get_match_setting(SET_TEAMS) || get_player_team(player) == get_player_team(other.trick_ring_player) ||
                    player != other.trick_ring_player))
                {
                    //this part could probably be done as a DS_grid but... eh.....
                    if (perfect_dodging) add_launch_obj(self, 5); //a player that's currently parrying
                    else if (player == other.trick_ring_player && !clone && !custom_clone) add_launch_obj(self, 4); //the owner of the ring
                    else if (get_player_team(player) == get_player_team(other.trick_ring_player) && !clone && !custom_clone) add_launch_obj(self, 3); //teammates of the owner
                    else if (player >= 5 || clone || custom_clone) add_launch_obj(self, 2); //NPC players
                    else add_launch_obj(self, 1); //enemy players
                }
            }
            with (obj_stage_article) if ("enemy_stage_article" in self && place_meeting(x, y, other) && !hitpause)
            {
                if (state < 8 && physics_state < 2 && !bubbled && !super_armor && soft_armor < other.soft_armor_check) add_launch_obj(self, 0);
            }

            //priority check
            if (array_length(prior_check_detect) > 0)
            {
                var final_prior = 0;
                var cur_prior_checked = -1;
                for (var i = 0; i < array_length(prior_check_detect); i++) if (prior_check_detect[i] > cur_prior_checked)
                {
                    cur_prior_checked = prior_check_detect[i];
                    final_prior = i;
                }
                launching_player = prior_check_obj[final_prior];
            }
        }
        if (launching_player != noone)
        {
            var hb = create_hitbox(AT_USPECIAL, 1, x, y);
            hb.artc_trickring = self;
            hb.player = trick_ring_player;

            with (launching_player)
            {
                other.ring_launch_speed = other.ring_base_spd + (point_distance(0, 0, hsp, vsp/2) / 2.5);
                if (other.ring_launch_speed > other.ring_spd_limit) other.ring_launch_speed = other.ring_spd_limit;

                //launch player up
                if (object_index == oPlayer)
                {
                    if (state_cat != SC_HITSTUN && "is_bar_sonic" not in self) other.ring_launch_speed *= (gravity_speed/4+1);
                    else if (state_cat == SC_HITSTUN && activated_kill_effect) other.ring_launch_speed *= 1.2;
                }
                else if ("enemy_stage_article" in self) other.ring_launch_speed *= (gravity_speed/4+1) * 1.2;
            }

            prior_check_detect = [];
            prior_check_obj = [];
            exit;
        }
        break;
    case 2: //destroyed
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
    visible = true;
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
#define add_launch_obj(object, priority)
{
    array_push(other.prior_check_obj, object);
    array_push(other.prior_check_detect, priority);

    //print ("added object ID " + string(object) + " with priority value " + string(priority));
}