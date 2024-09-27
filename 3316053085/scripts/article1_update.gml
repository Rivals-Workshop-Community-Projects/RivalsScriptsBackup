//article1_update.gml

switch (state)
{
    case "drain":
        is_hittable = false;

        if (player_id.giga_drain_rune)
        {
            var hb_check = collision_circle(
                x + lengthdir_x(player_id.giga_drain_offset, rune_angle),
                y + lengthdir_y(player_id.giga_drain_offset, rune_angle),
                player_id.giga_drain_range, pHitBox, true, true);
            if (hb_check != noone) with (hb_check) if (("real_type" in self && real_type == 2 || "type" in self && type == 2) && !plasma_safe)
            {
                var check_angle = point_direction(x, y, other.x, other.y);
                var check_dist = point_distance(x, y, other.x, other.y)/(other.player_id.giga_drain_range)
                hsp += lengthdir_x(check_dist, check_angle);
                vsp += lengthdir_y(check_dist, check_angle);
            }
            
            var rng_dist = (random_func(6, 5, true)+0.5) * 16;
            var rng_dir_offset = (random_func(5, 20, true)-10) * 8;
            var fx = spawn_hit_fx(
                x + lengthdir_x(rng_dist, rune_angle + rng_dir_offset) + lengthdir_x(player_id.giga_drain_offset, rune_angle),
                y + lengthdir_y(rng_dist, rune_angle + rng_dir_offset) + lengthdir_y(player_id.giga_drain_offset, rune_angle),
                player_id.fx_light_follow
            );
            var suck_dir = point_direction(fx.x, fx.y, x, y);
            var suck_dist = point_distance(fx.x, fx.y, x, y)/rng_dist
            fx.hsp = lengthdir_x(suck_dist, suck_dir);
            fx.vsp = lengthdir_y(suck_dist, suck_dir);
            fx.depth = depth - 1;
        }
        with (pHitBox)
        {
            if (place_meeting(x, y, other) && ("real_owner_id" in self && real_type == 2 || type == 2) && hit_priority != 0 && !plasma_safe && !transcendent)
            {
                if (player_id.url != CH_KRAGG || attack != AT_USPECIAL)
                {
                    if (other.drain_cd <= 0) //the drain will count if the cooldown is inactive, otherwise it will just destroy projectiles
                    {
                        other.drain_cd = min(length, 10);
                        other.player_id.charge_cur += 100;
                        if (other.player_id.charge_cur >= other.player_id.charge_max) other.player_id.charge_cur = other.player_id.charge_max;
                    }

                    destroyed = true;
                    length = 0;
                    other.flash_fx_timer = 0;
                }
            }
        }

        if (drain_cd > 0) drain_cd --;

        with (player_id)
        {
            if (!is_attacking || attack != AT_NSPECIAL)
            {
                with (other) destroy_rune();
                for (var i = 0; i < array_length(artc_rune); i++) if (artc_rune[i] == other) artc_rune[i] = noone;
                exit;
            }
        }

        //reflect check
        with (oPlayer) if (state == PS_HITSTUN && !hitpause && !bubbled)
        {
            if (can_wall_tech && tech_counter <= 20 && place_meeting(x, y, other)) teched_rune(); //let people tech it like a wall
            else
            {
                if ("venus_reflected" not in self) venus_reflected = false;
                do_reflect();
            }
        }
        with (obj_stage_article) if ("enemy_stage_article" in self && state == 6 && hitstop <= 0 && !bubbled)
        {
            if ("venus_reflected" not in self) venus_reflected = false;
            do_reflect();
        }
        break;
    case "mirror": //inside the with pHitBox there's code to attempt to make hitbox articles reflect (check the [with (pHitBox)] section)
        is_hittable = true;

        if (state_timer == 0) //place sound
        {
            sound_play(asset_get("sfx_flareo_rod"));
            if (player_id.special_down) sound_play(asset_get("sfx_coin_capture"), false, 0, 1, 0.7);
            else sound_play(asset_get("sfx_coin_capture"));
            flash_fx_timer = 0;
        }
        if (reflect_filter > 0) reflect_filter--; //uspec cooldown to make sure venus gets the proper angle

        with (oPlayer)
        {
            //anti getting hit by team code
            if (get_player_team(player) == get_player_team(other.player)) with (other) can_be_hit[other.player] = 2 * !player_id.can_flip_runes;
            if ("is_venus_t" in self) //venus interractions
            {
                if (place_meeting(x, y, other))
                {
                    if (is_attacking) switch (attack)
                    {
                        case AT_FSPECIAL:
                            rune_surface_angle = (other.rune_angle % 180);
                            if (rune_surface_angle >= 20 && rune_surface_angle <= 160)
                            {
                                if (fspec_leap_limit < fspec_leap_limit_max) switch (window)
                                {
                                    case 1:
                                        if (window_timer <= window_end) vsp = 0;
                                        break;
                                    case 2:
                                        if (y < other.y + 48 && vsp > 0)
                                        {
                                            on_rune = self;
                                            sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
                                            fspec_leap_limit ++;

                                            last_reflect_mult = other.reflect_mult;
                                        }
                                    case 3:
                                        if (on_rune != noone)
                                        {
                                            x = other.x;
                                            y = other.y;
                                            hsp = 0;
                                            vsp = 0;
                                        }
                                        break;
                                }
                            }
                            else
                            {
                                if (window == 2 && fspec_leap_limit < fspec_leap_limit_max)
                                {
                                    spr_dir *= -1;
                                    x = other.x + 16 * spr_dir; //snapping
                                    y = lerp(other.y + 32, y, 0.5);
                                    
                                    set_state(PS_WALL_JUMP);
                                    used_walljump[1] = true;
                                    fspec_leap_limit ++;
                                    last_reflect_mult = other.reflect_mult;

                                    if (spr_dir && left_down || -spr_dir && right_down)
                                    {
                                        walljump_hsp = wallkick_hsp;
                                        walljump_vsp = wallkick_vsp * last_reflect_mult;
                                        walljump_time = wallkick_time;
                                        used_wallkick = true;
                                    }
                                    else
                                    {
                                        walljump_hsp = walljump_hsp_norm * last_reflect_mult;
                                        walljump_vsp = walljump_vsp_norm;
                                        walljump_time = walljump_time_norm;
                                        used_wallkick = false;
                                    }
                                }
                            }
                            break;
                        case AT_USPECIAL:
                            if (window == 4 && window_timer > 2 && uspec_reflect_limit <= uspec_reflect_limit_max && other.reflect_filter <= 0)
                            {
                                uspec_reflect_limit ++;
                                venus_reflected = false;
                                do_reflect();
                                uspec_angle = other.output_angle;
                                window_loops = -1;
                                window_timer = -1;
                                destroy_hitboxes();
                                attack_end();

                                last_reflect_mult = other.reflect_mult;
                            }
                            break;
                    }
                }
                else
                {
                    var check_id = instance_place(x, y, obj_article1);
                    if ((check_id == noone || "is_venus_rune" not in check_id) && venus_reflected) venus_reflected = false;
                }

                //rune C prevents uspec from hitting it
                //rune G also prevents venus from hitting it if it has max hp
                if (can_flip_runes || can_repair_runes)
                {
                    other.can_be_hit[player] = 2 * (is_attacking && attack == AT_USPECIAL);
                    if (!can_flip_runes && can_repair_runes) other.can_be_hit[player] = 2 * !(charge_cur >= 100 && other.hp < other.hp_max);
                }
            }
            
            //note: doesn't reduce health, should only do so if the player isn't hitting the rune and is an enemy
            if ("venus_player_reflect" in self && venus_player_reflect > 0 && !(hsp == 0 && vsp == 0))
            {
                if ("venus_reflected" not in self) venus_reflected = false;
                if (venus_player_reflect == 1) do_reflect();
                else if (venus_player_reflect == 2) do_reflect("compatibility"); //doesn't work yet probably
            }

            //reflect check
            if (state == PS_HITSTUN && !hitpause && !bubbled)
            {
                if (can_wall_tech && tech_counter <= 20)
                {
                    if (place_meeting(x, y, other)) teched_rune(); //let people tech it like a wall
                }
                else
                {
                    if (!activated_kill_effect)
                    {
                        if ("venus_reflected" not in self) venus_reflected = false;
                        do_reflect();
                    }
                    else
                    {
                        if (!other.hit_flash && place_meeting(x, y, other))
                        {
                            other.hp = 0;
                            other.hitstop = 10;

                            hitpause = true;
                            hitstop_full = other.hitstop;
                            hitstop = other.hitstop;
                            old_hsp = lengthdir_x(orig_knock, knock_dir);
                            old_vsp = lengthdir_y(orig_knock, knock_dir);

                            sound_play(asset_get("sfx_blow_heavy2"));
                            var temp_sound = sound_play(asset_get("sfx_ice_dspecial_ground"));
                            sound_pitch(temp_sound, lerp(0.75, 1.25, random_func(0, 10, true)/10));
                            other.hit_flash = true;

                            shake_camera(10, 12);
                        }
                    }
                }
            }
        }
        //errors with the demon horde projectiles sometimes
        with (pHitBox) if (("real_owner_id" in self && real_type == 2 || "type" in self && type == 2) && ("venus_article_proj_ignore" not in self || !venus_article_proj_ignore))
        {
            if (!does_not_reflect && !(hsp == 0 && vsp == 0))
            {
                if ("venus_reflected" not in self)
                {
                    venus_reflected = false;
                    venus_artc_hb_check = noone;
                }
                do_reflect();
            }
            else if (!plasma_safe && place_meeting(x, y, other))
            {
                destroyed = true;
                other.flash_fx_timer = 0;
            }
        }
        with (obj_stage_article) if ("enemy_stage_article" in self && state == 6 && hitstop <= 0 && !bubbled)
        {
            if ("venus_reflected" not in self) venus_reflected = false;
            do_reflect();
        }

        with (asset_get("moth_bomb_obj")) //mollo bombs
        {
            if (place_meeting(get_instance_x(self), get_instance_y(self), other)) with (other)
            {
                var hb = create_hitbox(AT_NSPECIAL, 1, get_instance_x(other), get_instance_y(other));
                hb.x_pos = x - player_id.x - player_id.hsp;
                hb.y_pos = y - player_id.y - player_id.vsp;

                last_move_angle = point_direction(x, y, get_instance_x(other), get_instance_y(other));
                output_angle = rune_angle - angle_difference(last_move_angle, rune_angle);
                hp -= 0.5;

                hb.kb_angle = output_angle;
                for (var i = 0; i < 20; i ++) hb.can_hit[i] = false;
            }
        }

        //article checks
        with (obj_article1) if (self != other && !(hsp == 0 && vsp == 0) && "venus_article_reflect" in self && venus_article_reflect > 0)
        {
            if ("venus_reflected" not in self) venus_reflected = false;
            if (venus_article_reflect == 1) do_reflect();
            else if (venus_article_reflect == 2) do_reflect("compatibility");
        }
        with (obj_article2) if (self != other && !(hsp == 0 && vsp == 0) && "venus_article_reflect" in self && venus_article_reflect > 0)
        {
            if ("venus_reflected" not in self) venus_reflected = false;
            if (venus_article_reflect == 1) do_reflect();
            else if (venus_article_reflect == 2) do_reflect("compatibility");
        }
        with (obj_article3) if (self != other && !(hsp == 0 && vsp == 0) && "venus_article_reflect" in self && venus_article_reflect > 0)
        {
            if ("venus_reflected" not in self) venus_reflected = false;
            if (venus_article_reflect == 1) do_reflect();
            else if (venus_article_reflect == 2) do_reflect("compatibility");
        }
        with (obj_article_solid) if (self != other && !(hsp == 0 && vsp == 0) && "venus_article_reflect" in self && venus_article_reflect > 0)
        {
            if ("venus_reflected" not in self) venus_reflected = false;
            if (venus_article_reflect == 1) do_reflect();
            else if (venus_article_reflect == 2) do_reflect("compatibility");
        }
        with (obj_article_platform) if (self != other && !(hsp == 0 && vsp == 0) && "venus_article_reflect" in self && venus_article_reflect > 0)
        {
            if ("venus_reflected" not in self) venus_reflected = false;
            if (venus_article_reflect == 1) do_reflect();
            else if (venus_article_reflect == 2) do_reflect("compatibility");
        }

        //flip runes abyss rune
        if (player_id.can_flip_runes && "rune_finalflip_angle" in self && rune_angle != rune_finalflip_angle)
        {
            rune_angle = lerp(rune_angle, rune_finalflip_angle, 0.15);
            image_angle = rune_angle;
            image_xscale = (rune_angle > 90 && rune_angle <= 270) ? -2 : 2;
            image_yscale = image_xscale;
        }

        //damage detection/destruction
        if (hitstop > 0)
        {
            hit_flash_time ++;
            image_alpha = (hit_flash_time % 4 <= 2) ? 0.5 : 0.75;
        }
        if (hitstop <= 0)
        {
            hit_flash = false;
            hit_flash_time = 0;
            image_alpha = 1;
            if (hp <= 0)
            {
                destroy_rune();
                exit;
            }
        }
        break;
    case "inactive":
        image_alpha = lerp(1, 0, state_timer * 0.07);
        if (state_timer == 0)
        {
            sound_play(asset_get("mfx_hp_spawn"), false, 0, 1, 0.6);
            sound_play(asset_get("sfx_zetter_shine"), false, 0, 1, 1);
        }

        if (image_alpha <= 0)
        {
            for (var i = 0; i < array_length(player_id.artc_rune); i++) if (player_id.artc_rune[i] == self) player_id.artc_rune[i] = noone;
            instance_destroy();
            exit;
        }
        break;
}

state_timer ++;

glow_time += glow_inc ? 1 : -1;
if (glow_time >= glow_time_max || glow_time <= 0) glow_inc = !glow_inc;

if (flash_fx_timer < flash_fx_time_max) flash_fx_timer ++;

//byakuren alt
if (!player_id.s_alt && player_id.alt_cur == 10)
{
    var color_rgb = make_color_rgb(255, 0, 0);
    var hue = (color_get_hue(color_rgb) + player_id.venus_color2) % 255;
    var hsv = make_color_hsv(hue, color_get_saturation(color_rgb), color_get_value(color_rgb));
    pow_col = make_color_rgb(color_get_red(hsv), color_get_green(hsv), color_get_blue(hsv));
}

#define do_reflect
{
    if (argument_count > 0) var reflect_type = argument[0];
    
    var check_id = noone;
    var closest_rune_dist = 999999999999999999;
    //test adding speed to the equasion
    
    for (var i = 0; i < instance_number(obj_article1); i++)
    {
        var obj = instance_find(obj_article1, i);
        if (place_meeting(x, y, obj) && "is_venus_rune" in obj && obj.is_venus_rune)
        {
            with (obj) if (point_distance(x, y, other.x, other.y) < closest_rune_dist && reflect_filter <= 0)
            {
                check_id = id;
                closest_rune_dist = point_distance(x, y, other.x, other.y);
            }
            break;
        }
    }
    if ("is_venus_t" in self) last_rune_hit = check_id;
    
    if ((check_id == noone || "is_venus_rune" not in check_id) && venus_reflected) //this only applies if there's no collision with ANY of the runes
    {
        if ("venus_rune_ID" not in self || venus_rune_ID == other || !instance_exists(venus_rune_ID)) venus_reflected = false; 
    }
    else if (check_id != noone)
    {
        if (place_meeting(x, y, other))
        {
            if (!venus_reflected)
            {
                sound_play(asset_get("mfx_star"));
                with (check_id)
                {
                    if (reflect_type != "compatibility")
                    {
                        last_move_angle = point_direction(other.hsp, other.vsp, 0, 0);
                        output_angle = rune_angle - angle_difference(last_move_angle, rune_angle);
                        output_speed = point_distance(0, 0, other.hsp, other.vsp) * (reflect_mult + (1 - player_id.min_reflect_pow));

                        other.hsp = lengthdir_x(output_speed, output_angle);
                        other.vsp = lengthdir_y(output_speed, output_angle);
                    }

                    flash_fx_timer = 0;
                }

                venus_rune_ID = other;
                if (reflect_type != "compatibility")
                {
                    //reflect flag set
                    if ("venus_reflected" in self) venus_reflected = true;

                    if (object_index == pHitBox)
                    {
                        other.player_id.perfect_hitpause = true;
                        player_id.parry_id = other.player_id;

                        player = other.player;
                        last_player_id = other.player_id;
                        reflected = true;
                        was_parried = true;
                        hitbox_timer = 0;
                        if ("rocket_angle" in self) rocket_angle = other.output_angle; //elliana fspec
                        if ("buzzsaw_angle" in self) buzzsaw_angle = other.output_angle; //SK utilt

                        other.hp -= 0.5;
                        other.hitstop = get_hitstop_formula(
                            abs(other.hp - 4) * 25,
                            damage * lerp(1, 1.6, player_id.strong_charge/60),
                            hitpause,
                            hitpause_growth,
                            extra_hitpause
                        );
                        sound_play(sound_effect);
                        var fx = spawn_hit_fx(hit_effect_x + other.x, hit_effect_y + other.y, hit_effect); //puts up the hit fx of the hitbox

                        if ("is_venus_t" in player_id && attack == AT_FSTRONG) //venus fstrong compatibility
                        {
                            hitbox_timer -= 15;
                            orig_hsp = hsp;
                            orig_vsp = vsp;

                            fx.x += lengthdir_x(16, other.rune_angle-180);
                            fx.y += lengthdir_y(16, other.rune_angle-180);
                            fx.kb_dir = other.rune_angle-180;
                        }
                        else
                        {
                            proj_angle = other.output_angle;
                            spr_dir = other.output_angle >= 90 && other.output_angle <= 270 ? -1 : 1;
                            draw_xscale = spr_dir;
                            proj_angle = other.output_angle % 180 + 180;
                            //ok so not ALL projectiles look good with this uhhhhh

                            fx.hit_angle = spr_dir == 1 ? get_hitbox_angle(self) : get_hitbox_angle(self) - 180; //some hit effects use this variable for angling hit fx
                        }
                    }

                    if (object_index == oPlayer || "enemy_stage_article" in self) with (check_id.player_id)
                    {
                        if (other.object_index == oPlayer &&
                            (other.state == PS_HITSTUN || "venus_player_reflect" in other && other.venus_player_reflect > 0 &&
                            other.state != PS_ATTACK_GROUND && other.state != PS_ATTACK_AIR) ||
                            "enemy_stage_article" in other && other.state == 6)
                        {
                            check_id.hp -= 0.5;
                        }

                        var bg_dust = spawn_dust_fx(x, y, asset_get("empty_sprite"), 10);
                        bg_dust.x = floor(check_id.x);
                        bg_dust.y = floor(check_id.y);
                        bg_dust.dust_fx = 7;
                        bg_dust.draw_angle = check_id.output_angle - 90;
                        bg_dust.depth = check_id.depth + 1;

                        var fg_dust = spawn_dust_fx(x, y, asset_get("empty_sprite"), 14);
                        fg_dust.x = floor(check_id.x);
                        fg_dust.y = floor(check_id.y);
                        fg_dust.dust_fx = 8;
                        fg_dust.draw_angle = check_id.output_angle - 90;
                        fg_dust.depth = check_id.depth - 1;
                        
                        sound_play(asset_get("sfx_ori_stomp_hit"));
                    }

                    if (object_index == obj_article1 || object_index == obj_article2 || object_index == obj_article3 ||
                        object_index == obj_article_solid || object_index == obj_article_platform) other.hp -= 0.5;
                }

                other.reflect_filter = other.reflect_filter_set;
            }
        }
    }
}
#define destroy_rune
{
    for (var i = 0; i < array_length(player_id.artc_rune); i++) if (player_id.artc_rune[i] == self)
    {
        player_id.artc_rune[i] = noone;
        var fx = spawn_hit_fx(x, y, player_id.fx_artc_rune_destroyed);
        fx.draw_angle = rune_angle;
        fx.depth = depth;
        sound_play(asset_get("sfx_ice_shatter_big"));
        if (state == "mirror")
        {
            var fx = spawn_hit_fx(x, y, player_id.fx_hit_medium_fg);
            fx.depth = depth + 1;
        }
        instance_destroy();
        exit;
    }
}
#define teched_rune
{
    hsp = joy_pad_idle ? 4 * -sign(hsp) : lengthdir_x(4, joy_dir);
    vsp = -4;
    set_state(PS_IDLE_AIR);
    tech_counter = 0;
    clear_button_buffer(PC_SHIELD_PRESSED);
    invince_time = floor(walljump_time/2);
    invincible = true;

    sound_play(asset_get("sfx_tech"));
    var dust = spawn_dust_fx(x, y, asset_get("empty_sprite"), 21);
    dust.x = floor(other.x) + 2;
    dust.y = floor(other.y) + 11;
    dust.dust_fx = 6;
    dust.depth = other.depth - 2;

    var dust = spawn_dust_fx(x, y, asset_get("empty_sprite"), 21);
    dust.x = floor(other.x);
    dust.y = floor(other.y);
    dust.dust_fx = 1;
    dust.draw_angle = other.rune_angle - 270;
}