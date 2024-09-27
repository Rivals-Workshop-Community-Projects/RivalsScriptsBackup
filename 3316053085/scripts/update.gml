//update.gml

///////////////////////////////////////////////////////// USEFUL CUSTOM VARIABLES /////////////////////////////////////////////////////////

//initial check stuff
is_attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);
is_dodging = (hurtboxID.dodging);
game_time = get_gameplay_time();
hbox_view = get_match_setting(SET_HITBOX_VIS);

if (is_attacking)
{
    window_end = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1));
    window_last = get_attack_value(attack, AG_NUM_WINDOWS);
    window_cancel_time = get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME);

    if (attack == AT_USPECIAL)
    {
        draw_y = -32;
        switch (window)
        {
            case 4:
                spr_angle = uspec_angle-90; //dynamic turning rune?
                fall_through = down_down; //if down is held tester can go through platforms
                break;
            case 5:
                destroy_hitboxes();
                spr_angle = lerp(uspec_angle-90, uspec_angle-90 > 180 ? 360 : 0, window_timer/window_end);
                break;
        }
    }
    else if (window == 1 && window_timer == 0) //force reset manual offsets / rotations on new state
    {
        if (spr_angle != 0) spr_angle = 0;
        if (draw_x != 0) draw_x = 0;
        if (draw_y != 0) draw_y = 0;
    }

    if (attack == AT_OVERDRIVE)
    {
        if (window == 4 && window_timer == 0 && !hitpause) od_hbox = create_hitbox(attack, 1, x, y);
        if (instance_exists(od_hbox))
        {
            od_hbox.image_xscale = lerp(0, od_hbox_size, od_hbox.hitbox_timer/od_hbox.length)/200;
            od_hbox.image_yscale = lerp(0, od_hbox_size, od_hbox.hitbox_timer/od_hbox.length)/200;
        }
        
    }
}
else
{
    window_loops = 0;

    if (aftimg_active) aftimg_active = false;

    if (dspec_loop_sound != noone) //stop loop sound
    {
        sound_stop(dspec_loop_sound);
        dspec_loop_sound = noone;
    }

    if (state_timer == 0) //force reset manual offsets / rotations on new state
    {
        if (spr_angle != 0) spr_angle = 0;
        if (draw_x != 0) draw_x = 0;
        if (draw_y != 0) draw_y = 0;

        if (can_overdrive > 0 && attack == AT_OVERDRIVE) od_light_change = false;
    }

    if (dattack_can_bounce > 0) dattack_can_bounce = 0;
    if (air_hit_bounce_rune) air_attack_prev = -1;
}

//play intro
if (game_time == 4 && ("halloween_costume" not in self || !halloween_costume)) set_attack(AT_INTRO);


//////////////////////////////////////////////////////// CHARACTER SPECIFIC UPDATE /////////////////////////////////////////////////////////

////////////////////// rune charge mechanic
if (charge_cur <= 0) charge_cur = 0;
if (charge_cur >= charge_max) charge_cur = charge_max;

if (charge_cur >= charge_reach_to) //when reaching a certain segment it indicates so
{
    sound_play(asset_get("mfx_levelup"), false, 0, 0.75, 0.5 + charge_reach_to/100/2);
    sound_play(asset_get("mfx_levelup"), false, 0, 0.5, 0.5 + charge_reach_to/100/4);

    charge_hud_flash = 15;
    charge_reach_to += charge_max/meter_segments;
}
else if (charge_cur + charge_max/meter_segments < charge_reach_to) charge_reach_to -= charge_max/meter_segments;

if (charge_hud_flash > 0) charge_hud_flash--; //hud flashes when venus gets a full segment

////////////////////// wall mechanics
if (clinging && state == PS_WALL_JUMP) vsp += state_timer * wallslide_fric + wallslide_initial_speed;
if (!free)
{
    if (used_walljump[0] || used_walljump[1]) used_walljump = [false, false];
    if (clinging) clinging = false;
    if (nspec_total_airtime != 0) nspec_total_airtime = 0;
    if (air_attacks_total > 0) air_attacks_total = 0;
}

//holding into walls will make venus do a wall jump closer to the wall
if (state == PS_WALL_JUMP)
{
    if (state_timer == 1)
    {
        nspec_total_airtime -= nspec_gravstall_falloff/2;
        if (nspec_total_airtime <= 0) nspec_total_airtime = 0;
        if ((place_meeting(x + 1, y, asset_get("par_block")) || place_meeting(x - 1, y, asset_get("par_block"))) ) used_walljump[0] = true;
    }

    if (state_timer == 4) has_walljump = true;
    if (state_timer == 5 && used_walljump[0] && used_walljump[1]) has_walljump = false;

    if (wall_jump_timer == 1 && used_wallkick == -1)
    {
        if ((place_meeting(x + 1, y, asset_get("par_block")) && right_down && !left_down || place_meeting(x - 1, y, asset_get("par_block")) && left_down && !right_down))
        {
            walljump_hsp = wallkick_hsp;
            walljump_vsp = wallkick_vsp;
            walljump_time = wallkick_time;
            used_wallkick = 1;
        }
        else
        {
            walljump_hsp = walljump_hsp_norm;
            walljump_vsp = walljump_vsp_norm;
            walljump_time = walljump_time_norm;
            used_wallkick = 0;
        }
    }
}
else
{
    if (spawned_wall_dust) spawned_wall_dust = false;
    if (used_wallkick != -1) used_wallkick = -1;
}


////////////////////// attack specific

//nspec aim cancel
if ((!is_attacking || attack != AT_NSPECIAL) && nspec_aiming) nspec_aiming = false;

//fspec
move_cooldown[AT_FSPECIAL] = (!can_fspec) + 1;
if (!is_attacking || attack != AT_FSPECIAL)
{
    on_rune = noone;
    if (!can_fspec && (!free || state == PS_WALL_JUMP && state_timer == 1)) can_fspec = true;
}
if (fspec_leap_limit > 0 && !free) fspec_leap_limit = 0; //when venus touches the ground her fspec limit resets

//dspec
//move_cooldown[AT_DSPECIAL] = (charge_cur >= charge_max) + 1;
if (dspec_charge_fx_fade < dspec_charge_fx_fade_max) dspec_charge_fx_fade ++;

if ((!is_attacking || attack != AT_DSPECIAL || window != 2)) //stop dspec loop sound
{
    if (dspec_loop_sound != noone)
    {
        sound_stop(dspec_loop_sound);
        sound_play(sound_get("sfx_dspec_end"));
        dspec_loop_sound = noone;
    }
    if (heal_field_alpha > 0) heal_field_alpha -= 0.05;
}

/////////////////////////////////////////////////////////////// ABYSS RUNES ///////////////////////////////////////////////////////////////

//rune that lets venus heal around her after doing a parry
if (can_parry_heal && prev_state == PS_PARRY && shield_down && charge_cur > 0 && get_player_damage(player) > 0 && !is_attacking)
{
    healing_dspec = true;
    state = PS_ATTACK_GROUND;
    state_timer = 1;
    attack = AT_DSPECIAL;
    window = 1;
    window_timer = 1;
}

if ("fs_char_initialized" in self && can_overdrive == 0) can_overdrive = 1; //final smash mode activate if it isn't active at all
if (can_overdrive > 0)
{
    //final smash buddy stuff
    if (can_overdrive == 1)
    {
        fs_charge = od_cur*2;

        //colorful meter
        fs_meter_color ++;
        if (fs_meter_color >= 255) fs_meter_color = 0;
        var fs_meter_color_rgb = make_color_rgb(255, 0, 0);
        var fs_hue = (color_get_hue(fs_meter_color_rgb)+fs_meter_color) % 255;
        var fs_hsv = make_color_hsv(fs_hue, color_get_saturation(fs_meter_color_rgb), color_get_value(fs_meter_color_rgb));

        od_color_const = fs_hsv;
    }
    
    //visual stuff
    if (od_color_time > 0) od_color_time --;
    od_color = merge_color(od_color_const, $FFFFFF, od_color_time/10);

    if (using_overdrive == 0 && od_cur >= od_max)
    {
        using_overdrive = 1;
        od_cur = od_max;
        sound_play(sound_get("sfx_od_ready"));
    }
    else if (using_overdrive > 0)
    {
        if (can_overdrive == 2) //rune ver
        {
            if (game_time % 6 == 0) od_color_flash = !od_color_flash;
            od_color = od_color_flash ? $FFFFFF : od_color_const;
        }
        else if (can_overdrive == 1) //final smash ver
        {
            if (od_color_time > 0) od_color_time --;
            od_color = merge_color(od_color_const, $FFFFFF, od_color_time/10);
        }
        
        switch (using_overdrive)
        {
            case 1:
                if (!free && special_down && attack_down)
                {
                    if (can_overdrive == 1) fs_force_fs = true;
                    else set_attack(AT_OVERDRIVE);
                    using_overdrive = 2;
                    hurtboxID.sprite_index = get_attack_value(AT_OVERDRIVE, AG_HURTBOX_SPRITE);
                }
                break;
            case 3:
                od_after_effect_time --;
                od_cur = lerp(0, 100, od_after_effect_time/od_after_effect_time_max);

                if (od_after_effect_time <= 0) using_overdrive = 0;
                break;
        }
    }

    //light vfx change color to the theikos alt colors
    if (od_light_change && od_light_col_time < od_light_col_time_max) od_light_col_time ++;
    if (od_light_col_time > 0)
    {
        colorO[6*4+0] = lerp(col_lightmain[0][0], col_lightmain[1][0], od_light_col_time/od_light_col_time_max);
        colorO[6*4+1] = lerp(col_lightmain[0][1], col_lightmain[1][1], od_light_col_time/od_light_col_time_max);
        colorO[6*4+2] = lerp(col_lightmain[0][2], col_lightmain[1][2], od_light_col_time/od_light_col_time_max);
        colorO[7*4+0] = lerp(col_lightsub[0][0], col_lightsub[1][0], od_light_col_time/od_light_col_time_max);
        colorO[7*4+1] = lerp(col_lightsub[0][1], col_lightsub[1][1], od_light_col_time/od_light_col_time_max);
        colorO[7*4+2] = lerp(col_lightsub[0][2], col_lightsub[1][2], od_light_col_time/od_light_col_time_max);

        static_colorO[6*4+0] = colorO[6*4+0];
        static_colorO[6*4+1] = colorO[6*4+1];
        static_colorO[6*4+2] = colorO[6*4+2];
        static_colorO[7*4+0] = colorO[7*4+0];
        static_colorO[7*4+1] = colorO[7*4+1];
        static_colorO[7*4+2] = colorO[7*4+2];

        if (!od_light_change) od_light_col_time --;
    }

    if (od_shockwave_coords[2] <= od_shockwave_coords[3]) od_shockwave_coords[2] ++;
}

////////////////////////////////////////////////////////////////// MISC. //////////////////////////////////////////////////////////////////

//tie hit particles with hit effects
with (pHitBox) if (orig_player == other.player)
{
    if (hit_effect == other.fx_hit_small || hit_effect == other.fx_hit_medium || hit_effect == other.fx_hit_big) fx_particles = 6;
    if (hit_effect == other.fx_light_hit1 || hit_effect == other.fx_light_hit2 || hit_effect == other.fx_light_hit3) fx_particles = 1;
}
with (hit_fx_obj) if (player == other.player) //special hit effects
{
    if ("spawned_effects" not in self) //there HAS to be a better way to do this
    {
        if (hit_fx == other.fx_hit_small) with (other)
        {
            var fg_fx = spawn_hit_fx(other.x, other.y, fx_hit_small_fg);
            fg_fx.depth = depth + 1;
            fg_fx.draw_angle = random_func(0, 30, true)*12;
            fg_fx.uses_shader = false;

            var bg_fx = spawn_hit_fx(other.x, other.y, fx_hit_small_bg);
            bg_fx.depth = depth + 3;
            if ("manual_angle_control" not in other || !other.manual_angle_control) bg_fx.draw_angle = other.kb_dir * spr_dir;
            else bg_fx.draw_angle = other.draw_angle;
            bg_fx.uses_shader = false;
        }
        if (hit_fx == other.fx_hit_medium) with (other)
        {
            var fg_fx = spawn_hit_fx(other.x, other.y, fx_hit_medium_fg);
            fg_fx.depth = depth + 1;
            fg_fx.draw_angle = random_func(0, 30, true)*12;
            fg_fx.uses_shader = false;

            var bg_fx = spawn_hit_fx(other.x, other.y, fx_hit_medium_bg);
            bg_fx.depth = depth + 3;
            if ("manual_angle_control" not in other || !other.manual_angle_control) bg_fx.draw_angle = other.kb_dir * spr_dir;
            else bg_fx.draw_angle = other.draw_angle;
            bg_fx.uses_shader = false;
        }
        if (hit_fx == other.fx_hit_big) with (other)
        {
            var fg_fx = spawn_hit_fx(other.x, other.y, fx_hit_big_fg);
            fg_fx.depth = depth + 1;
            fg_fx.draw_angle = random_func(0, 30, true)*12;
            fg_fx.uses_shader = false;

            var bg_fx = spawn_hit_fx(other.x, other.y, fx_hit_big_bg);
            bg_fx.depth = depth + 3;
            if ("manual_angle_control" not in other || !other.manual_angle_control) bg_fx.draw_angle = other.kb_dir * spr_dir;
            else bg_fx.draw_angle = other.draw_angle;
            bg_fx.uses_shader = false;
        }

        if (hit_fx == other.fx_light_hit1 || hit_fx == other.fx_light_hit2 || hit_fx == other.fx_light_hit3)
        {
            if (hit_angle != 0) draw_angle = hit_angle;
            else draw_angle = ("hb_obj" in self && hb_obj.spr_dir == -1) ? 180 - kb_dir : kb_dir;
            spr_dir = 1;
        }
        spawned_effects = true;
    }
    if (hit_fx == other.fx_dstrong_smear || hit_fx == other.fx_uspec_smear) real_vfx_pause();
    if (hit_fx == other.fx_charge_spark) uses_shader = false;

    if (hit_fx == other.fx_dspec_end)
    {
        with (pHitBox) if (orig_player == other.player && attack == AT_DSPECIAL && hbox_num == 2) other.hbox_tie_check = self;
        if ("hbox_tie_check" in self && instance_exists(hbox_tie_check))
        {
            x = other.x + x_off;
            y = other.y + y_off;
        }
    }

    if (hit_fx == other.fx_light_follow && other.attack == other.AT_INTRO && other.is_attacking) hit_length = 24;

    if (hit_fx == other.fx_od_sparkles)
    {
        var dir = point_direction(other.x, other.y - floor(other.char_height/1.75), x, y);
        var speed = other.od_drag_time < other.od_drag_time_max ? lerp(0, -10, other.od_drag_time/other.od_drag_time_max) : 2;
        hsp = lengthdir_x(speed, dir);
        vsp = lengthdir_y(speed, dir);
    }

    if (hit_fx == other.fx_od_part)
    {
        if (other.is_attacking && other.attack == other.AT_OVERDRIVE && other.window <= 3)
        {
            if (move_timer >= move_timer_max) move_dir = -1;
            if (move_timer <= 0) move_dir = 1;
            move_timer += move_dir;
            x = ease_sineInOut(floor(orig_x - max_dist), floor(orig_x + max_dist), move_timer, move_timer_max);
        }
        else
        {
            hsp = ease_sineInOut(floor(orig_x - max_dist), floor(orig_x + max_dist), move_timer, move_timer_max)/(max_dist*move_dir*8);
            grav = 0.2;
        }
        depth = other.depth + move_dir;
    }

    if (hit_fx == other.fx_od_finalhit)
    {
        real_vfx_pause();
        if (instance_exists(other.artc_garden)) with (other.artc_garden)
        {
            switch (other.image_index)
            {
                case 0: size = 0.67; break;
                case 1: size = 1.1; break;
                case 2: size = 1.7; break;
                case 3: size = 1.9; break;
                case 4:
                    size = 2;
                    if (state == 0)
                    {
                        state ++;
                        state_timer = 0;
                    }
                    break;
            }
        }
    }
}

if (!s_alt)
{
    if (alt_cur == 10) //byakuren alt
    {
        //offscreen indicator
        view_left = view_get_xview() + 35; //0, y
        view_right = view_get_wview() + view_get_xview() - 35; //screenborder, y
        view_up = view_get_yview() + 32; //x, 0
        view_down = view_get_hview() + view_get_yview() - 86; //x, screenborder
        char_offscreen = !(x >= view_left - 64 && x <= view_right + 64 && y >= view_up - 32 && y <= view_down + 85);

        //set ranges to 0 (NOTICE: ATTACKS FOR SOME REASON OVERWRITE THE RETURN)
        set_color_profile_slot_range(1, 0, 0, 0);
        set_color_profile_slot_range(6, 0, 0, 0);

        //rainbow colored effects
        if ("venus_color1" not in self)
        {
            venus_color1 = 0;
            venus_color2 = 240;
        }
        else
        {
            //loops variable around (there's a total of 256 hues) to rotate between
            venus_color1 += 1;
            if (venus_color1 >= 255) venus_color1 -= 255;

            var color_rgb = make_color_rgb(255, 0, 0);
            var hue = (color_get_hue(color_rgb) + venus_color1) % 255;
            var hsv = make_color_hsv(hue, color_get_saturation(color_rgb), color_get_value(color_rgb));
            set_color_profile_slot(alt_cur, 6, color_get_red(hsv) + 300, color_get_green(hsv) + 300, color_get_blue(hsv) + 300);
            set_article_color_slot(6, color_get_red(hsv) + 300, color_get_green(hsv) + 300, color_get_blue(hsv) + 300);

            venus_color2 += 1;
            if (venus_color2 >= 255) venus_color2 -= 255;

            var color_rgb = make_color_rgb(255, 0, 0);
            var hue = (color_get_hue(color_rgb) + venus_color2) % 255;
            var hsv = make_color_hsv(hue, color_get_saturation(color_rgb), color_get_value(color_rgb));
            set_color_profile_slot(alt_cur, 7, floor(color_get_red(hsv)*0.8), floor(color_get_green(hsv)*0.8), floor(color_get_blue(hsv)*0.8));
            set_article_color_slot(7, floor(color_get_red(hsv)*0.8), floor(color_get_green(hsv)*0.8), floor(color_get_blue(hsv)*0.8));
        }
    }
    if (alt_cur == 19) //NES peach starman effect
    {
        if ("venus_array_color1" not in self)
        {
            color_timer = 0;
            venus_color_used = 0;
            orig_light_main = [get_color_profile_slot_r(alt_cur, 6), get_color_profile_slot_g(alt_cur, 6), get_color_profile_slot_b(alt_cur, 6)];
            orig_light_sub = [get_color_profile_slot_r(alt_cur, 7), get_color_profile_slot_g(alt_cur, 7), get_color_profile_slot_b(alt_cur, 7)];

            venus_array_color1 = [
                [orig_light_main[0], orig_light_main[1], orig_light_main[2]],
                [12, 147, 0],
                [181, 49, 32],
                [0, 0, 0]
            ];
            venus_array_color2 = [
                [orig_light_sub[0], orig_light_sub[1], orig_light_sub[2]],
                [234, 158, 34],
                [255, 255, 255],
                [153, 78, 0]
            ];
        }
        else
        {
            color_timer ++;
            if (color_timer % 20 == 0)
            {
                venus_color_used ++;
                if (venus_color_used >= array_length(venus_array_color1)) venus_color_used = 0;
            }

            colorO[6*4+0] = lerp(orig_light_main[0], venus_array_color1[venus_color_used][0], 0.5)/255;
            colorO[6*4+1] = lerp(orig_light_main[1], venus_array_color1[venus_color_used][1], 0.5)/255;
            colorO[6*4+2] = lerp(orig_light_main[2], venus_array_color1[venus_color_used][2], 0.5)/255;
            colorO[7*4+0] = lerp(orig_light_sub[0], venus_array_color2[venus_color_used][0], 0.5)/255;
            colorO[7*4+1] = lerp(orig_light_sub[1], venus_array_color2[venus_color_used][1], 0.5)/255;
            colorO[7*4+2] = lerp(orig_light_sub[2], venus_array_color2[venus_color_used][2], 0.5)/255;

            static_colorO[6*4+0] = colorO[6*4+0];
            static_colorO[6*4+1] = colorO[6*4+1];
            static_colorO[6*4+2] = colorO[6*4+2];
            static_colorO[7*4+0] = colorO[7*4+0];
            static_colorO[7*4+1] = colorO[7*4+1];
            static_colorO[7*4+2] = colorO[7*4+2];
        }
    }
    if (alt_cur == 27 && game_time % 7 == 0 && point_distance(0, 0, hsp, vsp) > 2.5 && visible) //ASHe alt particles
    {
        var fx = spawn_hit_fx(
            x + draw_x + (random_func(0, 8, false) - 4)*8,
            y + draw_y - random_func(1, 8, false)*8,
            fx_ashe_trail
        );
        fx.hsp = (random_func(2, 8, false) - 4)/4;
        fx.vsp = (random_func(3, 8, false) - 4)/2 - 1;
        fx.uses_shader = false;
    }

    //halloween alt stuff
    if (halloween_costume)
    {
        wait_time = 0;
        if (state != PS_SPAWN && state != PS_RESPAWN && state != PS_IDLE)
        {
            halloween_costume = false;
            wait_time = normal_wait_time;
            var fx = spawn_hit_fx(x, y, hit_fx_create(sprite_get("nurse_gone"), 48));
            fx.depth = depth - 1;
        }
    }
}
//break the targets compatibility
if (get_stage_data(SD_ID) == "2169436552") user_event(6);

perfect_hitpause = false; //seems to run got_parried.gml for enemy players that hit venus while this is true, used by the runes to run the script

//NOTE: KEEP THIS SECTION AT THE BOTTOM OF UPDATE.GML
//unless you are adding #defines, which should be at the bottom
prep_hitboxes();


//custom hitbox colors system (by @SupersonicNK)
#define prep_hitboxes
{
    //Applies the hitbox sprites and prepares them to be drawn (with color!)
    with (pHitBox) if (player_id == other && "dont_color" not in self)
    {
        if ("col" not in self)
        {
            with (other)
            {
                var parent = get_hitbox_value(other.attack, other.hbox_num, HG_PARENT_HITBOX)
                var true_hbox_num = parent ? parent : other.hbox_num
                other.col = get_hitbox_value(other.attack, true_hbox_num, HG_HITBOX_COLOR);
                if (other.col == 0) other.col = c_red;
                other.shape = get_hitbox_value(other.attack, true_hbox_num, HG_SHAPE)
                other.draw_colored = true;
                if (other.type == 1) other.sprite_index = __hb_hd_spr[other.shape];
                else if (get_hitbox_value(other.attack, true_hbox_num, HG_PROJECTILE_MASK) == -1) other.mask_index = __hb_hd_spr[other.shape];
                else other.draw_colored = false;
                other.draw_spr = __hb_draw_spr;
            }
        }
    }
}
#define real_vfx_pause
{
    //made to actually stop vfx properly, thanks dan.
    if ("step_rec_time" not in self) step_rec_time = 0;
    if (!other.hitpause || !other.is_attacking) step_rec_time = step_timer;
    else step_timer = step_rec_time;
}