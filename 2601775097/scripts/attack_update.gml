// attack_update

//bar MP consumption on the attack grid
custom_attack_grid();

//B-reverse stuff
if (attack == skill[0].skill_attack || attack == skill[1].skill_attack || attack == skill[1].skill_attack_air || attack == skill[2].skill_attack ||
    attack == skill[3].skill_attack || attack == skill[4].skill_attack || attack == skill[5].skill_attack || attack == skill[6].skill_attack ||
    attack == skill[7].skill_attack || attack == skill[8].skill_attack || attack == skill[9].skill_attack || attack == skill[10].skill_attack ||
    attack == skill[11].skill_attack
) trigger_b_reverse();
switch (attack)
{
    /////////////////////////////////////////////// NORMALS ////////////////////////////////////////////////
    //
    case AT_JAB:
        if (has_hit && !hitpause) can_dash = true;
        break;
    case AT_UTILT:
        can_fast_fall = false;
        hsp = clamp(hsp, -3, 3);
        break;
    case AT_NAIR:
        var nair_cancel_time = 18; //smaller number means the delay is bigger
        if ((window == 3 || window == 4 && window_timer < nair_cancel_time-1) && has_hit) //N-air canceling
        {
            window = 4;
            window_timer = nair_cancel_time;
            destroy_hitboxes();
        }
        break;
    case AT_DAIR:
        if (rune_D_active)
        {
            switch (window)
            {
                case 1: case 2:
                    if (!free)
                    {
                        set_window(4);
                        destroy_hitboxes();
                    }
                    break;
                case 3:
                    if (!free) 
                    {
                        if (window_timer < 8)
                        {
                            set_window(4);
                            destroy_hitboxes();
                        }
                        else
                        {
                            landing_lag_time = get_attack_value(AT_DAIR, AG_LANDING_LAG);
                            set_state(PS_LANDING_LAG);
                        }
                    }
                    else if (free && window_timer == window_end) set_state(PS_IDLE_AIR);
                    break;
                case 4:
                    if (window_timer == 1 && !free && !hitpause)
                    {
                        spawn_hit_fx(x, y-16, 155);
                        shake_camera(2, 5); //power, time
                    }
                    break;
            }
        }
        break;
    case AT_USTRONG:
        if (theikos_type > 0)
        {
            vsp = 0;
            can_move = false;

            if (has_rune("K"))
            {
                set_attack_value(atk, AG_CATEGORY, 2);
                set_attack_value(atk, AG_OFF_LEDGE, 1);
            }
        }

        switch (window)
        {
            case 1: //var reset + cue sound
                bar_tracking_id = noone;
                if (window_timer == window_end) sound_play(burnbuff_active ? asset_get("sfx_burnapplied") : sfx_charge);
                if (has_rune("H")) hook_chain_amount = 0;
                break;
            case 2: //charge effects
                if (!burnbuff_active)
                {
                    if (state_timer % (5-floor(strong_charge/15)) == 0) generate_particles(fx_intro, x, y-32, -1, depth-2);
                }
                else
                {
                    if (state_timer % 3 == 0) generate_particles(fx_burn, x-24*spr_dir, y-48, spr_dir ? 315 : 45, depth+1, 7, 13);
                }
                break;
            case 3: //stop sound
                sound_stop(sfx_charge);
                break;
            case 5: //cancel frame
                if (image_index >= 11 && (special_pressed || strong_pressed) && mp_current >= mp_cost_strongs) set_window(0);
                if (burnbuff_active && has_hit && window_timer == window_end) burnbuff_active = false;
                break;
            case 6: //deactivate burning fury on this window
                if (burnbuff_active && has_hit && image_index > 17) burnbuff_active = false;
                break;
            case 7: //effect/hitbox setup
                if (window_timer == 1)
                {
                    bar_hitbox = create_hitbox(AT_USTRONG, 4+burnbuff_active, x+40*spr_dir, y-40);

                    if (has_rune("H"))
                    {
                        hook_bar_pos[0] = x+40*spr_dir;
                        hook_bar_pos[1] = y-32-6*spr_dir;
                    }

                    if (bar_tracking_id != noone) //track target
                    {
                        angle_saved = point_direction(bar_hitbox.x, bar_hitbox.y, bar_tracking_id.x, bar_tracking_id.y);
                        if (angle_saved < 50 || angle_saved > 270) angle_saved = 50;
                        else if (angle_saved > 140) angle_saved = 140;

                        bar_tracking_id = noone;
                    }
                    else //check bar's inputs
                    {
                        if (joy_pad_idle) angle_saved = 90;
                        else
                        {
                            if (joy_dir >= 75 && joy_dir <= 105) angle_saved = joy_dir;
                            else if (joy_dir >= 255 && joy_dir <= 285) angle_saved = -joy_dir; //why would you aim like this
                            else if (joy_dir < 75 || joy_dir > 270) angle_saved = 75;
                            else if (joy_dir > 105) angle_saved = 105;
                        }
                    }
                    var speed = 18;
                    ustrong_dir[0] = lengthdir_x(speed, angle_saved);
                    ustrong_dir[1] = lengthdir_y(speed, angle_saved);

                    bar_hitbox.proj_angle = spr_dir ? angle_saved : angle_saved-180;
                    bar_hitbox.hsp = ustrong_dir[0];
                    bar_hitbox.vsp = ustrong_dir[1];

                    if (has_rune("H") && burnbuff_active) bar_hitbox = noone;
                }

                if (bar_tracking_id == noone && burnbuff_active) burnbuff_active = false;
                break;
        }
        break;
    case AT_FSTRONG:
        if (theikos_type > 0)
        {
            vsp = 0;
            can_move = false;

            if (has_rune("K"))
            {
                set_attack_value(atk, AG_CATEGORY, 2);
                set_attack_value(atk, AG_OFF_LEDGE, 1);
            }
        }
        
        if (burnbuff_active)
        { 
            if (has_hit && window == 5 && window_timer == 1) burnbuff_active = false;
        }
        else if (has_rune("C")) //charge effects for rune C
        {
            switch (window)
            {
                case 1: //sound play
                    if (window_timer == window_end) sound_play(sfx_charge);
                    break;
                case 2: //visual stuff
                    if (smash_charging && state_timer % (5-floor(strong_charge/15)) == 0) generate_particles(fx_intro, x, y-32, -1, depth-2);
                    break;
                case 3:
                    sound_stop(sfx_charge);
                    break;
            }
        }
        break;
    case AT_DSTRONG:
        if (theikos_type > 0)
        {
            vsp = 0;
            can_move = false;

            if (has_rune("K"))
            {
                set_attack_value(atk, AG_CATEGORY, 2);
                set_attack_value(atk, AG_OFF_LEDGE, 1);
            }
        }
        switch (window)
        {
            case 1: //var reset
                dstrong_last_hbox = 0;
                break;
            case 2: //charge
                mp_gainable = false; //doesn't turn false yet

                //spawn hitboxes
                if (!hitpause && state_timer % 10 == 0)
                {
                    bar_hitbox = create_hitbox(AT_DSTRONG, 1, 0, -56);
                    attack_end(AT_DSTRONG);
                }

                //should bar be able to do the earthquake?
                if (mp_current < mp_cost_strongs && strong_charge == 30)
                {
                    smash_charging = false;
                    set_window(0);
                }
                if (strong_charge == 31) sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"), 0, 0);

                //animation work is in animation.gml
                break;
            case 3: //effect spawning (it's technecally window 4 window timer 0 but don't tell anyone)
                if (window_timer == window_end)
                {
                    sound_play(asset_get("sfx_burnapplied"));
                    spawn_hit_fx_ext(fx_dstrong_blast, x, y, true);

                    if (strong_charge > 30 || has_rune("I")) 
                    {
                        sound_play(asset_get("sfx_kragg_rock_shatter"), 0, 0);
                        spawn_hit_fx(x, y, fx_dstrong_quake);
                        create_hitbox(AT_DSTRONG, 4, 0, -8);
                    }
                }
                break;
            case 4: //impact
                if (burnbuff_active) burnbuff_active = false;

                if (strong_charge > 30)
                {
                    if (dstrong_last_hbox != 3 && dstrong_last_hbox != 4) shake_camera(2, 5); //power, time
                    if (has_rune("I"))
                    {
                        if (window_timer == 1 && !hitpause)
                        {
                            //extra effect
                            spawn_hit_fx_ext(fx_skill11_chasm, x, y, false, depth-3);

                            var rock = [0];
                            for (var r = 0; r < 4; ++r)
                            {
                                rock[r] = create_hitbox(AT_DSTRONG, 5, x+((r*24)-48+16)*spr_dir, y-32);
                                rock[r].image_index = random_func(41+r, 4, true);
                                rock[r].proj_angle = random_func(41+r, 180, true)-90;
                                //24 = multiply offset
                                //48 = bringing the center point back to 0
                                //16 = offset

                                //pre-set trajectory
                                rock[r].hsp = (r-1.5)*2*spr_dir;
                                rock[r].vsp = -9 - (strong_charge-30)/12;
                                rock[r].grav = (r == 0 || r == 3) ? 0.75 : 0.5;

                                if (rock[r].hitbox_timer == rock[r].length-1) spawn_hit_fx(x, y, 301);
                            }
                        }
                    }
                }
                else
                {
                    if (dstrong_last_hbox != 3) shake_camera(1, 2); //power, time
                }
                break;
        }
        break;
    //////////////////////////////////////////////// SKILLS ////////////////////////////////////////////////
    //
    case AT_NTHROW:                         //  light dagger
        prepare_dagger_cd = (window == 4 || window == 8);

        switch (window)
        {
            case 1: case 5: //startups
                if (burnbuff_active)
                {
                    set_window_value(attack, window, AG_WINDOW_SFX, asset_get("sfx_burnapplied"));
                    set_window_value(attack, window, AG_WINDOW_SFX_FRAME, 2);
                }
                else
                {
                    reset_window_value(attack, window, AG_WINDOW_SFX);
                    reset_window_value(attack, window, AG_WINDOW_SFX_FRAME);
                }
                break;
            case 2: case 6: //jumping up in the air
                if (window_timer == window_end && free)
                {
                    hsp = -1 * spr_dir;
                    vsp = -5;
                }
                break;
            case 3: case 7: //throwing the projectile
                if (window_timer == 2)
                {
                    bar_hitbox = create_hitbox(skill[0].skill_attack, burnbuff_active+1, x+16*spr_dir, y-30);
                    bar_hitbox.hsp = lengthdir_x(bar_hitbox.hsp, free * 315);
                    bar_hitbox.vsp = lengthdir_y(bar_hitbox.hsp, free * 315)*spr_dir;
                    bar_hitbox.proj_angle = (free * 315) * spr_dir;
                }
                break;
            case 4: case 8: //check skill cost for another one
                burnbuff_active = false;
                
                if (mp_current < skill[0].mp_cost2)
                {
                    set_window_value(attack, window, AG_WINDOW_CANCEL_FRAME, window_end);
                    if (window_timer == window_end) set_state(free ? PS_IDLE_AIR : PS_IDLE);
                }
                else reset_window_value(attack, window, AG_WINDOW_CANCEL_FRAME);

                if (window_timer <= window_cancel_time)
                {
                    if (special_pressed)
                    {
                        if (cur_skills[3] != 0 && down_down && skill[cur_skills[3]].mp_use_cost) set_attack(AT_DSPECIAL);
                        if (cur_skills[2] != 0 && up_down && skill[cur_skills[2]].mp_use_cost) set_attack(AT_USPECIAL);
                        if (cur_skills[1] != 0 && (right_down || left_down) && skill[cur_skills[1]].mp_use_cost) set_attack(AT_FSPECIAL);
                    }
                    else iasa_script();
                }
                break;
        }

        if (was_free && !free) set_state(PS_LANDING_LAG);
        break;
    case AT_FTHROW: case AT_FSPECIAL_AIR:   //  burning fury
        //general set up
        if (window > 6)
        {
            //redirection stuff
            can_wall_jump = true;
            if (attack == skill[1].skill_attack_air && !free) set_state(PS_LANDING_LAG);
        }
        else
        {
            if (attack == skill[1].skill_attack_air && !free) attack = skill[1].skill_attack;
        }

        switch (window)
        {
            case 3: //activate buff
                burnbuff_active = true;
                if (window_timer == 1)
                {
                    spawn_hit_fx_ext(fx_fireblow[0], x-24*spr_dir, y-32, true);
                }
                break;
            case 7: //deactivate buff
                burnbuff_active = false;
                break;
            case 9: //do the stun attack
                if (window_loops == get_window_value(attack, window, AG_WINDOW_LOOP_TIMES) && (attack_down || special_down))
                {
                    set_window(13);
                    window_loops = 0;
                }
                break;
        }

        //funny command grab
        if (bar_grabbed_id != noone)
        {
            if (window == 9)
            {
                var foe_x = free ? x+40*spr_dir : x+64*spr_dir;
                var foe_y = free ? y+16 : y-8;
                if (bar_grab_time < 7)
                {
                    bar_grabbed_id.x = ease_sineInOut(bar_grabbed_id.x, foe_x, bar_grab_time, 7);
                    bar_grabbed_id.y = ease_sineInOut(bar_grabbed_id.y, foe_y, bar_grab_time, 7);
                }
                else
                {
                    bar_grabbed_id.x = foe_x;
                    bar_grabbed_id.y = foe_y;
                }
                //bar_grabbed_id.hsp = hsp*1.2;
                //bar_grabbed_id.vsp = vsp*1.2;
            }
            else
            {
                lerp(bar_grabbed_id.x, x+32*spr_dir, window_timer);
                lerp(bar_grabbed_id.y, y-32, window_timer);
            }
            //remove this status off enemies
            if (window > 10) bar_grabbed_id = noone;
        }
        break;
    case AT_UTHROW:                         //  force leap
        can_wall_jump = true;
        if (theikos_type == 0) leap_used = true; //should prevent bar from using the skill again in midair

        switch (window)
        {
            case 1:
                if (burnbuff_active)
                {
                    set_window_value(attack, 8, AG_WINDOW_HSPEED, 3);
                    set_window_value(attack, 8, AG_WINDOW_VSPEED, -7);
                }
                else
                {
                    reset_window_value(attack, 8, AG_WINDOW_HSPEED); //-3
                    reset_window_value(attack, 8, AG_WINDOW_VSPEED); //-4
                }
                break;
            case 2: case 3: //aim window
                if (joy_pad_idle) //if no direction is held
                {
                    if (spr_dir) angle_saved = 45;
                    else angle_saved = 135;
                }
                else //holding down different directions
                {
                    angle_saved = joy_dir;
                    if (up_down && (angle_saved > 70 && spr_dir || angle_saved < 110 && -spr_dir)) angle_saved = spr_dir ? 70 : 110;
                    else if (down_down
                        ||left_down && angle_saved > 160 && -spr_dir
                        || right_down && (angle_saved < 20 || angle_saved > 160) && spr_dir) angle_saved = spr_dir ? 20 : 160;
                    else
                    {
                        if (right_down && -spr_dir) angle_saved = 135;
                        else if (left_down && spr_dir) angle_saved = 45;
                    }
                }
                var speed = 16;
                move_x = lengthdir_x(speed, angle_saved);
                move_y = lengthdir_y(speed, angle_saved);
                break;
            case 5: //go to pratfall at the end
                hsp = move_x / 4;
                vsp = move_y / 4;
                if (window_timer == window_end) set_state(PS_PRATFALL);
            case 4:
                has_hit = false; //prevents bar from not going into pratfall if he hit with the initial attack

                if (window == 4)
                {
                    hsp = move_x;
                    vsp = move_y;
                    if (window_timer == 2)
                    {
                        var newdust = spawn_dust_fx(x, y, sprite_get("fx_skill2"), 10);
                        newdust.dust_color = 0;
                        newdust.draw_angle = spr_dir ? angle_saved : angle_saved-180;
                    }
                    //spr_angle = angle_saved; //put in animation.gml later
                }
                if (attack_pressed || special_pressed)
                {
                    if (mp_current >= skill[2].mp_cost2 && !was_parried) set_window(6); //allow the extention
                    else //don't allow the extention and pop the low MP error up
                    {
                        if ((attack_counter == 1) && notice_time == -1) // || special_counter == 1
                        {
                            notice_time = notice_time_max;
                            notice_type = 0;
                        }
                    }
                }
                break;
            case 6: //blast spawn
                if (window_timer == window_end)
                {
                    spawn_hit_fx_ext(fx_fireblow[burnbuff_active], x+(40*spr_dir), y-24, true, depth-1);
                    bar_hitbox = create_hitbox(attack, 2+burnbuff_active, x+38*spr_dir, y-24)

                    if (!has_hit) sound_play(asset_get("sfx_ell_dspecial_explosion_" + string(burnbuff_active*2+1)), 0, 0);
                }
                break;
            case 8: //blast end
                if (window_timer == window_end)
                {
                    if (!has_hit) set_state(PS_PRATFALL);
                    if (burnbuff_active) burnbuff_active = false;
                }
                break;
        }
        break;
    case AT_DTHROW:                         //  photon blast
        can_move = false;
        hsp = 0;
        vsp = 0;
        if (theikos_type == 0 && free) blast_used = true; //should prevent bar from using the skill again in midair
        
        switch (window)
        {
            case 1: //var reset
                blast_charge_level = 1;
                charge_color = false;

                reset_window_value(attack, 5, AG_WINDOW_LOOP_TIMES);

                reset_hitbox_value(attack, 1, HG_BASE_KNOCKBACK);
                reset_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING);
                reset_hitbox_value(attack, 1, HG_DAMAGE);
                reset_hitbox_value(attack, 1, HG_EXTRA_HITPAUSE);

                if (window_timer == window_end) sound_play(sfx_charge);
                break;
            case 2: case 3: case 4: //charge
                if (special_down)
                {
                    blast_charge_level = window-1;
                    set_window_value(attack, 5, AG_WINDOW_LOOP_TIMES, blast_charge_level);

                    //visual stuff
                    if (state_timer % 4 == 0) charge_color = !charge_color;
                    if (state_timer % (4-blast_charge_level) == 0) generate_particles(fx_intro, x, y-40, -1, depth-2);

                    light_alpha = 0.25*blast_charge_level;
                }
                else if (!special_down)
                {
                    if (window == 2 && window_timer >= window_end/2 || window > 2) set_window(5);
                }

                if (blast_charge_level > 1) //if over level 1, decrease KB and increase damage and hitpause
                {
                    set_hitbox_value(attack, 1, HG_BASE_KNOCKBACK, 2);
                    set_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING, 0);
                    set_hitbox_value(attack, 1, HG_DAMAGE, 7);
                    set_hitbox_value(attack, 1, HG_EXTRA_HITPAUSE, 10);
                }
                break;
            case 5: //blasts
                charge_color = false;
                sound_stop(sfx_charge);
                if (window == 5 && window_timer == 1) spawn_hit_fx(x, y, fx_skill3);

                //final blast
                if (window_loops == blast_charge_level-1) switch (blast_charge_level)
                {
                    case 3:
                        set_hitbox_value(attack, 1, HG_BASE_KNOCKBACK, 9);
                        set_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING, 1.1);
                        break;
                    case 2:
                        set_hitbox_value(attack, 1, HG_BASE_KNOCKBACK, 8);
                        set_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING, 0.95);
                        break;
                    case 1:
                        break;
                }
                break;
        }
        break;
    case AT_EXTRA_4:                        //  flashbang
        can_fast_fall = false;

        //stuff to do with bar himself
        if (bar_grabbed_id != noone)
        {
            //general stuff
            hsp = 0;
            vsp = 0;
            can_move = false;
            mp_gainable = false;

            if (window == 3) set_window(0);

            //stuff to do with the grabbed foe
            with (bar_grabbed_id)
            {
                //general stuff
                hsp = 0;
                vsp = 0;
                force_depth = true;
                depth = other.depth-2;
                hitstop_full = 60;
                hitstop = 2;

                if (hitpause) //bring the grabbed foe to bar
                {
                    x = ease_sineInOut(x, other.x-40*spr_dir, other.bar_grab_time, 7);
                    y = ease_sineInOut(y, other.y-24, other.bar_grab_time, 7);
                }

                switch (other.window)
                {
                    case 4: case 5:
                        fall_through = true;

                        x = ease_quadOut(other.x-40*spr_dir, other.x+24*spr_dir, other.bar_grab_time-7, 14);
                        y = ease_quadOut(other.y-24, other.y+32, other.bar_grab_time-7, 14);
                        break;
                    case 6:
                        x = other.x+24*spr_dir;
                        y = other.y+32;
                        if (other.window_timer == other.window_end)
                        {
                            fall_through = false;
                            other.bar_grabbed_id = noone;
                        }
                        break;
                }
            }            
        }
        
        if (window == 5 && window_timer == 1) spawn_hit_fx(x+12*spr_dir, y-48, fx_lightblow[0])

        //hitbox spawn
        if (window == 6 && window_timer == window_end)
        {
            spawn_hit_fx_ext(burnbuff_active ? fx_skill4_smear_burn : fx_skill4_smear, x, burnbuff_active ? y+8 : y, true, depth-3);
            bar_hitbox = create_hitbox(attack, 2+burnbuff_active, x+24*spr_dir, y+32);
            if (burnbuff_active) burnbuff_active = false;
        }

        if (window == 7 && window_timer == 9) spr_dir = -spr_dir;
        break;
    case AT_FSPECIAL_2:                     //  power smash
        can_wall_jump = true;
        switch (window)
        {
            case 1: //var reset + air redirect
                skill_cancel_timer = 12;

                if (!burnbuff_active)
                {
                    reset_hitbox_value(attack, 2, HG_DAMAGE);
                    reset_hitbox_value(attack, 2, HG_HIT_SFX);
                    reset_hitbox_value(attack, 2, HG_VISUAL_EFFECT);
                    reset_hitbox_value(attack, 3, HG_DAMAGE);
                    reset_hitbox_value(attack, 3, HG_HIT_SFX);
                    reset_hitbox_value(attack, 2, HG_VISUAL_EFFECT);
                }
                else
                {
                    set_hitbox_value(attack, 2, HG_DAMAGE, 13);
                    set_hitbox_value(attack, 2, HG_HIT_SFX, asset_get("sfx_burnconsume"));
                    set_hitbox_value(attack, 2, HG_VISUAL_EFFECT, fx_fireblow[2]);
                    set_hitbox_value(attack, 3, HG_DAMAGE, 9);
                    set_hitbox_value(attack, 3, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
                    set_hitbox_value(attack, 3, HG_VISUAL_EFFECT, fx_fireblow[1]);
                }

                if (free) set_window(3);
                break;
            case 5: //falling
                fall_through = down_down;

                start_skill_cancel = true;
                if (skill_cancel_timer <= 0) can_jump = true;
                break;
            case 7: //landing
                if (!hitpause) switch (window_timer)
                {
                    case 1: //effect stuff + crater spawn check
                        spawn_hit_fx(x-8*spr_dir, y-16, fx_dstrong_quake);
                        shake_camera(4, 10); //power, time

                        if (instance_exists(power_crater_artc)) set_article_window(3);
                        break;
                    case 2: //crater spawn - works like zetter down b fire
                        if (!place_meeting(x, y, asset_get("plasma_field_obj")))
                        {
                            power_crater_artc = instance_create(x, y, "obj_article1");
                            power_crater_artc.state = "power_crater";
                        }
                        if (burnbuff_active) burnbuff_active = false;
                        break;
                }
                break;
        }
        break;
    case AT_NSPECIAL_2:                     //  accel blitz
        can_fast_fall = 0;
        can_move = false;
        can_wall_jump = true;
        fall_through = true;
        if (theikos_type == 0) accel_used = true;

        accel_vulnerable = ((window == 3 || window == 4 || window == 5 && window_timer < 2) && theikos_type == 0);
        hsp = 0;
        if (window != 2) vsp = 0;

        switch (window)
        {
            case 1: //var reset
                //reset the position array and add bar's current position as the initial value
                accel_pos = [];
                array_push(accel_pos, [x, y]);

                accel_mark_spd = (theikos_type > 0) ? 22.5 : 12;

                accel_flashed_time = 0;
                apply_motion_trail = false;
                break;
            case 2: //aiming around window
                //indicator logic
                if (!instance_exists(accel_marker_artc))
                {
                    accel_marker_artc = instance_create(x, y, "obj_article1");
                    accel_marker_artc.state = "accel_indc";
                }
                else
                {
                    accel_marker_artc.hsp = joy_pad_idle ? 0 : lengthdir_x(accel_mark_spd, joy_dir);
                    accel_marker_artc.vsp = joy_pad_idle ? 0 : lengthdir_y(accel_mark_spd, joy_dir);

                    accel_flashed_time += 4; //the vulnerability extra hitpause is dependant on the time bar is aiming around
                }

                is_accel_trail = true;

                //if going to the next window do all this
                if (!special_down || window_timer == window_end)
                {
                    set_window(0);
                    spawn_hit_fx_ext(fx_skill6, x, y-32, false, depth-2, random_func(18, 60, true)-30);
                    sound_play(asset_get("sfx_ori_uptilt_single"));
                }
                break;
            case 3: //lightspeed travel
                //actual movement
                apply_motion_trail = true;

                if (!hitpause)
                {
                    if (window_timer % 2 == 0 && window_timer/2 < array_length(accel_pos))
                    {
                        var cur_pos = window_timer/2;
                        var accel_speed = point_distance(accel_pos[cur_pos-1][0], accel_pos[cur_pos-1][1], accel_pos[cur_pos][0], accel_pos[cur_pos][1]);
                        accel_goto = point_direction(accel_pos[cur_pos-1][0], accel_pos[cur_pos-1][1], accel_pos[cur_pos][0], accel_pos[cur_pos][1]);
                    }
                    hsp = lengthdir_x(accel_speed, accel_goto);
                    vsp = lengthdir_y(accel_speed, accel_goto);
                }

                //effect work
                if (window_timer == window_end)
                {
                    spawn_hit_fx_ext(fx_skill6, x, y-32, false, depth-2, random_func(18, 60, true)-30);
                    sound_play(asset_get("sfx_ori_uptilt_single"));
                }
                break;
            case 4:
                is_accel_trail = false;
                break;
            case 5:
                if (window_timer == window_end)
                {
                    if (theikos_type == 0) accel_act_time = 20;
                    else apply_motion_trail = false;
                }
                break;
        }
        break;
    case AT_USPECIAL_2:                     //  polaris
        can_fast_fall = false;
        //activation
        if (window == 2 && window_timer == 1)
        {
            lightbuff_active = true;
            polaris_shots_left = polaris_shots_max;
            homing_cooldown = 0;
            spawn_hit_fx(x + 32 * spr_dir, y - 32, fx_lightblow[0]);
            sound_play(asset_get("sfx_abyss_hex_curse"), false, 0, 0.4, 4);
            sound_play(sound_get("sfx_introlight"), false, 0, 0.8, 3);
            for (var i = 0; i < polaris_shots_max; i++)
            {
                polaris_shot_ids[i] = create_hitbox(skill[7].skill_attack, 1, -100, -100);
                polaris_shot_ids[i].play_turn_anim = 10 * spr_dir;
                polaris_shot_ids[i].turn_dir = (spr_dir == 1);
                polaris_shot_ids[i].play_turn_anim = (spr_dir == 1) ? 10 : 0;
            }
        }

        if (window >= 3)
        {
            vsp /= 1.5;
            hsp /= 1.1;
            if (fast_falling) fast_falling = false;
        }
        if (window == 6 && lightbuff_active)
        {
            spawn_hit_fx(x, y-32, fx_lightblow[1]);
            sound_play(asset_get("sfx_abyss_despawn"));
            sound_play(asset_get("sfx_holy_lightning"));

            for (var i = 0; i < polaris_shots_left; i++)
            {
                spawn_hit_fx(polaris_shot_ids[i].x, polaris_shot_ids[i].y, fx_skill7_afterimage);
                polaris_shot_ids[i].length = 0;
            }
            lightbuff_active = false;
            polaris_cd = polaris_cd_max;
        }
        break;
    case AT_DSPECIAL_2:                     //  ember fist
        can_fast_fall = false;
        
        switch (window)
        {
            case 1: //var reset
                reset_hitbox_value(attack, 2, HG_HITBOX_Y);
                ember_alter_anim_start = 0;
                break;
            case 3: //aiming
                if (window_timer == 2)
                {
                    if (!hitpause) bar_hitbox = create_hitbox(attack, 1+burnbuff_active*2, x, y);

                    if (!burnbuff_active)
                    {
                        if (joy_pad_idle) angle_saved = spr_dir ? 0 : 180;
                        else
                        {
                            if (spr_dir) angle_saved = joy_dir > 180 ? clamp(joy_dir, 360 - ember_range, 360) : clamp(joy_dir, 0, 0 + ember_range);
                            else angle_saved = clamp(joy_dir, 180 - ember_range, 180 + ember_range);
                        }

                        if (angle_saved > 20 && angle_saved < 160) //aim up
                        {
                            ember_alter_anim_start = 6;
                            set_hitbox_value(attack, 2, HG_HITBOX_Y, get_hitbox_value(attack, 2, HG_HITBOX_Y)-12);
                        }
                        else if (angle_saved < 340 && angle_saved > 200) //aim down
                        {
                            ember_alter_anim_start = 11;
                            set_hitbox_value(attack, 2, HG_HITBOX_Y, get_hitbox_value(attack, 2, HG_HITBOX_Y)+12);
                        }
                        else
                        {
                            ember_alter_anim_start = 0;
                            reset_hitbox_value(attack, 2, HG_HITBOX_Y);
                        }
                    }
                }
                break;
            case 4: //attack hitbox spawning
                ember_alter_anim_end = ember_alter_anim_start + 6; //sets up the end of the animation where it will diverge back

                if (burnbuff_active) //burning fury buff - the actual hitbox spawning is in update.gml
                {
                    if (window_timer == 1)
                    {
                        fury_ember_timer = 48 + 1;
                        fury_ember_x = x + 64 * spr_dir;
                        fury_ember_y = y - 32;
                    }
                }
                else
                {
                    for (var ember_line_pos = 0; ember_line_pos <= 3; ++ember_line_pos)
                    {
                        var range = 50;
                        var ember_line_x = x + 16*spr_dir + lengthdir_x(ember_line_pos, angle_saved) * range;
                        var ember_line_y = y - 30 + lengthdir_y(ember_line_pos, angle_saved) * range;                        

                        //hitbox spawning
                        if (window_timer % 2 == 0 && ember_line_pos*2 == window_timer && ember_line_pos != 0)
                        {
                            bar_hitbox = create_hitbox(attack, 2, floor(ember_line_x), floor(ember_line_y));
                        }

                        //effect spawning
                        if (window_timer == 1 && ember_line_pos == 0)
                        {
                            spawn_hit_fx_ext(fx_skill8, ember_line_x, ember_line_y, false, depth-2, spr_dir ? angle_saved : angle_saved + 180);
                        }
                    }
                }
                break;
            case 5:
                burnbuff_active = false;
                break;
        }
        break;
    case AT_EXTRA_2:                        //  light hookshot
        can_move = false;
        can_fast_fall = false;
        
        if (window < 3) can_shield = true; //parry cancel

        if (window == 1)
        {
            reset_hitbox_value(attack, 1, HG_EXTRA_HITPAUSE);
            reset_hitbox_value(attack, 1, HG_PROJECTILE_HSPEED);
            reset_hitbox_value(attack, 1, HG_LIFETIME);

            reset_window_value(attack, 4, AG_WINDOW_LENGTH);
            reset_window_value(attack, 4, AG_WINDOW_TYPE);
            reset_hitbox_value(attack, 1, HG_HITBOX_COLOR);
        }

        if (!burnbuff_active) switch (window)
        {
            case 1: //var reset
                hook_charge = 0;
                hook_chain_amount = 0;
                hook_grab = 0;

                if (window_timer == window_end) sound_play(sfx_charge);
                break;
            case 2: //charge
                if (special_down && window_timer == window_end && hook_charge < 10)
                {
                    hook_charge ++;
                    set_hitbox_value(attack, 1, HG_EXTRA_HITPAUSE, hook_charge*2+20); //min: 20 || max: 40
                    set_hitbox_value(attack, 1, HG_PROJECTILE_HSPEED, hook_charge/2+14); //min: 14 || max: 24
                    set_hitbox_value(attack, 1, HG_LIFETIME, 55-hook_charge); //min: 55 || max: 45

                    set_window(-1);
                }

                //visual stuff
                if (state_timer % 4 == 0) charge_color = !charge_color;
                if (state_timer % (5-floor(hook_charge/3)) == 0) generate_particles(fx_intro, x-8*spr_dir, y-32, -1, depth-2);
                light_alpha = hook_charge/10*0.8;
                break;
            case 3: //release
                charge_color = false;
                sound_stop(sfx_charge);

                if (window_timer == 1 && free)
                {
                    hsp = (x < view_get_xview()-48 && spr_dir || x > view_get_wview()+48 && -spr_dir) ? 0 : -4*spr_dir;
                    vsp = -2;
                }
                if (window_timer == window_end) bar_hitbox = create_hitbox(attack, 1, x+32*spr_dir, y-32);
                break;
            case 4: //hold pose
                if (hook_grab > 0) set_window(0); //grab success

                if (instance_exists(bar_hitbox))
                {
                    hook_proj[0] = bar_hitbox.x;
                    hook_proj[1] = bar_hitbox.y;

                    if (!instance_exists(hook_chain_artc)) //chain effect
                    {
                        hook_chain_artc = instance_create(hook_proj[0], hook_proj[1], "obj_article1");
                        hook_chain_artc.state = "hook_chain";
                    }
                    if (bar_hitbox.hitbox_timer % 2 == 0) hook_chain_amount ++;

                    if (bar_hitbox.hitbox_timer >= bar_hitbox.length - 1)
                    {
                        set_window(7); //grab fail
                        set_article_window(3);
                    }
                }
                else
                {
                    set_window(7);
                    set_article_window(3);
                }
                break;
            case 5:
                set_article_window(3);
                break;
            case 6: //funny whoosh
                iasa_script();
                if (window_timer == window_end) set_state(PS_IDLE_AIR);
                else if (!free) set_state(PS_LAND);
                break;
        }
        else switch (window)
        {
            case 1:
                set_window_value(attack, 4, AG_WINDOW_LENGTH, 20);
                set_window_value(attack, 4, AG_WINDOW_TYPE, 0);
                set_hitbox_value(attack, 1, HG_HITBOX_COLOR, hb_color[3]);
                break;
            case 3: //release
                if (window_timer == 1 && free)
                {
                    hsp = (x < view_get_xview()-48 && spr_dir || x > view_get_wview()+48 && -spr_dir) ? 0 : -4*spr_dir;
                    vsp = -2;
                }
                if (window_timer == window_end) bar_hitbox = create_hitbox(attack, 1, x+32*spr_dir, y-32);
                break;
            case 4: //hold pose
                if (window_timer == window_end)
                {
                    burnbuff_active = false;
                    set_window(7); //continiue animation
                }
                break;
        }
        break;
    case AT_EXTRA_3:                        //  searing descent
        can_fast_fall = false;
        can_wall_jump = true;

        if (window > 1 && window < 4 && state_timer % 3 == 0) generate_particles(fx_burn, x+48*spr_dir, y-48, spr_dir ? 135 : 225, depth+1, 9);
        
        switch (window)
        {
            case 1: //var setup
                if (burnbuff_active)
                {
                    skill_cancel_timer = 30;
                    set_window_value(attack, 2, AG_WINDOW_VSPEED, -13.5);
                    for (var i = 1; i <= 3; ++i) set_hitbox_value(attack, i, HG_DAMAGE, 4);
                    set_hitbox_value(attack, 4, HG_DAMAGE, 10);
                    set_hitbox_value(attack, 5, HG_DAMAGE, 7);
                }
                else
                {
                    skill_cancel_timer = 20;
                    reset_window_value(attack, 2, AG_WINDOW_VSPEED);
                    for (var i = 1; i <= 3; ++i) reset_hitbox_value(attack, i, HG_DAMAGE);
                    reset_hitbox_value(attack, 4, HG_DAMAGE);
                    reset_hitbox_value(attack, 5, HG_DAMAGE);
                }
                break;
            case 4: //cancel frame
                attack_end();

                if (special_down && mp_current >= skill[10].mp_cost2 && !was_parried)
                {
                    set_window(0);
                    vsp = -9;
                    hsp = 0;
                }
                else if (window_timer == window_end)
                {
                    set_state(PS_PRATFALL);
                    if (burnbuff_active) burnbuff_active = false;
                }
                break;
            case 7: //meteor
                fall_through = down_down;

                generate_particles(fx_burn, x-8*spr_dir, y, spr_dir ? 315 : 45, depth+1, 11);

                start_skill_cancel = true;
                if (skill_cancel_timer <= 0)
                {
                    can_shield = true;
                    can_jump = true;
                }
                break;
            case 8: //meteor landing
                can_move = false;
                if (window_timer < 1 && !hitpause)
                {
                    shake_camera(5, 10); //power, time

                    spawn_hit_fx_ext(fx_dstrong_blast, x, y, true);

                    if (burnbuff_active) burnbuff_active = false;
                }
                break;
        }
        break;
    case AT_EXTRA_1:                        //  chasm burster
        can_wall_jump = true;
        if (window == 3)
        {
            can_jump = true;
            fall_through = down_down;
        }
        else can_jump = false;

        switch (window)
        {
            case 1: //var reset
                if (free && window_timer == 1) vsp = -7.5;
                chasm_limit = 0;
                chasm_count = 0;
                chasm_x = [];
                break;
            case 3:
                if (free && !hitpause) create_hitbox(attack, 5, x, y);
                break;
            case 4: //look forward where should chasms burst
                if (window_timer == window_end && !hitpause)
                {
                    chasm_y = y;
                    
                    for (var chasm_line_pos = 0; chasm_line_pos <= 3 + burnbuff_active * 2; ++chasm_line_pos)
                    {
                        var chasm_line_x = x + spr_dir * (40 + chasm_line_pos * chasm_range); //where to spawn
                        var chasm_check_x = chasm_line_x + 8 * spr_dir; //off-stage prevention

                        //check for solid blocks or platforms
                        if (position_meeting(chasm_check_x, y + 2, asset_get("solid_32_obj")) || position_meeting(chasm_check_x, y + 2, asset_get("par_jumpthrough")))
                        {
                            if (position_meeting(chasm_check_x, y - 4, asset_get("solid_32_obj")) == false)
                            {
                                array_push(chasm_x, chasm_line_x); //tells update.gml where to spawn them
                                chasm_limit ++; //tells update.gml how many bursts to spawn                                
                            }
                            else break;
                        }
                        else break; //if they don't exist just stop running this code so the bursts won't float
                    }

                    //punch ground hitbox
                    shake_camera(6, 8); //power, time
                    bar_hitbox = create_hitbox(attack, 1+burnbuff_active*2, x, y);

                    spawn_hit_fx(x+32*spr_dir, y, 301);
                }
            case 5: //set timer
                if (window_timer == 1) chasm_burst_timer = 60;
                break;
            case 6: //disable burning fury if it's on
                if (burnbuff_active) burnbuff_active = false;
                break;
        }
        break;
    //
    case AT_USTRONG_2:                      //  theikos U-strong
        can_move = free;
        
        switch (window)
        {
            case 1: //var reset
                strong2_charge = 0;
                ustrong2_pillar_end_timer = 1;
                if (window_timer == window_end) sound_play(sfx_charge);
                break;
            case 2: //loop setup while charging
                if (strong_charge % 4 == 0 && strong_charge != 60 && strong_charge != 0) strong2_charge ++;

                set_window_value(attack, 4, AG_WINDOW_LOOP_TIMES, strong2_charge+1);
                set_hitbox_value(attack, 1, HG_WIDTH, 50+strong_charge*2);
                set_hitbox_value(attack, 2, HG_WIDTH, 70+strong_charge*2);

                mp_gainable = false;

                if (state_timer % (5-floor(strong_charge/15)) == 0) generate_particles(fx_intro, x, y-32, -1, depth-2);
                break;
            case 3:
                sound_stop(sfx_charge);
                break;
            case 5:
                if (window_timer == 1 && !hitpause) vsp = -5;
                break;
        }
        break;
    case AT_FSTRONG_2:                      //  theikos F-strong
        vsp = 0;
        can_move = false;

        switch (window)
        {
            case 1: //var reset
                strong2_charge = 0;
                break;
            case 2: //loop setup while charging
                if (strong_charge % 15 == 0 && strong_charge != 60) strong2_charge ++;
                set_window_value(attack, 3, AG_WINDOW_LOOP_TIMES, strong2_charge);
                break;
            case 3: //looping window
                if (window_timer % 8 == 0) sound_play(asset_get("sfx_swipe_medium1"));
                if (window_timer % 8 == 4) sound_play(asset_get("sfx_swipe_medium2"));
                break;
            case 4: //final hit windup
                if (window_timer == 1) hsp = -4*spr_dir;
                break;
            case 6:
                has_hit = false;
                break;
            case 7: //final hit stuff
                if (has_hit) shake_camera(2, 6); //power, time

                if (window_timer == !has_hit*3+8)
                {
                    spawn_hit_fx_ext(fx_fstrong2, x, y, false, depth-1);
                    sound_play(sound_get("sfx_armorbreak" + string(random_func(9, 3, true))), 0, 0, 0.5);
                }
                if (window_timer == window_end && burnbuff_active) burnbuff_active = false;
                break;
        }
        break;
    case AT_DSTRONG_2:                      //  theikos D-strong
        switch (window)
        {
            case 1: //var reset
                dstrong2_fire_count = 3;
                dstrong2_was_freemd = freemd;
                break;
            case 2: //charge window
                if (strong_charge % 15 == 0 && strong_charge != 0) dstrong2_fire_count ++;
                var fire_proj_vspeed = 7 + strong_charge/5;
                
                set_hitbox_value(attack, 1, HG_PROJECTILE_VSPEED, fire_proj_vspeed);
                set_hitbox_value(attack, 1, HG_PROJECTILE_ANIM_SPEED, fire_proj_vspeed/100 + 0.2);

                mp_gainable = false;

                switch (strong_charge) //sound effect stuff
                {
                    case 15: sound_play(asset_get("sfx_frog_fspecial_start"));
                    case 30: sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
                    case 45: sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));
                    case 60: sound_play(asset_get("sfx_frog_fspecial_charge_full"));
                }
                break;
            case 3:
                if (window_timer == 1) spawn_hit_fx_ext(fx_dstrong2_smear, x, y, false, depth-1);
                break;
            case 4: //fireball
                switch (window_timer)
                {
                    case 1:
                        bar_hitbox = create_hitbox(attack, 1, x, floor(y-(strong_charge/10)*dstrong2_was_freemd)-16);
                        break;
                    case 2:
                        if (burnbuff_active) burnbuff_active = false;
                        break;
                }
                break;
        }
        break;
    case 49:                                //  LORD'S PUNISHMENT
        can_move = false;
        can_wall_jump = false;

        od_cast = 2;

        //effects + foe control
        if (window > 9)
        {
            if (od_bg_alpha > 0) od_bg_alpha -= 0.02;
        }
        else
        {
            od_bg_alpha = 1;

            with (oPlayer) if (player != other.player) //time slow (freeze)
            {
                if (hurtboxID.dodging) hurtboxID.dodging = false;
                hitpause = true;
                hitstop_full = 60;
                hitstop = 2;
                hsp = 0;
                vsp = 0;
                old_hsp = 0;
                old_vsp = 0.001;

                if (holyburning) holyburning = false; //lord's punishment disables bar's mechanics
                if (lightstun_type != 0) lightstun_type = 0;

                with (other)
                {
                    if (window == 1 && window_timer == 1) spawn_hit_fx(other.x, other.y-other.char_height+other.char_height/2, fx_lightblow[2]);
                }
            }
        }
        
        switch (window)
        {
            case 1:                                         //var setup
                burnbuff_active = false;
                lightbuff_active = false;
                super_armor = true;
                hsp = 0;
                vsp = 0;
                od_fallthrough_y = y;
                od_rect_alpha = 1;
                od_bg_alpha = 1;

                if (instance_exists(theikos_fire_artc) && theikos_fire_artc.state == "theikos_fire" && theikos_fire_artc.window != theikos_fire_artc.last_window)
                {
                    theikos_fire_artc.window = theikos_fire_artc.last_window;
                    theikos_fire_artc.window_timer = 0;
                    dstrong2_active = false;
                }

                fs_force_fs = false;
                break;
            case 3:                                         //initial powerup
                if (window_timer == 1) shake_camera(8, 6); //power, time
                break;
            case 4:                                         //bursting fire particles
                shake_camera(1, 6); //power, time
                generate_particles(fx_part_fire, x-8*spr_dir, y-46, 0, depth-1, 0, 0, random_func(10, 9,true)-4, abs(random_func(10, 9,true)-4) >= 2 ? -4 : -5);
                //fx_theikos_aura
                break;
            case 5: case 6: case 7: case 8:                 //leap
                fall_through = (od_fallthrough_y > y);
                break;
            case 9:                                         //landing
                shake_camera(8, 20); //power, time
                if (window_timer == window_end) spawn_hit_fx_ext(fx_dstrong_blast, x, y, true);
                break;
            case 10:                                        //holy fire from theikos D-strong
                if (!instance_exists(theikos_fire_artc))
                {
                    dstrong2_fire_count = 7;
                    dstrong2_startpos = [x, y-16];

                    theikos_fire_artc = instance_create(x, y, "obj_article1");
                    theikos_fire_artc.state = "theikos_fire";
                }
                break;
            case 17:                                        //final slash
                shake_camera(10, 3); //power, time
                break;
            case 21:                                        //divine blessing buff apply (only applies on the rune version)
                if (window_timer == window_end)
                {
                    if ("fs_char_initialized" in self)
                    {
                        fs_force_fs = false;
                        od_current = 0;
                        od_cast = 0;
                    }
                    else if ("superTrue" in self) od_cast = 0;
                    else if (theikos_type == 2)
                    {
                        od_current = 0;
                        od_cast = 0;
                    }
                    else
                    {
                        od_cast ++;
                        od_buff_time = od_buff_time_max;
                        sound_play(sound_get("sfx_transform"));
                        spawn_hit_fx_ext(fx_lightblow[2], x, y-40, false, depth-1);
                    }
                }
                break;
        }
        break;
    case 47:                                //  THEIA EVLOGIA
        hsp = 0;
        vsp = 0;
        
        switch (window)
        {
            case 2: //charge intensifies
                shake_camera(floor(window_timer/20), 10); //power, time
                if (window_timer == 1) sound_play(sound_get("sfx_theiaevlogia_charge"));
                break;
            case 3: //apply theikos effects
                sound_stop(sound_get("sfx_theiaevlogia_charge"));
                theikos_type = 1 + found_cheapie;
                break;
            case 4: //shockwaves for dramatic effect
                if (window_timer == 1)
                {
                    if (window_loops == 1) sound_play(sound_get("sfx_theiaevlogia_release"));

                    shake_camera(10, 10);
                    var shockwave = instance_create(x, y-48, "obj_article1");
                    shockwave.state = "theikos_shockwave";
                }
                break;
        }
        
        switch (theikos_type)
        {
            case 1: //regular - cues on intro
                //overhead UI stuff cuz it's also technecally an intro
                if (window <= window_last && get_gameplay_time() < 100) hud_offset = lerp(hud_offset, 2000, 0.1);
                if (window == window_last && window_timer == 10)
                {
                    state = PS_SPAWN;
                    state_timer = (get_gameplay_time() < 125) ? get_gameplay_time() : get_gameplay_time() % (idle_anim_speed*600);
                }
                break;
            case 2: //anti-cheapie
                super_armor = true;
                can_move = false;
                can_wall_jump = false;
                break;
        }
        break;
    //
    ///////////////////////////////////////////////// OTHER ////////////////////////////////////////////////
    //
    case AT_TAUNT:
        if (window < 9) taunt_react_time = random_func(324, 15, true)+5;
        if (has_hit)
        {
            switch (window)
            {
                case 7:
                    suppress_stage_music(0, 5);
                    break;
                case 9:
                    if (window_timer == taunt_react_time) set_window(0);
                    break;
            }
        }
        else
        {
            if (window == 9 && window_timer == window_end) set_window(12);
        }
        break;
    case 2:     // intro
        switch (window)
        {
            case 1: //spawn effect
                if (window_timer == 1) spawn_hit_fx(x-24*spr_dir, y-128+64, fx_lightblow[1]);
            case 2: case 3:
                //light particles
                if (get_gameplay_time() % 2 == 0) generate_particles(fx_intro, x - 20*spr_dir, y - 328, 0, depth-1, 15, 21, 0, 8);

                //light pillar
                intro_alpha = 0.5;
                intro_pillar_fx_frame += intro_pillar_fx_speed;
                break;
            case 5: //blast
                if (window_timer == window_end)
                {
                    var intro_fireblast = spawn_hit_fx(x-16*spr_dir, y-34, fx_fireblow[0]);
                    intro_fireblast.depth = depth-1;
                    shake_camera(3, 4); //power, time
                }
            case 4:
                intro_alpha -= 0.05;
                break;
        }

        //overhead UI
        if (window <= window_last) hud_offset = lerp(hud_offset, 2000, 0.1);
        if (window == window_last && window_timer == 9)
        {
            state = PS_SPAWN;
            state_timer = get_gameplay_time() % (idle_anim_speed*600);
        }
        break;
    case 3:     // skill select animation
        if (menu_active)
        {
            //if (menu_type < 2) menu_type = 1;
            if (window == 2) window_timer = 0;
        }
        //if (window == 3 && window_timer == 8 && menu_type < 2) state = PS_SPAWN;
        break;
    case 46:    //sonic trick
        iasa_script();
        if (vsp > 0 && window == 3)
        {
            window ++;
            window_timer = 0;
        }
        if (window > 1 && !free) set_state(PS_LANDING_LAG);
        break;
}

if (theikos_type > 0 && attack != AT_OVERDRIVE) allow_turbo();


//usage: generate_particles(hit_fx_name, x, y, angle, depth, random_spread_x, random_spread_y, hsp, vsp)
#define generate_particles
/// generate_particles(fx_name, fx_x, fx_y, fx_angle = 0, fx_depth = -1, fx_spread_x = 0, fx_spread_y = 0, fx_hsp = 0, fx_vsp = 0)
{
    var fx_name = argument[0], fx_x = argument[1], fx_y = argument[2];
    var fx_angle = argument_count > 3 ? argument[3] : 0;
    var fx_depth = argument_count > 4 ? argument[4] : -1;
    var fx_spread_x = argument_count > 5 ? argument[5] : 0;
    var fx_spread_y = argument_count > 6 ? argument[6] : 0;
    var fx_hsp = argument_count > 7 ? argument[7] : 0;
    var fx_vsp = argument_count > 8 ? argument[8] : 0;

    var part_x = (random_func(24, floor(fx_spread_x/2), true)-floor(fx_spread_x/4))*fx_spread_x;
    var part_y = (random_func(25, floor(fx_spread_y/2), true)-floor(fx_spread_y/4))*fx_spread_y;

    fx_name = spawn_hit_fx(fx_x+part_x, fx_y+part_y, fx_name);
    fx_name.spr_dir = -spr_dir;
    if (depth != 0) fx_name.depth = fx_depth;
    else fx_name.depth = 3;
    if (fx_angle == -1)
    {
        var random_angle = random_func(6, 360,true);
        fx_name.draw_angle = random_angle;
    }
    else if (fx_angle >= 0) fx_name.draw_angle = fx_angle;
    fx_name.hsp = fx_hsp;
    fx_name.vsp = fx_vsp;
}
#define set_window(window_num)
{
    //0 will just go to the next window instead of a specific one
    //-1 makes it loop on the same window
    if (window_num == 0) window ++;
    else if (window_num == -1) window = window;
    else window = window_num;
    window_timer = 0;
}
//i can probably merge this with generate_particles
#define spawn_hit_fx_ext
/// spawn_hit_fx_ext(fx_name, fx_x, fx_y, fx_pause = false, fx_depth = depth-2, fx_angle = 0)
{
    var fx_name = argument[0], fx_x = argument[1], fx_y = argument[2];
    var fx_pause = argument_count > 3 ? argument[3] : false;
    var fx_depth = argument_count > 4 ? argument[4] : depth-2;
    var fx_angle = argument_count > 5 ? argument[5] : 0;

    var fx_ext = spawn_hit_fx(fx_x, fx_y, fx_name);

    if (fx_ext.depth != depth+1) fx_ext.depth = fx_depth;
    if (fx_pause && hitpause)
    {
        fx_ext.pause_timer = 0;
        fx_ext.pause = hitstop;
    }

    fx_ext.draw_angle = fx_angle;
}

//i might have a problem with this system later on
#define set_article_window(artc_window)
{
    with (obj_article1) if (player_id == other.id)
    {
        window = artc_window;
        window_timer = 0;
    }
}
#define allow_turbo
{
    if (has_hit && !was_parried && !hitpause)
    {
        //allow turbo mode to these attacks too, but with some restrictions
        if ( (attack != AT_USTRONG || window > 7) && (attack != AT_UTHROW || window > 7)
        && (attack != AT_EXTRA_3 || window > 2) && (attack != AT_EXTRA_4 || window > 6) )
        {
            can_jump = true;
            can_attack = true;
            can_tilt = true;
            can_special = true;
            can_strong = true;
            can_ustrong = true;
            can_fast_fall = true;
        }
    }
}

#define custom_attack_grid
{
    //looping window for X times
    var window_loop_value;
    window_loop_value = get_window_value(attack, window, AG_WINDOW_LOOP_TIMES);

    if (!hitpause || attack == AT_THEIKOS)
    {
        //loop window
        if (get_window_value(attack, window, AG_WINDOW_TYPE) == 9)
        {
            if (window_timer == window_end-1)
            {
                attack_end(attack); //reset hitboxes
                if (window_loops <= window_loop_value) window_timer = 0; //window_timer is -1 so window_timer 0 can spawn hitboxes
            }

            if (window_loop_value > 0)
            {
                if (window_timer == 0) window_loops ++; //at the start of the window

                if (window_loops >= window_loop_value)
                {
                    destroy_hitboxes();
                    window += 1;
                    window_timer = 0;
                    window_loops = 0;
                }
            }
        }
    }
}