//attack_update.gml

custom_attack_grid();

//B-reverse - it allows the character to turn in while using specials
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL) trigger_b_reverse();

switch (attack)
{
	/////////////////////////////////////////////// NORMALS ////////////////////////////////////////////////
    //
    case AT_JAB: //has unused code which might be a good tier 1 rune
        /*
        if ((window == 2 || window == 5 || window == 8) && has_hit) clear_button_buffer(PC_ATTACK_PRESSED);
        if (has_hit && (window != 4 && window != 7 && window <= 9 || window == window_last) && !hitpause)
        {
            can_dash = true;
            move_cooldown[AT_USTRONG] = hitstop_full + 1;
            move_cooldown[AT_FSTRONG] = hitstop_full + 1;
            move_cooldown[AT_DSTRONG] = hitstop_full + 1;
        }
        */
        break;
	case AT_DATTACK:
        if (window >= 3 && !free)
        {
            landing_lag_time = get_attack_value(attack, AG_LANDING_LAG);
            set_state(was_parried ? PS_PRATLAND : PS_LANDING_LAG);
        }

        if (!hitpause)
        {
            if (has_hit && window < 5 && window > 2)
            {
                dattack_can_bounce = dattack_can_bounce_set;
                if (!fast_falling) vsp = -8;

                hsp /= 1.5;
                destroy_hitboxes();
                set_window(5);
            }

            if (dattack_can_bounce > 0)
            {
                if (!free)
                {
                    vsp = -jump_speed;
                    sound_play(sound_get("sfx_bootyskip"));
                    if (state == PS_LANDING_LAG)
                    {
                        state = PS_DOUBLE_JUMP;
                        state_timer = 1;
                    }
                }
                dattack_can_bounce --;
            }
        }
		break;
    case AT_USTRONG:
        switch (window)
        {
            case 1: //resets
                if (do_ustrong_ex)
                {
                    for (var i = 1; i <= 2; i++)
                    {
                        reset_hitbox_value(attack, i, HG_ANGLE_FLIPPER); //0
                        reset_hitbox_value(attack, i, HG_DAMAGE); //8
                        reset_hitbox_value(attack, i, HG_BASE_KNOCKBACK); //8
                        reset_hitbox_value(attack, i, HG_KNOCKBACK_SCALING); //1
                        reset_hitbox_value(attack, i, HG_BASE_HITPAUSE); //9
                        reset_hitbox_value(attack, i, HG_HITPAUSE_SCALING); //0.6
                    }
                    do_ustrong_ex = false;
                }
                break;
            case 2: //charge window
                if (floor(charge_cur/100) > 0 && strong_charge >= 9 && !do_ustrong_ex) //is_special_pressed(DIR_ANY)
                {
                    for (var i = 1; i <= 2; i++)
                    {
                        set_hitbox_value(attack, i, HG_ANGLE_FLIPPER, 7);
                        set_hitbox_value(attack, i, HG_DAMAGE, 3);
                        set_hitbox_value(attack, i, HG_BASE_KNOCKBACK, 8);
                        set_hitbox_value(attack, i, HG_KNOCKBACK_SCALING, 0);
                        set_hitbox_value(attack, i, HG_BASE_HITPAUSE, 6);
                        set_hitbox_value(attack, i, HG_HITPAUSE_SCALING, 0.2);
                    }
                    sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
                    spawn_hit_fx(x - 32 * spr_dir, y - 2, fx_charge_spark);
                    charge_cur -= 100;
                    do_ustrong_ex = true;
                }
                break;
            case 6: case 7: //kick 2
                force_depth = true;
                depth = -6;
            case 4: //endlag of kick 1
                if (!free)
                {
                    landing_lag_time = get_attack_value(attack, AG_LANDING_LAG)*2;
                    set_state(was_parried ? PS_PRATLAND : PS_LANDING_LAG);
                }
                break;
            case 5:
                if (image_index > 10 && do_ustrong_ex)
                {
                    sound_play(asset_get("sfx_orcane_dsmash"))
                    set_window(6);
                }

                if (!free)
                {
                    landing_lag_time = get_attack_value(attack, AG_LANDING_LAG);
                    set_state(was_parried ? PS_PRATLAND : PS_LANDING_LAG);
                }
                break;
        }
        can_fast_fall = !(do_ustrong_ex && window < 5);

        if (!do_ustrong_ex && window == 5 || window == 7) hsp = clamp(hsp, -2.5, 2.5);
        break;
    case AT_FSTRONG:
        switch (window)
        {
            case 5: //shoot projectile input
                if (floor(charge_cur/100) > 0 && !hitpause &&
                    window_timer >= window_cancel_time && window_timer < window_cancel_total &&
                    (special_down || strong_down || is_strong_pressed(DIR_ANY)))
                {
                    set_window(0);
                }
                break;
            case 6: //shooting projectile
                if (window_timer == 1)
                {
                    sound_play(asset_get("sfx_orcane_dsmash"))
                    create_hitbox(attack, clamp(floor(charge_cur/100)+1, 1, 4), x + 80 * spr_dir, y - 32);
                    charge_cur -= 100 * clamp(floor(charge_cur/100), 1, 3);
                    if (charge_cur <= 0) charge_cur = 0;
                }
                break;
        }
        break;
    case AT_DSTRONG:
        switch (window)
        {
            case 1:
                dstrong_ex_charges = 0;
                dstrong_ex_uses = 0;
                dstrong_ex_useable = floor(charge_cur/100);

                reset_hitbox_value(attack, 2, HG_BASE_KNOCKBACK);
                reset_hitbox_value(attack, 2, HG_KNOCKBACK_SCALING);
                break;
            case 2:
                if (strong_charge % 15 == 9 && dstrong_ex_charges < dstrong_ex_useable)
                {
                    dstrong_ex_charges ++;
                    switch (dstrong_ex_charges)
                    {
                        case 1: sound_play(asset_get("sfx_frog_fspecial_charge_gained_1")); break;
                        case 2: sound_play(asset_get("sfx_frog_fspecial_charge_gained_2")); break;
                        case 3: sound_play(asset_get("sfx_frog_fspecial_charge_full")); break;
                    }
                    spawn_hit_fx(x + 32 * spr_dir, y - 64, fx_charge_spark);
                    charge_cur -= 100;
                    clear_button_buffer(PC_SPECIAL_PRESSED);
                }
                break;
        }

        if ((state_timer - strong_charge) >= 14 && (state_timer - strong_charge) % 4 == 0 && dstrong_ex_uses < dstrong_ex_charges)
        {
            var play_stronger_sound = false;
            if (dstrong_ex_uses + 1 >= dstrong_ex_charges) play_stronger_sound = true;
            var hb = create_hitbox(attack, 2, x + 64 + dstrong_ex_uses * 32, y - 40);
            hb.spr_dir = 1;
            if (play_stronger_sound)
            {
                hb.sound_effect = asset_get("sfx_waterhit_heavy2");
                hb.hit_effect = fx_light_hit2;
            }
            var hb = create_hitbox(attack, 2, x - 64 - dstrong_ex_uses * 32, y - 40);
            hb.spr_dir = -1;
            if (play_stronger_sound)
            {
                hb.sound_effect = asset_get("sfx_waterhit_heavy2");
                hb.hit_effect = fx_light_hit2;
            }

            dstrong_ex_uses ++;
        }
        break;
	/////////////////////////////////////////////// SPECIALS ///////////////////////////////////////////////
    //
	case AT_NSPECIAL: //placing rune
        can_move = false;
		can_fast_fall = false;
        
        if (free) nspec_total_airtime ++;

        switch (window)
        {
            case 1:
                if (window_timer == 1) nspec_dir = spr_dir ? 0 : 180;
                nspec_aim_time = 0;
                nspec_aiming = true;
                spawned_rune = false;
                next_rune = array_find_index(artc_rune, noone);
                spawned_rune = false;
                break;
            case 2: case 3: //aiming
                hsp = clamp(hsp, -2, 2);
				vsp = min(vsp, 2 + nspec_aim_time/20 + nspec_total_airtime/nspec_gravstall_falloff);
                nspec_aim_time ++;

                //aim check
                if (nspec_aiming)
                {
                    if (!joy_pad_idle) nspec_dir = joy_dir;
                    if (!special_down)
                    {
                        window = 3;
                        window_timer = 0;
                        nspec_aiming = false;
                    }
                }
            
                //article shenanigans
                if (!spawned_rune)
                {
                    if (next_rune == -1) //if there's no slots in the array, sort the array by oldest and remove the first item
                    {
                        array_sort(artc_rune, true)
                        instance_destroy(artc_rune[0]);
                        artc_rune[0] = noone;
                        next_rune = 0;
                    }
                    if (next_rune > -1)
                    {
                        artc_rune[next_rune] = instance_create(x, y, "obj_article1");
                        spawned_rune = true;
                    }
                }

                with (artc_rune[next_rune])
                {
                    rune_angle = other.nspec_dir;
                    x = other.x + lengthdir_x(48, rune_angle);
                    y = other.y + lengthdir_y(48, rune_angle) - 40;
                    image_angle = rune_angle;
                    image_xscale = (rune_angle > 90 && rune_angle <= 270) ? -2 : 2;
                    image_yscale = image_xscale;
                    image_index = ("s_alt" in other && other.s_alt) ? 0 : other.alt_cur;
                }

                if (shield_pressed)
                {
                    artc_rune[next_rune].state = "inactive";
                    artc_rune[next_rune].state_timer = 0;
                    set_window(4);
                }
                
                //looping / end
                if (window == 3 && window_timer == window_end && nspec_aiming) set_window(-1);
                break;
            case 4:
                if (window_timer == 1 && free) vsp = min(-4 + nspec_total_airtime/nspec_jumpstall_falloff, 0);
                if (instance_exists(artc_rune[next_rune]) && artc_rune[next_rune].state == "drain")
                {
                    artc_rune[next_rune].state = "mirror";
                    artc_rune[next_rune].state_timer = 0;

                    artc_rune[next_rune].hp = 3 + can_repair_runes //uses charges as durability for mirror rune //"3" used to be [ floor(charge_cur/100) + 1 ]
                    artc_rune[next_rune].hp_max = artc_rune[next_rune].hp;
                    artc_rune[next_rune].reflect_mult = lerp(min_reflect_pow, max_reflect_pow, double_meter_rune ? charge_cur/400 : charge_cur/300);
                    artc_rune[next_rune].charge_lvl = floor(charge_cur/100);
                    if (special_down)
                    {
                        charge_cur -= 100;
                        if (charge_cur <= 0) charge_cur = 0;
                    }
                    else charge_cur = frac(charge_cur/100)*100; //it leaves fractions
                }
                break;
        }
		break;
    case AT_FSPECIAL: //command dash
        can_wall_jump = true;
        if (window >= 8) off_edge = false;

        if (on_rune != noone) fspec_sjump_coyote = fspec_sjump_coyote_set;
        if (fspec_sjump_coyote > 0)
        {
            do_swift_jump();
            fspec_sjump_coyote--;
        }

        switch (window)
        {
            case 1: //initial leap
                fspec_dodge_time = 0;
                fspec_stored_djumps = djumps;
                if (window_timer == 1) last_reflect_mult = 1;

                if (window_timer == window_end) //should change based on the angle of the rune
                {
                    hsp = 8 * spr_dir * last_reflect_mult;
                    vsp = -5;

                    if (on_rune != noone)
                    {
                        hsp += lengthdir_x(3, rune_surface_angle);
                        vsp -= abs(lengthdir_y(3, rune_surface_angle));

                        on_rune = noone;
                    }
                }
                break;
            case 2: //air cancels
                if (attack_pressed || special_pressed) set_window(5); //air kick (maybe would be it's own move as dattack? idk yet)
                if (on_rune == noone && (jump_pressed || tap_jump_pressed && can_tap_jump())) can_jump = true;

                fspec_dodge_time ++;
                if (fspec_dodge_time >= fspec_dodge_time_max) can_shield = true;

                if (on_rune) set_window(0);
                break;
            case 3: //landing - swift leap/slide kick cancel window
                if (attack_pressed || special_pressed)
                {
                    if (on_rune != noone)
                    {
                        hsp += lengthdir_x(3, rune_surface_angle);
                        if (left_down && spr_dir || -spr_dir && right_down) spr_dir *= -1;
                    }
                    aftimg_active = !free;
                    set_window((on_rune != noone) ? 5 : 8); //kick cancel
                }
                do_swift_jump();
                
                if (window_timer == window_end && on_rune != noone) //another one
                {
                    if (left_down && spr_dir || -spr_dir && right_down) spr_dir *= -1;
                    window = 1;
                    window_timer = get_window_value(attack, 1, AG_WINDOW_LENGTH)-1;
                    sound_play(get_window_value(attack, 1, AG_WINDOW_SFX))
                }
            case 4: //landing endlag
                if (free && !on_rune) //sliding off platforms
                {
                    can_fspec = true;
                    set_state(PS_IDLE_AIR);
                }
                break;
            case 5: case 6: case 7:// air kick attack
                if (!free)
                {
                    landing_lag_time = get_attack_value(attack, AG_LANDING_LAG);
                    set_state(was_parried ? PS_PRATLAND : PS_LANDING_LAG);
                }
                break;
            case 8:
                if (window_timer == window_end) hsp = 11 * spr_dir;
                break;
            case 11: case 14:
                if (aftimg_active) aftimg_active = false;
                break;
        }

        if (window > 12) //attack cancel
        {
            can_attack = true;
            can_special = true;
            can_strong = true;
            if (is_attack_pressed(DIR_ANY) || is_special_pressed(DIR_ANY) || is_strong_pressed(DIR_ANY))
            {
                aftimg_active = false;
                spr_angle = 0;
                if (invince_time > 0) invince_time = 0;
            }
        }

        if (has_rune("J")) //swift jump invince rune
        {
            if (invince_time > 0) invincible = true;

            if (window == 3) invince_time = window_end*2;
            else if (window < 12 && window > 3) invince_time = 0;
            else if (window > 12) invince_time = 0;
        }

        //if (window == 4 && !free && (left_down || right_down)) set_state(PS_DASH);
        break;
    case AT_USPECIAL: //directional dash
		can_fast_fall = false; //prevents player from being able to fastfall
        can_wall_jump = true;

		//we need this so the player will be able to fast fall after using the move (unless they got parried)
		if (window == window_last && window_timer == window_end && !was_parried) can_fast_fall = true;

        if (window == 1 && window_timer == 1) last_reflect_mult = 1;

        if (window < 4) with (oPlayer) can_be_hit[other.player] = 2; //i hate angle flipper 10
		switch (window)
		{
            case 3: //windup
                aftimg_active = true;
			case 1: case 2: //angle setup
                venus_reflected = false;
                uspec_reflect_limit = 0;

				if (state_timer == 1) uspec_angle = 90;
				else if (window == 2)
				{
					if (!joy_pad_idle) uspec_angle = joy_dir;
					else uspec_angle = 90;
				}

				//limits the character's movement speed
				can_move = false;
				hsp = 0;
				vsp = clamp(vsp, vsp, 0);
				break;
			case 4: //movement
                if (!hitpause)
                {
                    grav = 0;
                    hsp = lengthdir_x(uspec_speed, uspec_angle) * last_reflect_mult;
                    vsp = lengthdir_y(uspec_speed, uspec_angle) * last_reflect_mult;

                    if (vsp > 0 && !free || window_timer == window_end-1 && window_loops == get_window_value(attack, window, AG_WINDOW_LOOP_TIMES)-1)
                    {
                        vsp = -5;
                        hsp = sign(hsp)*2;
                        set_window(0);
                    }
                }
				break;
            case 5: //end
                aftimg_active = false;
                break;
		}
		break;
    case AT_DSPECIAL: //charge
        can_fast_fall = false;
        switch (window)
        {
            case 1: //setup
                dspec_charge_fx_fade = lerp(dspec_charge_fx_fade_max, 0, window_timer/window_end);
                dspec_charge_milestone = min(floor(charge_cur/100)+1, charge_max/100);

                if (window_timer == window_end) dspec_loop_sound = sound_play(sound_get("sfx_dspec_loop"), true);
                break;
            case 2: //charging
                dspec_charge_fx_fade = 0;
                if (abs(hsp) > 2) hsp -= sign(hsp)*0.1;
                if (vsp > 0) grav = 0.1;

                if (!healing_dspec) //normal charge
                {
                    charge_cur += dspec_charge_rate;
                    if (!special_down || (!has_rune("C") && (charge_cur/100) >= dspec_charge_milestone || charge_cur >= charge_max))
                    {
                        if (charge_cur > dspec_charge_milestone*100) charge_cur = dspec_charge_milestone*100;

                        sound_stop(dspec_loop_sound);
                        sound_play(sound_get("sfx_dspec_end"));
                        dspec_loop_sound = noone;
                        var fx = spawn_hit_fx(x + 2 * spr_dir, y - floor(char_height/1.75), fx_dspec_end);
                        fx.hbox_tie_check = noone;
                        fx.x_off = 2 * spr_dir;
                        fx.y_off = -floor(char_height/1.75);
                        set_window(0);
                    }
                }
                else //healing rune
                {
                    charge_cur -= dspec_charge_rate;
                    if (window_timer % floor(window_end/2) == 1)
                    {
                        attack_end();
                        var healbox = create_hitbox(attack, 1, x, y);
                        for (var i = 0; i < array_length(healbox.can_hit); i++) healbox.can_hit[i] = false;
                        with (oPlayer) if (place_meeting(x, y, healbox) && get_player_team(other.player) == get_player_team(player)) take_damage(player, other.player, -1)
                    }

                    var rng_angle = random_func(i, 30, true) * 12;
                    var fx = spawn_hit_fx(
                        x + lengthdir_x(get_hitbox_value(attack, 1, HG_WIDTH)/2.1, rng_angle) + get_hitbox_value(attack, 1, HG_HITBOX_X) * spr_dir,
                        y + lengthdir_y(get_hitbox_value(attack, 1, HG_HEIGHT)/2.1, rng_angle) + get_hitbox_value(attack, 1, HG_HITBOX_Y),
                        fx_light_follow
                    );
                    fx.hsp = lengthdir_x(1, rng_angle);
                    fx.vsp = lengthdir_y(1, rng_angle);

                    if (heal_field_alpha < 1) heal_field_alpha += 0.05;

                    if (!shield_down || charge_cur <= 0 || get_player_damage(player) <= 0)
                    {
                        sound_stop(dspec_loop_sound);
                        sound_play(sound_get("sfx_dspec_end")); //asset_get("sfx_coin_collect")
                        dspec_loop_sound = noone;
                        spawn_hit_fx(x - 2 * spr_dir, y - floor(char_height/1.75), fx_dspec_end);
                        set_window(0);
                    }
                }
                break;
            case 3:
                if (vsp > 0)
                {
                    if (window_timer == 1) vsp = 0;
                    grav = 0.2;
                }
                break;
        }
        break;
    ///////////////////////////////////////////////// OTHER ////////////////////////////////////////////////
    //
    case 49: //overdrive
        soft_armor = 999999999999999999999999999999999999;
        switch (window)
        {
            case 1: //start
                if (window_timer == 1 || od_drag_time > 0)
                {
                    if (can_overdrive == 1) fs_force_fs = false;

                    od_drag_time = 0;
                    od_trapped_ids = [];
                }
                if (window_timer == window_end)
                {
                    var fx = spawn_hit_fx(x, y, fx_od_start);
                    fx.depth = depth - 3;
                    sound_play(asset_get("sfx_orca_absorb"), false, 0, 0.7, 0.5);
                    if ("col_lightmain" in self) od_light_change = true; //activate color change
                }
                break;
            case 2: //slower loop
                //eye flash
                if (window_loops == get_window_value(attack, window, AG_WINDOW_LOOP_TIMES)-1 && window_timer == window_end-1)
                {
                    sound_play(sound_get("sfx_od_eyeshine"));
                    var fx = spawn_hit_fx(x, y, fx_od_eyeshine);
                    fx.depth = depth - 1;
                }
                break;
            case 3: //faster loop
                if (window_loops == get_window_value(attack, window, AG_WINDOW_LOOP_TIMES)-1 && window_timer == window_end-1)
                {
                    var fx = spawn_hit_fx(x, y - char_height/1.75, fx_od_shock);
                    fx.depth = depth - 1;

                    sound_play(asset_get("sfx_bird_sidespecial"), false, 0, 1, 1.6);
                    sound_play(asset_get("sfx_bird_sidespecial"), false, 0, 0.5, 0.5);
                }
                break;
            case 6: //drag
                if (window_timer % 6 == 0)
                {
                    var fx = spawn_hit_fx(x, y - char_height/1.75, fx_od_drag);
                    fx.draw_angle = window_timer * 22.5;
                    fx.spr_dir = lerp(1, 0.7, window_timer/window_end);
                    fx.image_yscale = lerp(1, 0.7, window_timer/window_end);
                }
                break;
            case 7: //pose hold before the final hit
                if (window_timer == window_end)
                {
                    var fx = spawn_hit_fx(x, y - char_height/1.75, fx_od_finalhit);
                    fx.depth = depth - 1;
                    sound_play(asset_get("sfx_burnconsume"), false, 0, 1, 1.3);
                    sound_play(asset_get("sfx_burnconsume"), false, 0, 1, 1);
                    sound_play(asset_get("sfx_burnconsume"), false, 0, 1, 0.7);
                    shake_camera(6, 12);

                    //create the garden of eden itself
                    if (!hitpause && can_overdrive == 2) artc_garden = instance_create(x, y - floor(char_height/1.75), "obj_article2");
                }
                break;
            case 8: //final pose start
                if (window_timer == window_end)
                {
                    od_shockwave_coords[2] = 0;
                    od_shockwave_coords[0] = x;
                    od_shockwave_coords[1] = y - floor(char_height/1.75);
                }
                break;
        }
        if (was_parried)
        {
            was_parried = false;
            parry_id = noone;
            parry_was_attacking = false;
        }

        if (window >= 2 && window <= 3 && state_timer > 30) //initial aura
        {
            var fx = spawn_hit_fx(
                x,
                y - random_func(2, 4, true) * 16 - 16,
                fx_od_part
            );
            fx.vsp = -window*1.5;
            fx.move_dir = (random_func(3, 2, true) == 0) ? -1 : 1;
            fx.move_timer_max = 40;
            fx.move_timer = random_func(4, fx.move_timer_max, true);
            fx.orig_x = x;
            fx.max_dist = 40;

            var fx = spawn_hit_fx(x + (random_func(5, 8, true)-4)*16, y - (random_func(6, 8, true)-4) - 16, fx_light_follow);
            fx.hsp = (random_func(5, 8, true)-4)/2;
            fx.vsp = -(random_func(6, 8, true))/8;
            fx.depth = depth - 1;
        }
        if (window >= 5 && window <= 9) for (var i = 1; i <= 2; i ++) //sparkles vfx spawn
        {
            var rng_dir = random_func(i*2-1, 90, true)*4;
            var rng_dist = (random_func(i*2, 40, true) - 20) * 16;

            spawn_hit_fx(
                x + lengthdir_x(rng_dist, rng_dir),
                y + lengthdir_y(rng_dist, rng_dir) - floor(char_height/1.75),
                fx_od_sparkles
            );
        }

        //command grab timer
        if (window >= 6) if (od_drag_time < od_drag_time_max) od_drag_time ++;

        //end attack
        if (window == window_last && window_timer == window_end-1)
        {
            if (can_overdrive == 1)
            {
                od_cur = 0;
                using_overdrive = 0;
                if ("fs_char_initialized" in self) fs_force_fs = false;
            }
            else if (can_overdrive == 2) using_overdrive = 3;

            if ("col_lightmain" in self) od_light_change = false; //deactivate color change
        }

        //grabbed players
        for (var i = 0; i < array_length(od_trapped_ids); i++) with (od_trapped_ids[i][0])
        {
            hitpause = true;
            hitstop = 2;
            hitstop_full = 2;
            if ("enemy_stage_article" not in self)
            {
                if (state != PS_HITSTUN) set_state(PS_HITSTUN);
                if (instance_exists(other.od_hbox) && place_meeting(x, y, other.od_hbox))
                {
                    if (hurtboxID.dodging) hurtboxID.dodging = false;
                    invincible = false;
                    invince_time = 0;
                    user_event(13);
                }
            }
            else
            {
                state = 6;
                state_timer = 0;
                window = 0;
                window_timer = 0;
                if (has_hit_player) has_hit_player = false;
            }

            with (other) switch (window)
            {
                case 6: case 7: case 8:
                    var angle = point_direction(x, y, other.x, other.y);
                    var dist = 50;
                    
                    other.x = ease_sineIn(floor(od_trapped_ids[i][1]), floor(x + lengthdir_x(dist, angle)), od_drag_time, od_drag_time_max);
                    other.y = ease_sineIn(floor(od_trapped_ids[i][2]), floor(y + lengthdir_y(dist, angle)), od_drag_time, od_drag_time_max);

                    if (window == 8 && window_timer == window_end) od_trapped_ids = [];
                    break;
            }
        }
        break;
	case 2: //intro
        if (window <= 2 && state_timer % 2 == 0)
        {
            var fx = spawn_hit_fx(x + (random_func(2, 8, true)-4)*8 + intro_start_offset, y - (random_func(3, 8, true)-4) + draw_y - 16, fx_light_follow);
            fx.hsp = (random_func(2, 8, true)-4)/4;
            fx.vsp = -(random_func(3, 8, true))/8;
            fx.depth = depth - 1;
        }

		if (window <= window_last) hud_offset = lerp(hud_offset, 2000, 0.1); //put hud away
		if (window == window_last && window_timer == window_end-1 && get_gameplay_time() <= 125) state = PS_SPAWN; //correct state to spawn if needed
		break;
    case 46: //sonic trick
        iasa_script(); //lets character cancel out of the animation at any point
        if (vsp > 0 && window == 3) //window 3 is the window specified for the trick hold pose
        {
            window ++;
            window_timer = 0;
        }
        if (window > 1 && !free) set_state(PS_LANDING_LAG);
        break;
}

//0 will just go to the next window instead of a specific one
//-1 makes it loop on the same window
#define set_window(window_num)
{
    if (window_num == 0) window ++;
    else if (window_num == -1) window = window;
    else window = window_num;
    window_timer = 0;

	//we need this so if we put an "illegal" value it will not crash the game
	window_num = window;

	//speed resetting - horizontally
	switch (get_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE))
	{
		case 0: hsp += get_window_value(attack, window_num, AG_WINDOW_HSPEED) * spr_dir; break; //adds speed
		case 1: case 2: hsp = get_window_value(attack, window_num, AG_WINDOW_HSPEED) * spr_dir; break; //sets speed for the first frame/the entire window
	}

	//speed resetting - vertically
	switch (get_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE))
	{
		case 0: vsp += get_window_value(attack, window_num, AG_WINDOW_VSPEED); break; //adds speed
		case 1: case 2: vsp = get_window_value(attack, window_num, AG_WINDOW_VSPEED); break; //sets speed for the first frame/the entire window
	}
}
#define do_swift_jump
{
    can_jump = false;
    if (jump_pressed || tap_jump_pressed && can_tap_jump())
    {
        djumps = fspec_stored_djumps; //prevents venus from doing a djump if she already used it as she technecally hasn't touched the ground
        aftimg_active = true;

        reset_window_value(attack, 12, AG_WINDOW_VSPEED);
        if (fspec_sjump_coyote > 0)
        {
            hsp += lengthdir_x(3, rune_surface_angle);
            if (left_down && spr_dir || -spr_dir && right_down) spr_dir *= -1;

            set_window_value(
                attack, 12, AG_WINDOW_VSPEED,
                get_window_value(attack, 12, AG_WINDOW_VSPEED) * (last_reflect_mult * 0.8 + (1 - min_reflect_pow))
            );
        }

        set_window(12);
        fspec_sjump_coyote = 0;
        clear_button_buffer(PC_JUMP_PRESSED);
    }
}

#define custom_attack_grid
{
    var cancel_total = get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME_TOTAL);
    var whiff_mult = (get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1;
    window_cancel_total = (window_cancel_time + cancel_total) * whiff_mult;
    
    var window_loop_value = get_window_value(attack, window, AG_WINDOW_LOOP_TIMES); //looping window for X times - we set this up inside the different conditions
    var window_type_value = get_window_value(attack, window, AG_WINDOW_TYPE); //check the type of the window, helps condense the code a bit
    var window_loop_can_hit_more = get_window_value(attack, window, AG_WINDOW_LOOP_REFRESH_HITS); //checks if the loop should refresh hits or not
    
    //make sure the player isn't in hitpause
    if (!hitpause)
    {
        //make sure the window is in type 9 or 10
        if (window_type_value == 9 || window_type_value == 10)
        {
            //checks the end of the window
            if (window_timer == window_end)
            {
                if (window_loops <= window_loop_value) window_timer = 0; //go back to the start of it manually
            }

            if (window_loop_value > 0) //if the loop value is over 0, this looping mechanic will work
            {
                if (window_timer == 0)
                {
                    if (window_loop_can_hit_more) attack_end(attack); //reset hitboxes in case the window has a hitbox so they can hit again
                    window_loops ++; //at the start of the window, count a loop up
                }

                //when all the loops are over, go to the next window and reset the loop value
                //if it's window type 10, it should stop the loop prematurely
                if (window_loops > window_loop_value-1 || window_type_value == 10 && !free)
                {
                    destroy_hitboxes();
                    if (window < window_last)
                    {
                        window += 1;
                        window_timer = 0;
                    }
                    else set_state(free ? PS_IDLE_AIR : PS_IDLE);
                    window_loops = 0;
                }
            }
            else if (window_loop_value == 0) attack_end(attack);
            //if we aren't using the AG_WINDOW_LOOP_TIMES custom attack grid index we can just make it loop forever
            //this is how the game usually treats window type 9
        }
    }
}