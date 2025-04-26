#macro AT_JAB2 39;
#macro AT_FTILT2 40;
#macro AT_UTILT2 42;
#macro AT_DTILT2 43;
#macro AT_NAIR2 44;
#macro AT_FAIR2 45;
#macro AT_BAIR2 46;
#macro AT_UAIR2 47;
#macro AT_DAIR2 48;
#macro AT_NSPECIAL_2_AIR 49;
//other moves
//     AT_NSPECIAL_AIR
//     AT_NSPECIAL_2
//     AT_FSPECIAL_2
//     AT_EXTRA_1 (transturnabout)

//B - Reversals
switch (attack)
{
    case AT_NSPECIAL:
    case AT_NSPECIAL_AIR:
    case AT_NSPECIAL_2:
    case AT_NSPECIAL_2_AIR:
    case AT_FSPECIAL:
    case AT_FSPECIAL_2:
    case AT_USPECIAL:
        trigger_b_reverse();
        break;
}

switch (attack)
{

        case AT_DATTACK:
        if (window = 1 && window_timer = 6 && !hitpause) sound_play(sound_get("dattack_slip"));
        if (window = 3 && window_timer = 12 && !hitpause) sound_play(sound_get("dattack_fall"));
        if (window = 1 && window_timer = 4 && !hitpause) spawn_base_dust(x+72*spr_dir, y, "dash", -spr_dir);
        if (window = 2 && window_timer = 4 && !hitpause) spawn_base_dust(x+80*spr_dir, y, "dash", -spr_dir);
        //if (window = 3 && window_timer = 12 && !hitpause) 
        //{
        //    spawn_base_dust(x-10*spr_dir, y, "dash_start", spr_dir);
        //    spawn_base_dust(x+52*spr_dir, y, "dash_start", -spr_dir);
        //}
        break;

        case AT_FSTRONG:
        if ((window = 3 && window_timer = 6 && !hitpause) ||
        (window = 4 && window_timer = 12 && !hitpause)) 
        {
            sound_play(asset_get("sfx_blow_weak1"));
            sound_play(sound_get("paper_beat"));
            spawn_base_dust(x+0*spr_dir, y, "dash", spr_dir);
        }
        if (window = 4 && window_timer = 24 && !hitpause) spawn_base_dust(x+0*spr_dir, y, "dash_start", spr_dir);
        break;

        case AT_USTRONG:
        if (window = 1 && window_timer > 1 && !hitpause) 
        {
            key_dir = 0;
            ustrong_launch_dir = 45;
            easetimer = 0;
            char_height = 60;
            ustrong_move = false;
            should_play_gavel_sound = false;
        }
        key_dir = (right_down - left_down) * spr_dir;
        if (key_dir != 0) ustrong_launch_dir = 90 - (key_dir * 45);
        if (window = 6 && window_timer > 3 && !hitpause)
        {
            var gavel_hitbox = create_hitbox(AT_USTRONG, 1, x, y);
            gavel_hitbox.can_hit_self = true;
            if (ustrong_launch_dir != 0 && 90) gavel_hitbox.kb_angle = ustrong_launch_dir;

            sprite_index = asset_get("empty_sprite");
            //ustrong_gavel_slam_fx = hit_fx_create(sprite_get("ustrong_gavel_slam_fx"), 36);
            //var ustrong_fx = spawn_hit_fx(x, y, ustrong_gavel_slam_fx);
            //ustrong_fx.depth = depth - 1;
            if (!has_hit_player) should_play_gavel_sound = true;
            if (should_play_gavel_sound) sound_play(asset_get("sfx_blow_heavy1"));
        }

        if (window == 3) 
        {
            easetimer = 0;
            char_height = 144;
        }
        if (window == 2 && window_timer < 4 && !hitpause)
        {
            if (easetimer < 3)
            {
                char_height = ease_quadOut(60, 144, easetimer, 2);
                easetimer++;
            }
        }
        if (((window == 6 && window_timer < 4) || (window == 5 && window_timer > 3)) && !hitpause)
        {
            if (easetimer < 8)
            {
                char_height = ease_quadOut(144, 72, easetimer, 7);
                easetimer++;
            }
        }

        if (window == 1 && window_timer = 1) ustrong_hit = 0;
        ustrong_parried = was_parried;
        if (window = 5 && window_timer > 7 && !hitpause) sound_play(asset_get("sfx_blow_medium1"));
        break;

        case AT_DSTRONG:
        if (window = 3 && window_timer = 4 && !hitpause) sound_play(sound_get("dstrong_slam"));
        break;

        case AT_FTILT:
        if (window = 1 && window_timer = 6 && !hitpause)
        {
            sound_play(sound_get("ftilt_throw"));
            spawn_base_dust(x+72*spr_dir, y, "dash", -spr_dir);
        }
        break;

        case AT_UTILT:
        if (window == 4) 
        {
            easetimer = 0;
            char_height = 96;
        }
        if (window == 1 && window_timer < 6 || window == 5 && window_timer > 8)
        {
            if (window = 1) easetimer = 0;
            char_height = 60;
        }
        if (window == 2 && window_timer < 4 && !hitpause)
        {
            if (easetimer < 3)
            {
                char_height = ease_quadOut(60, 96, easetimer, 2);
                easetimer++;
            }
        }
        if (window == 5 && window_timer > 1 && !hitpause)
        {
            if (easetimer < 8)
            {
                char_height = ease_quadIn(96, 60, easetimer, 7);
                easetimer++;
            }
        }
        if (window = 2 && window_timer = 3 && !hitpause) sound_play(sound_get("utilt_idea"));
        break;

        case AT_UAIR:
        if (window == 3) 
        {
            easetimer = 0;
            char_height = 90;
        }
        if (window == 1 && window_timer < 6 || window == 4 && window_timer > 8)
        {
            if (window = 1) easetimer = 0;
            char_height = 60;
        }
        if ((window == 2 && window_timer < 2 || window == 1 && window_timer > 4) && !hitpause)
        {
            if (easetimer < 3)
            {
                char_height = ease_quadOut(60, 90, easetimer, 2);
                easetimer++;
            }
        }
        if (window == 4 && window_timer > 1 && !hitpause)
        {
            if (easetimer < 7)
            {
                char_height = ease_quadIn(90, 60, easetimer, 6);
                easetimer++;
            }
        }
        if (has_hit) can_fastfall = true;
        if (((window = 1 && window_timer = 9) || (window = 2 && (window_timer = 4 || window_timer = 8))) && !hitpause) 
sound_play(sound_get("phone"));
        break;


        case AT_NSPECIAL:
        {
        }
        if (window = 1 && window_timer = 1 && !hitpause) nspecial_bubble_index = 0;
        if (window = 2 && window_timer = 4 && !hitpause) nspecial_bubble_index = 1;
        if (window = 3 && window_timer = 4 && !hitpause) nspecial_bubble_index = 2;
        if (window = 3 && window_timer = 8 && !hitpause) nspecial_bubble_index = 3;
        if (window = 3 && window_timer = 12 && !hitpause) nspecial_bubble_index = 4;
        if (window = 3 && window_timer = 16 && !hitpause) nspecial_bubble_index = 5;
        if (window = 4 && window_timer = 1 && !hitpause)
        {
            move_cooldown[AT_NSPECIAL_AIR] = 60;
            move_cooldown[AT_NSPECIAL] = 60;
        }
        break;

        case AT_NSPECIAL_AIR: 
        {
            if (!free)
            {
                iasa_script();
                if (was_parried = true)
                {
                    set_state(PS_PRATLAND);
                    was_parried = true;
                    parry_lag = 40;
                }
                else set_state(PS_LAND);
                spawn_base_dust(x, y, "land", spr_dir);
                move_cooldown[AT_NSPECIAL] = 60;
                move_cooldown[AT_NSPECIAL_AIR] = 70;
            }
        }
        if (window = 1 && window_timer = 1 && vsp > -3.6) vsp = -3.6;
        if (window = 1 && window_timer = 1 && !hitpause) nspecial_bubble_index = 0;
        if (window = 2 && window_timer = 4 && !hitpause) nspecial_bubble_index = 1;
        if (window = 3 && window_timer = 4 && !hitpause) nspecial_bubble_index = 2;
        if (window = 3 && window_timer = 8 && !hitpause) nspecial_bubble_index = 3;
        if (window = 3 && window_timer = 12 && !hitpause) nspecial_bubble_index = 4;
        if (window = 3 && window_timer = 16 && !hitpause) nspecial_bubble_index = 5;
        if (window = 4 && window_timer = 1 && !hitpause)
        {
            move_cooldown[AT_NSPECIAL_AIR] = 60;
            move_cooldown[AT_NSPECIAL] = 60;
        }
        break;

        case AT_FSPECIAL:
        if (window = 2)
        {
            if (window_timer = 1 && evidence_count > 0)
            {
                var evidence_proj = create_hitbox(AT_FSPECIAL, 1, x+(32*spr_dir), y-32);
                if (throw_evidence = 1)
                {
                    var evidence_proj_sprite = ("evidence_proj"+string(evidence1));
                    var evidence_proj_item = evidence1;
                    evidence1 = 0;
                    evidence1_status = 0;
                    
                }
                if (throw_evidence = 2)
                {
                    var evidence_proj_sprite = ("evidence_proj"+string(evidence2));
                    var evidence_proj_item = evidence2;
                    evidence2 = 0;
                    evidence2_status = 0;
                    
                }
                if (throw_evidence = 3)
                {
                    var evidence_proj_sprite = ("evidence_proj"+string(evidence3));
                    var evidence_proj_item = evidence3;
                    evidence3 = 0;
                    evidence3_status = 0;
                    
                }
                if (evidence_proj_sprite != noone) evidence_proj.sprite_index = sprite_get(evidence_proj_sprite);
                evidence_proj.uses_shader = false;
                
                //ill be honest this is a bit annoying now //if (evidence_proj_item == 7) sound_play(sound_get("nyaw"));
                if (evidence_proj_item == 8) sound_play(asset_get("sfx_sand_yell"), 0, noone, 1, 2);
                //if (evidence_proj_item == ) 

            }
            
        }
        //if (evidence_proj != noone && !evidence_proj.free) evidence_proj.destroyed = true;
        break;

        case AT_USPECIAL:
        can_fast_fall = false;
        if (window < 4) can_move = false;
        if (window = 1 && window_timer = 1) 
        {
            uspecial_angle = 90;
            //sprite_change_offset("uspecial", 48, 63, true);
            //draw_y = 0;
        }
        if (window = 2 || window = 3 || window = 1 && window_timer = 5)
        {
            if (window = 1)
            {
                uspecial_angle = joy_dir;
                if (uspecial_angle > 90 || uspecial_angle < 270) spr_dir = 1;
                if (uspecial_angle <= 90 || uspecial_angle >= 270) spr_dir = -1;
            }
            if (window = 2 || window = 1 && window_timer = 5)
            {
                uspecial_angle = joy_dir;
                spr_angle = uspecial_angle - 90;
                if (uspecial_angle > 90 || uspecial_angle < 270) spr_dir = 1;
                if (uspecial_angle < 90 || uspecial_angle > 270) spr_dir = -1;
            }
            if (window = 3)
            {
                if (window_timer = 1)
                {
                    hsp = lengthdir_x(12, uspecial_angle);
                    vsp = lengthdir_y(12, uspecial_angle);
                    uspecial_old_hsp = hsp;
                    uspecial_old_vsp = vsp;
                    var uspecial_hitbox = create_hitbox(AT_USPECIAL, floor(1), ceil(x+lengthdir_x(-40, uspecial_angle)), ceil(y-30+lengthdir_y(-40, uspecial_angle)));
                    //create_hitbox(AT_USPECIAL, floor(1), x+lengthdir_x(-40, uspecial_angle), y-30+lengthdir_y(-40, uspecial_angle));
                    var uspecial_fx = spawn_hit_fx(ceil(x+lengthdir_x(-40, uspecial_angle)), ceil(y-30+lengthdir_y(-40, uspecial_angle)), uspecial_explosion);
                    uspecial_fx.depth = depth - 1;
                    sound_play(asset_get("sfx_ell_dspecial_explosion_3"));
                }
                //if (vsp != 0 && hsp != 0 && !hitpause) spr_angle = -(radtodeg(arctan2(vsp, hsp)) + 90); 
                if (vsp != 0 && hsp != 0)
                {
                    spr_angle = -(radtodeg(arctan2(vsp, hsp)) + 90); 
                    uspecial_old_vsp = vsp;
                    uspecial_old_hsp = hsp;
                }
                else spr_angle = -(radtodeg(arctan2(uspecial_old_vsp, uspecial_old_hsp)) + 90); 
                //changes angle based on the direction hes flying, reusing my bcm code (the moves are really similar)
            }
            if (window = 1 && window_timer = 3) spr_angle = uspecial_angle - 90;
            //sprite_change_offset("uspecial", 48, 48, true);
        } 
        if (window = 4 || window = 3 && window_timer = 32) 
        {
            //draw_y = 0;
            spr_angle = 0;
            //sprite_change_offset("uspecial", 48, 63, true);
        }
        if (window > 1) 
        {
            if (!free)
            {
                iasa_script();
                set_state(PS_PRATLAND);
                spawn_base_dust(x, y, "land", spr_dir);
            }
        }
        if (window >= 3) can_wall_jump = true;
        break;

        case AT_DSPECIAL:
        if (window = 2)
        {
            if (window_timer = 1)
            {
                dspecial_random_index = 2;
                spawn_base_dust(x+32*spr_dir, y, "walk", -spr_dir);
                evidence_box_icon = 0;
                evidence_roll = random_func(0, 1, false);
                if (evidence_roll <= good_evidence_percent)
                {
                    if (evidence1_status = 0)
                    {
                        evidence1 = random_func(1, 6, true) + 1;
                        while (evidence1 = evidence2 || evidence1 = evidence3)
                        {
                            evidence1 = random_func(dspecial_random_index++, 6, true) + 1;
                            dspecial_random_index++;
                        }                        
                        evidence_box_icon = evidence1;
                    }
                    else if (evidence2_status = 0)
                    {
                        evidence2 = random_func(1, 6, true) + 1;
                        while (evidence2 = evidence1 || evidence2 = evidence3)
                        {
                            evidence2 = random_func(dspecial_random_index++, 6, true) + 1;
                            dspecial_random_index++;
                        }                        
                        evidence_box_icon = evidence2;
                    }
                    else if (evidence3_status = 0)
                    {
                        evidence3 = random_func(1, 6, true) + 1;
                        while (evidence3 = evidence1 || evidence3 = evidence2)
                        {
                            evidence3 = random_func(dspecial_random_index++, 6, true) + 1;
                            dspecial_random_index++;
                        }                        
                        evidence_box_icon = evidence3;
                    }
                }
                else if (evidence_roll <= good_evidence_percent + bad_evidence_percent)
                {
                    if (evidence1_status = 0)
                    {
                        evidence1 = random_func(1, 10, true) + 7;
                        while (evidence1 = evidence2 || evidence1 = evidence3)
                        {
                            evidence1 = random_func(dspecial_random_index++, 10, true) + 7;
                            dspecial_random_index++;
                        }                        
                        evidence_box_icon = evidence1;
                    }
                    else if (evidence2_status = 0)
                    {
                        evidence2 = random_func(1, 10, true) + 7;
                        while (evidence2 = evidence1 || evidence2 = evidence3)
                        {
                            evidence2 = random_func(dspecial_random_index++, 10, true) + 7;
                            dspecial_random_index++;
                        }                        
                        evidence_box_icon = evidence2;
                    }
                    else if (evidence3_status = 0)
                    {
                        evidence3 = random_func(1, 10, true) + 7;
                        while (evidence3 = evidence1 || evidence3 = evidence2)
                        {
                            evidence3 = random_func(dspecial_random_index++, 10, true) + 7;
                            dspecial_random_index++;
                        }
                        evidence_box_icon = evidence3;
                    }
                }
                else
                {
                    evidence_box_icon = 17;
                }
            }   
            if (evidence_box_icon == 17 && window_timer == 12)
            {
                evidence_box_icon = 18;
                spawn_hit_fx(x+(44*spr_dir), y-90, 301);
                take_damage(player, -1, -5);
                sound_play(asset_get("sfx_fish_collect"));
            }
        }
        if (window = 3)
        {
        	if (window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH) - 1)
            {
                if (evidence_roll <= good_evidence_percent)
                {
                    if (evidence1_status = 0)
                    {
                        evidence1_status = 1;
                    }
                    else if (evidence2_status = 0)
                    {
                        evidence2_status = 1;
                    }
                    else if (evidence3_status = 0)
                    {
                        evidence3_status = 1;
                    }
                }
                else if (evidence_roll <= good_evidence_percent + bad_evidence_percent)
                {
                    if (evidence1_status = 0)
                    {
                        evidence1_status = 2;
                    }
                    else if (evidence2_status = 0)
                    {
                        evidence2_status = 2;
                    }
                    else if (evidence3_status = 0)
                    {
                        evidence3_status = 2;
                    }
                }
        	}
       }
        if (window = 1 && window_timer = 20) evidence_box_index = 0;
        if (window = 2 && window_timer = 3) evidence_box_index = 1;
        if (window = 2 && window_timer = 6) evidence_box_index = 2;
        if (window = 3 && window_timer = 1) evidence_box_index = 0;
        break;

//turnabout moves

        case AT_EXTRA_1:
            if (window = 1 && window_timer = 1)
            {
		if (!cornered_disabled)
		{
               		with (oPlayer) if ("turnaboutID" in self) turnaboutID = other; 
			if (get_player_color(player) == 15) 
			{
				just_a_theory = true;
				theory_length = 0;
				theorx = x;
				theory = y-38;
				if (get_local_setting(3) <= 0.2) sound_play(sound_get("matpat_intro_short"));
			}
		}
		//else if (get_player_color(player) == 15) sound_play(sound_get("matpat_intro_short"));
            }
            hurtboxID.sprite_index = sprite_get("hurtbox");
            hsp = 0;
            vsp = 0;
            turnabout = true;
            turnabout_timer = turnabout_timer_max;
	    if (get_player_color(player) != 15)
            {
            	if (window = 2 && window_timer = 11){
             	   sound_play(sound_get("finger_shine"), false, noone, 0.5, 1);
            	} if (window = 2 && window_timer = 13){
                	var turnabout_shine = spawn_hit_fx(x + (6*spr_dir), y-42, shine);
                	turnabout_shine.depth = depth-1;
            	}
	    }
            if (window < 5)
            { 
                hit_player_obj.hitpause = true;
                hit_player_obj.hitstop = 2; 
                //hit_player_obj.depth = depth-2; 
            }
            can_move = false;
            can_jump = false;
            can_attack = false;
            can_strong = false;
            can_ustrong = false;
            can_special = false;
            can_shield = false;
            can_wall_jump = false;
            can_fast_fall = false;
            if (window = 5)
            {
                //hit_player_obj.hitpause = false;
            }

        break;

        case AT_JAB2:
        if (window = 4 && window_timer = 3 && !hitpause)
        {
            //sound_play(asset_get("sfx_ori_spirit_flame_1"));
            sound_play(asset_get("sfx_ori_dsmash_skitter_alone"));
            sound_play(asset_get("mfx_star"));
        }
        if (window == 3 && window_timer >= 5) 
        { 
            move_cooldown[AT_JAB2] = 2; 
            can_attack = true; 
        } if (was_parried && window == 3 && window_timer >= 10){
            set_state(PS_IDLE);
        }
        break;

        case AT_FTILT2:
        if (window = 1 && window_timer = 6 && !hitpause)
        {
            sound_play(sound_get("ftilt_throw"));
            spawn_base_dust(x+120*spr_dir, y, "dash_start", -spr_dir);
        }
        break;

        case AT_UTILT2:
            if (window = 1 && window_timer = 5 && !hitpause)sound_play(asset_get("sfx_ori_dsmash_skitter_alone"));
            if (window = 2 && window_timer = 3 && !hitpause)sound_play(asset_get("mfx_star"));
        break;

        case AT_DTILT2:
        if (window = 1 && window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause)
        {
            sound_play(asset_get("sfx_ori_dsmash_skitter_alone"));
            sound_play(asset_get("mfx_star"));
            spawn_base_dust(x+112*spr_dir, y, "walk", -spr_dir);
            spawn_base_dust(x+148*spr_dir, y, "dash", -spr_dir);
        }
        break;

        case AT_NAIR2:
        if (window = 1 && window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause)
        {
            //vsp--;
            sound_play(asset_get("sfx_ori_energyhit_medium"));
            var nair2_hitbox = create_hitbox(AT_NAIR2, floor(1), ceil(x), ceil(y-40));
            var nair2_fx = spawn_hit_fx(ceil(nair2_hitbox.x), ceil(nair2_hitbox.y), nair2_explosion);
        }
        break;

        case AT_FAIR2:
        if (window = 1 && window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause)
        {
            sound_play(asset_get("sfx_ori_dsmash_skitter_alone"));
            sound_play(asset_get("mfx_star"));
        }
        break;

        case AT_BAIR2:
        if (window = 1 && window_timer = 5 && !hitpause)
        {
            sound_play(asset_get("sfx_ori_dsmash_skitter_sein"));
            sound_play(asset_get("mfx_star"));
        }
        break;

        case AT_UAIR2:
        if (window = 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause)
        {
            sound_play(asset_get("sfx_ori_dsmash_skitter_alone"));
            sound_play(asset_get("mfx_star"));
        }
        break;

        case AT_DAIR2:
        if (window = 1 && window_timer = 9 && !hitpause)
        {
            sound_play(asset_get("sfx_ori_dsmash_skitter_sein"));
            sound_play(asset_get("mfx_star"));
        }
        break;

        case AT_NSPECIAL_2:
        {
        }
        if (window = 1 && window_timer = 1 && !hitpause) nspecial_bubble_index = 0;
        if (window = 2 && window_timer = 4 && !hitpause) nspecial_bubble_index = 1;
        if (window = 3 && window_timer = 4 && !hitpause) nspecial_bubble_index = 2;
        if (window = 3 && window_timer = 8 && !hitpause) nspecial_bubble_index = 3;
        if (window = 3 && window_timer = 12 && !hitpause) nspecial_bubble_index = 4;
        if (window = 3 && window_timer = 16 && !hitpause) nspecial_bubble_index = 5;
        if (window = 4 && window_timer = 1 && !hitpause)
        {
            nspecial_bubble_index = 5;
            move_cooldown[AT_NSPECIAL_2_AIR] = 50;
            move_cooldown[AT_NSPECIAL_2] = 50;
        }
        if (has_hit_player && turnabout_ready && turnabout = false)
        {
            nspecial_bubble_index = 5;
            can_move = false;
            can_jump = false;
            can_attack = false;
            can_strong = false;
            can_ustrong = false;
            can_special = false;
            can_shield = false;
            can_wall_jump = false;
            can_fast_fall = false;
            turnabout_timer = turnabout_timer_max;
            turnabout = true; 
            soft_armor = 99;
            cornered_segment = 0;
            cornered_timer = 0;
            attack_end();
            set_attack(AT_EXTRA_1);
        }
        break;

        case AT_NSPECIAL_2_AIR: 
        {
            if (!free)
            {
                iasa_script();
                if (was_parried = true)
                {
                    set_state(PS_PRATLAND);
                    was_parried = true;
                    parry_lag = 40;
                }
                else set_state(PS_LAND);
                spawn_base_dust(x, y, "land", spr_dir);
                move_cooldown[AT_NSPECIAL_2] = 50;
                move_cooldown[AT_NSPECIAL_2_AIR] = 50;
            }
        }
        if (window = 1 && window_timer = 1 && vsp > -3.6) vsp = -3.6;
        if (window = 1 && window_timer = 1 && !hitpause) nspecial_bubble_index = 0;
        if (window = 2 && window_timer = 4 && !hitpause) nspecial_bubble_index = 1;
        if (window = 3 && window_timer = 4 && !hitpause) nspecial_bubble_index = 2;
        if (window = 3 && window_timer = 8 && !hitpause) nspecial_bubble_index = 3;
        if (window = 3 && window_timer = 12 && !hitpause) nspecial_bubble_index = 4;
        if (window = 3 && window_timer = 16 && !hitpause) nspecial_bubble_index = 5;
        if (window = 4 && window_timer = 1 && !hitpause)
        {
            nspecial_bubble_index = 5;
            move_cooldown[AT_NSPECIAL_2_AIR] = 50;
            move_cooldown[AT_NSPECIAL_2] = 50;
        }
        if (has_hit_player && turnabout_ready && turnabout = false)
        {
            nspecial_bubble_index = 5;
            can_move = false;
            can_jump = false;
            can_attack = false;
            can_strong = false;
            can_ustrong = false;
            can_special = false;
            can_shield = false;
            can_wall_jump = false;
            can_fast_fall = false;
            turnabout_timer = turnabout_timer_max;
            turnabout = true; 
            soft_armor = 99;
            cornered_segment = 0;
            cornered_timer = 0;
            attack_end();
            set_attack(AT_EXTRA_1);
        }
        break;

        case AT_FSPECIAL_2:
        if (window = 1 && window_timer = 8 && !hitpause)
        {
            sound_play(asset_get("sfx_ori_energyhit_weak"));
            sound_play(asset_get("sfx_ori_charged_flame_release"));
            sound_play(asset_get("mfx_star"));
        }
        if (window = 3 && window_timer = 7) move_cooldown[AT_FSPECIAL_2] = 11;
        break;
}


if (voice)
{
    switch (attack)
    {

        case AT_JAB:
        case AT_JAB2:
        if (window = 4 && window_timer = 3 && !hitpause)
        {
            if (random_func(1, 1, false) < 0.5)
            {
                if (random_func(2, 1, false) < 0.3)  // words
                {
                    sound_play(sound_get("v_take_this"));
                }
                else //not words
                {
                    if (random_func(3, 2, true) = 0) sound_play(sound_get("v_attack1"));
                    else sound_play(sound_get("v_attack_aha"));
                }
            }
        }
        break;

        case AT_FTILT:
        case AT_FTILT2:
        if (window = 1 && window_timer = 6 && !hitpause)
        {
            if (random_func(1, 1, false) < 0.8)
            {
                if (random_func(2, 1, false) < 0.65)  // words
                {
                    if (random_func(3, 4, true) = 0) sound_play(sound_get("v_take_a_look"));
                    else if (random_func(4, 3, true) = 0) sound_play(sound_get("v_look_at_this"));
                    else if (random_func(5, 2, true) = 0) sound_play(sound_get("v_fspecial_here"));
                    else sound_play(sound_get("v_i_have_evidence1"));
                }
                else //not words
                {
                    if (random_func(6, 2, true) = 0) sound_play(sound_get("v_attack1"));
                    else sound_play(sound_get("v_jump2"));
                }
            }
        }
        break;
    
        case AT_UTILT:
        if (window = 4 && window_timer = 3 && !hitpause)
        {
            if (random_func(1, 1, false) < 0.8)
            {
                if (random_func(2, 1, false) < 0.84)  // words
                {
                    if (random_func(3, 5, true) = 0) sound_play(sound_get("v_could_it_be"));
                    else if (random_func(4, 4, true) = 0) sound_play(sound_get("v_could_it_be"));
                    else if (random_func(5, 3, true) = 0) sound_play(sound_get("v_i_got_it1"));
                    else if (random_func(6, 2, true) = 0) sound_play(sound_get("v_i_got_it2"));
                    else sound_play(sound_get("v_wait"));
                }
                else //not words
                {
                    sound_play(sound_get("v_attack_aha"));
                }
            }
        }
        break;

        case AT_UTILT2:
        if (window = 2 && window_timer = 3 && !hitpause)
        {
            if (random_func(1, 1, false) < 0.7)
            {
                if (random_func(2, 1, false) < 0.6)  // words
                {
                    if (random_func(3, 4, true) = 0) sound_play(sound_get("v_corner1"));
                    else if (random_func(4, 3, true) = 0) sound_play(sound_get("v_corner2"));
                    else if (random_func(5, 2, true) = 0) sound_play(sound_get("v_corner3"));
                    else sound_play(sound_get("v_corner4"));
                }
                else //not words
                {
                    if (random_func(6, 2, true) = 0) sound_play(sound_get("v_attack2"));
                    else sound_play(sound_get("v_attack3"));
                }
            }
        }
        break;
    
        case AT_DTILT:
        if (window = 1 && window_timer = 3 && !hitpause)
        {
            if (random_func(1, 1, false) < 0.4)
            {
                if (random_func(2, 1, false) < 0.7)  // words
                {
                    if (random_func(3, 2, true) = 0) sound_play(sound_get("v_dspecial_is_this"));
                    else sound_play(sound_get("v_dspecial_leads"));

                }
                else //not words
                {
                    sound_play(sound_get("v_attack1"));
                }
            }
        }
        break;
    
        case AT_DTILT2:
        if (window = 1 && window_timer = 5 && !hitpause)
        {
            if (random_func(1, 1, false) < 0.6)
            {
                if (random_func(2, 1, false) < 0.5)  // words
                {
                    if (random_func(3, 4, true) = 0) sound_play(sound_get("v_corner1"));
                    else if (random_func(4, 3, true) = 0) sound_play(sound_get("v_corner2"));
                    else if (random_func(5, 2, true) = 0) sound_play(sound_get("v_corner3"));
                    else sound_play(sound_get("v_corner4"));
                }
                else //not words
                {
                    if (random_func(6, 2, true) = 0) sound_play(sound_get("v_attack2"));
                    else sound_play(sound_get("v_attack3"));
                }
            }
        }
        break;
    
        case AT_DATTACK:
        if (window = 1 && window_timer = 4 && !hitpause)
        {
            if (random_func(1, 1, false) < 0.7)
            {
                sound_play(sound_get("v_dattack_trip"));
            }
        }
        break;
    
        case AT_NAIR:
        case AT_NAIR2:
        if (window = 1 && window_timer = 5 && !hitpause)
        {
            sound_play(sound_get("v_nair"));
        }
        break;
    
        case AT_FAIR:
        if (window = 1 && window_timer = 4 && !hitpause)
        {
            if (random_func(1, 1, false) < 0.7)
            {
                if (random_func(2, 1, false) < 0.7)  // words
                {
                    if (random_func(3, 3, true) = 0) sound_play(sound_get("v_i_have_you_now"));
                    else if (random_func(4, 2, true) = 0) sound_play(sound_get("v_explain_this"));
                    else sound_play(sound_get("v_look_at_this"));

                }
                else //not words
                {
                    if (random_func(5, 2, true) = 0) sound_play(sound_get("v_attack2"));
                    else sound_play(sound_get("v_attack3"));
                }
            }
        }
        break;

        case AT_FAIR2:
        if (window = 1 && window_timer = 5 && !hitpause)
        {
            if (random_func(1, 1, false) < 0.7)
            {
                if (random_func(2, 1, false) < 0.7)  // words
                {
                    if (random_func(3, 3, true) = 0) sound_play(sound_get("v_i_have_you_now"));
                    else if (random_func(4, 4, true) = 0) sound_play(sound_get("v_corner1"));
                    else if (random_func(5, 3, true) = 0) sound_play(sound_get("v_corner2"));
                    else if (random_func(6, 2, true) = 0) sound_play(sound_get("v_corner3"));
                    else sound_play(sound_get("v_corner4"));
                }
                else //not words
                {
                    if (random_func(7, 2, true) = 0) sound_play(sound_get("v_attack2"));
                    else sound_play(sound_get("v_attack3"));
                }
            }
        }
        break;
    
        case AT_BAIR:
        if (window = 1 && window_timer = 3 && !hitpause)
        {
            if (random_func(1, 1, false) < 0.7)
            {
                if (random_func(2, 1, false) < 0.7)  // words
                {
                    if (random_func(3, 7, true) = 0) sound_play(sound_get("v_i_got_it3"));
                    else if (random_func(4, 6, true) = 0) sound_play(sound_get("v_ill_turn_things_around"));
                    else if (random_func(5, 5, true) = 0) sound_play(sound_get("v_take_that"));
                }
                else //not words
                {
                    if (random_func(9, 2, true) = 0) sound_play(sound_get("v_attack2"));
                    else sound_play(sound_get("v_attack3"));
                }
            }
        }
        break;
    
        case AT_BAIR2:
        if (window = 1 && window_timer = 2 && !hitpause)
        {
            if (random_func(1, 1, false) < 0.7)
            {
                if (random_func(2, 1, false) < 0.7)  // words
                {
                    if (random_func(3, 5, true) = 0) sound_play(sound_get("v_take_that"));
                    else if (random_func(4, 4, true) = 0) sound_play(sound_get("v_corner1"));
                    else if (random_func(5, 3, true) = 0) sound_play(sound_get("v_corner2"));
                    else if (random_func(6, 2, true) = 0) sound_play(sound_get("v_corner3"));
                    else sound_play(sound_get("v_corner4"));

                }
                else //not words
                {
                    if (random_func(7, 2, true) = 0) sound_play(sound_get("v_attack2"));
                    else sound_play(sound_get("v_attack3"));
                }
            }
        }
        break;

        case AT_UAIR2:
        if (window = 1 && window_timer = 5 && !hitpause)
        {
            if (random_func(1, 1, false) < 0.7)
            {
                if (random_func(2, 1, false) < 0.6)  // words
                {
                    if (random_func(3, 4, true) = 0) sound_play(sound_get("v_corner1"));
                    else if (random_func(4, 3, true) = 0) sound_play(sound_get("v_corner2"));
                    else if (random_func(5, 2, true) = 0) sound_play(sound_get("v_corner3"));
                    else sound_play(sound_get("v_corner4"));
                }
                else //not words
                {
                    if (random_func(6, 2, true) = 0) sound_play(sound_get("v_attack2"));
                    else sound_play(sound_get("v_attack3"));
                }
            }
        }
        break;
    
        case AT_DAIR:
        if (window = 1 && window_timer = 2 && !hitpause)
        {
            sound_play(sound_get("v_dair"));
        }
        break;
    
        case AT_DAIR2:
        if (window = 1 && window_timer = 8 && !hitpause)
        {
            if (random_func(1, 1, false) < 0.7)
            {
                if (random_func(2, 1, false) < 0.7)  // words
                {
                    if (random_func(3, 5, true) = 0) sound_play(sound_get("v_take_this"));
                    else if (random_func(4, 4, true) = 0) sound_play(sound_get("v_corner1"));
                    else if (random_func(5, 3, true) = 0) sound_play(sound_get("v_corner2"));
                    else if (random_func(6, 2, true) = 0) sound_play(sound_get("v_corner3"));
                    else sound_play(sound_get("v_corner4"));

                }
                else //not words
                {
                    if (random_func(7, 2, true) = 0) sound_play(sound_get("v_attack2"));
                    else sound_play(sound_get("v_attack3"));
                }
            }
        }
        break;

        case AT_FSTRONG:
        if (window = 3 && window_timer = 1 && !hitpause)
        {
            if (random_func(1, 1, false) < 0.8)
            {
                if (random_func(2, 3, true) = 0) sound_play(sound_get("v_yes_yes_yes"));
                else if (random_func(3, 2, true) = 0) sound_play(sound_get("v_ill_turn_things_around"));
                else sound_play(sound_get("v_i_have_you_now"));
            }
        }
        break;

        case AT_USTRONG:
        if (window = 1 && window_timer = 1 && !hitpause) sound_play(sound_get("v_ustrong_judge1"));
        //if (window = 5 && window_timer = 1 && !hitpause) sound_play(sound_get("v_ustrong_judge2"));
        break;

        case AT_DSTRONG:
        if (window = 3 && window_timer = 1 && !hitpause)
        {
            if (random_func(1, 1, false) < 0.4)
            {
                if (random_func(2, 2, true) = 0) sound_play(sound_get("v_attack2"));
                else sound_play(sound_get("v_attack3"));
            }
        }
        break;

        case AT_NSPECIAL:
        if (window = 1 && window_timer = 17 && !hitpause)
        {
            if (random_func(3, 2, true) = 0) sound_play(sound_get("v_holdit"));
            else sound_play(sound_get("v_holdit2"));
        }
        break;

        case AT_NSPECIAL_AIR:
        if (window = 1 && window_timer = 23 && !hitpause)
        {
            if (random_func(3, 2, true) = 0) sound_play(sound_get("v_holdit"));
            else sound_play(sound_get("v_holdit2"));
        }
        break;

        case AT_NSPECIAL_2:
        if (window = 1 && window_timer = (18-turnabout*5) && !hitpause)
        {
            sound_play(sound_get("v_objection"));
        }
        break;

        case AT_NSPECIAL_2_AIR:
        if (window = 1 && window_timer = (23-turnabout*8) && !hitpause)
        {
            sound_play(sound_get("v_objection"));
        }
        break;
    
        case AT_FSPECIAL:
        if (window = 1 && window_timer = 8 && !hitpause)
        {
            if (random_func(1, 1, false) < 0.8)
            {
                if (random_func(2, 1, false) < 0.85)  // words
                {
                    if (random_func(3, 2, true) = 0) sound_play(sound_get("v_fspecial_here"));
                    else if (random_func(4, 2, true) = 0) sound_play(sound_get("v_stay_back"));
                    else sound_play(sound_get("v_take_this"));

                }
                else //not words
                {
                    sound_play(sound_get("v_attack1"));
                }
            }
        }
        break;
    
        case AT_FSPECIAL_2:
        if (window = 1 && window_timer = 2 && !hitpause)
        {
            if (random_func(1, 1, false) < 0.8)
            {
                if (random_func(2, 5, true) = 0) sound_play(sound_get("v_evidence_for_the_court"));
                else if (random_func(3, 4, true) = 0) sound_play(sound_get("v_i_have_evidence2"));
                else if (random_func(4, 3, true) = 0) sound_play(sound_get("v_explain_this"));
                else if (random_func(5, 2, true) = 0) sound_play(sound_get("v_recognise_this"));
                else sound_play(sound_get("v_i_have_proof"));
            }
        }
        break;


        case AT_DSPECIAL:
        if (window = 1 && window_timer = 2 && !hitpause)
        {
            if (random_func(1, 1, false) < 0.8)
            {
                if (random_func(2, 3, true) = 0) sound_play(sound_get("v_dspecial_leads"));
                else if (random_func(3, 2, true) = 0) sound_play(sound_get("v_dspecial_is_this"));
                else sound_play(sound_get("v_okay"));
            }
        }
        break;

        case AT_EXTRA_1:
        if (window = 1 && window_timer = 1 && !hitpause)
        {
            if (random_func(2, 4, true) = 0) sound_play(sound_get("v_turnabout_bridge1"));
            else if (random_func(3, 3, true) = 0) sound_play(sound_get("v_turnabout_bridge2"));
            else if (random_func(4, 2, true) = 0) sound_play(sound_get("v_turnabout_bridge3"));
            else sound_play(sound_get("v_turnabout_bridge4"));
        }
        break;

    }
}


#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
var dlen;
var dfx;
var dfg;
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx;
if dfg != -1 newdust.fg_sprite = dfg; 
newdust.dust_color = dust_color;
if dir != 0 newdust.spr_dir = dir; 
return newdust;