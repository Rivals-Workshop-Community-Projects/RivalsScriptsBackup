//hitbox_update.gml

//flips projectile sprite on parry
if (was_parried) draw_xscale = spr_dir;

//if (hitbox_timer == length) spawn_hit_fx(x, y, destroy_fx); //disappear effect when the projectile's lifetime is over

if (image_yscale == 0) do_not_show = true;
switch (attack)
{
    case AT_DSTRONG:
        if (hitbox_timer >= length-20)
        {
            image_yscale = 0;
            sound_volume(loopsound, 0, 200);
        }
        if (hitbox_timer >= length-1)
        {
            sound_stop(loopsound);
            player_id.dstrong_tornado_hbox = noone;
        }
        break;
    case AT_USPECIAL:
        with (artc_trickring) if (instance_exists(launching_player))
        {
            if (launching_player.state == PS_DEAD || launching_player.state == PS_RESPAWN) exit;
            
            if (launching_player.object_index != oPlayer && "enemy_stage_article" in launching_player) //stage article enemies
            {
                launching_player.state = 6;
                launching_player.state_timer = 0;
                launching_player.hurt_img = 4;
                if (launching_player.physics_state == 1) hitstun = player_id.combo_time_gain_hit;
            }
            else if (launching_player.perfect_dodging && launching_player.player != trick_ring_player) //parry check
            {
                trick_ring_player = launching_player.player;
                trick_ring_player_id = launching_player;
                hud_owner_col = (trick_ring_player_id.temp_level == 0 || get_match_setting(SET_TEAMS)) ? get_player_hud_color(trick_ring_player) : hud_col_sel[trick_ring_player];

                ring_stun_start_time = 0;
                state = (trick_ring_player == player) ? 2 : 4;
                state_timer = 0;
                visible = true;

                player_used_ring = false;
                launching_player = noone;
            }
            else if (!launching_player.perfect_dodging) //everything else
            {
                with (launching_player)
                {
                    //teammate / owner behaviour
                    if (player == other.trick_ring_player && !get_match_setting(SET_TEAMS) || get_player_team(player) == get_player_team(other.trick_ring_player))
                    {
                        //sonic/compatibility behaviour
                        if (("is_bar_sonic" in self || "sonic_rainbowring_atk" in self)) 
                        {
                            set_ring_attack("is_bar_sonic" in self ? AT_USPECIAL_2 : sonic_rainbowring_atk);
                        }
                        else if (!hitpause) set_state(PS_IDLE_AIR);
                        //a teammate without compatibility
                    }
                    else //enemy behaviour
                    {
                        if (invince_time <= 0 && !initial_invince && !invincible)
                        {
                            hurt_img = 4;
                            if (state != PS_HITSTUN) //set them to hitstun
                            {
                                soft_armor = 0;
                                hurtboxID.sprite_index = (hitstun_hurtbox_spr != -1) ? hitstun_hurtbox_spr : hurtbox_spr;
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
                        }
                    }

                    attack_end();
                    destroy_hitboxes();
                }
            }

            if (state == 1) with (launching_player)
            {
                x = other.x;
                y = other.y;
                free = true;

                //speed calculation needs to be done a frame early
                hsp = 0;
                vsp = -other.ring_launch_speed;
                
                other.player_used_ring = true;
                
                other.is_hittable = false;
                other.ring_is_useable = false;
            }
            launching_player = noone;
        }
        break;
    case 0: //stray hitboxes
        switch (hbox_num)
        {
            case 1: //super form rings
                //bounce
                if (free) rec_vsp = vsp;
                else if (!free && abs(rec_vsp) > 1) vsp = abs(rec_vsp) * -0.5;

                with (oPlayer) if (!invincible && place_meeting(x, y, other) && player < 5) with (other)
                {
                    if (ring_player > 0 && (hitbox_timer >= ring_collect_time[0] && ring_player == other.player || hitbox_timer >= ring_collect_time[1]) || ring_player == 0)
                    {
                        var fx = spawn_hit_fx(x, y, hit_fx_create(sprite_get(sprite_index == sprite_get("artc_ring_X") ? "fx_ring_X_collect" : "fx_ring_collect"), 16));
                        fx.uses_shader = false;
                        fx.depth = player_id.depth - 2;
                        fx.draw_angle = random_func(6, 30, true) * 12;
                        sound_stop(sound_get("sfx_ring"));
                        sound_play(sound_get("sfx_ring"));
                        if ("is_bar_sonic" in other && other.has_superform)
                        {
                            if (other.rings_cur < other.rings_max) other.rings_cur += 2;
                            if (other.has_blast) other.blast_cur ++; //rings also increase the fs meter if it's available
                        }
                        ring_collected = true;
                    }
                }

                //flickering
                ring_flicker = (hitbox_timer >= length - ring_flashpoint)
                if (ring_flicker && hitbox_timer % 2 == 0) ring_visible = !ring_visible;
                sprite_index = ring_visible ? ring_spr : asset_get("empty_sprite");

                if (ring_collected || hitbox_timer > 10 && !player_id.playtest_active && check_offscreen(50)) hitbox_timer = length;
                break;
            case 2: //flickies
                spr_dir = sign(hsp);
                draw_xscale = spr_dir;

                if (check_offscreen(50)) hitbox_timer = length;
                else length ++;
                break;
            case 3: //sonic wave
                image_index = lerp(image_number, 0, abs(hsp)/max_speed);
                hsp -= hsp/(length - hitbox_timer);

                if (image_index > 3)
                {
                    image_xscale = 0;
                    image_yscale = 0;
                }
                break;
        }
        break;
}

#define check_offscreen(offset)
{
    if (x < view_get_xview() - offset || x > view_get_xview()+view_get_wview() + offset || y < view_get_yview() - offset || y > view_get_yview()+view_get_hview() + offset)
    {
        return true;
    }
    else return false;
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