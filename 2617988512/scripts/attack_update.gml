#macro AT_ASTRONG 40;

//B - Reversals
switch (attack)
{
    case AT_NSPECIAL:
    case AT_FSPECIAL:
    case AT_USPECIAL:
    case AT_DSPECIAL:
        trigger_b_reverse();
        break;
}


switch (attack)
{
        case AT_UTILT:
        //if (window == 2 && window_timer < 2) easetimer = 0;
        if (window == 3 && window_timer == 12) char_height = 56;
        if (window == 1 && window_timer < 6 || window == 4)
        {
            easetimer = 0;
            char_height = 56;
        }
        if (window == 2 && window_timer < 4 || window = 1 && window_timer >= 6)
        {
            if (easetimer < 3)
            {
                char_height = ease_quadOut(56, 102, easetimer, 2);
                easetimer++;
            }
        }
        if (window == 3 && window_timer > 2)
        {
            if (easetimer < 10)
            {
                char_height = ease_quadIn(102, 56, easetimer, 10);
                easetimer++;
            }
        }
        if (window = 1 && window_timer = 6 && !hitpause) sound_play(sound_get("bcm_utilt"));
        break;

        case AT_JAB:
        if (has_hit_player && !was_parried)
        {
            if (window > 2 || window = 2 && window_timer > 6)
            {
                move_cooldown[AT_JAB] = 2;
                can_attack = true;
                can_strong = false;
                can_ustrong = false;
                can_special = false;
            }
        }
        if (was_parried && window = 4 && window_timer = 6) was_parried = false;
        //{
        //    iasa_script();
        //    state = PS_IDLE;
        //}
        break;

        case AT_FAIR:

        //selling
        if (window == 1 && window_timer <= 1) 
        {
            sold = false;
            has_sold = false;
        }
        if (sold && has_hit_player && !hitpause)
        {
            hit_player_obj.x += (x+32*spr_dir - hit_player_obj.x)/2.2;
                if (hit_player_obj.free){
                    hit_player_obj.y += (y - hit_player_obj.y)/2.5;
                }
            create_hitbox(AT_FAIR, 2, x, y);
            sold = false;
        }

        break; 

        case AT_USTRONG:
        if (window == 5 && window_timer < 2) easetimer = 0;
        if (window == 6 && window_timer == 12) char_height = 56;
        if (window == 1 && window_timer < 8 || window == 6)
        {
            easetimer = 0;
            char_height = 56;
        }
        if (window == 4 && window_timer < 3 || window == 3 && window_timer > 4)
        {
            if (easetimer < 3)
            {
                char_height = ease_quadOut(56, 90, easetimer, 2);
                easetimer++;
            }
        }
        if (window == 5 && window_timer > 4)
        {
            if (easetimer < 6)
            {
                char_height = ease_quadIn(90, 56, easetimer, 6);
                easetimer++;
            }
        }

        //selling
        if (window == 1 && window_timer <= 1) 
        {
            sold = false;
            has_sold = false;
        }
        if (sold && has_hit_player && !hitpause)
        {   
            hit_player_obj.x += (x+22*spr_dir - hit_player_obj.x)/2.3;
                if (hit_player_obj.free){
                    hit_player_obj.y += (y-40 - hit_player_obj.y)/1.8;
                }
            create_hitbox(AT_USTRONG, 4, x, y);
            sold = false;
        }

        if (window = 3 && window_timer = 6 && !hitpause) sound_play(asset_get("sfx_blow_heavy2"));
        if (window = 3 && window_timer = 6 && !hitpause) shake_camera(5, 6);
        break;

        case AT_FSTRONG:

        //selling
        if (window == 1 && window_timer <= 1) 
        {
            sold = false;
            has_sold = false;
        }
        if (sold && has_hit_player && !hitpause)
        {
            hit_player_obj.x += (x+40*spr_dir - hit_player_obj.x)/1.8;
                if (hit_player_obj.free){
                    hit_player_obj.y += (y - hit_player_obj.y)/2.5;
                }
            create_hitbox(AT_FSTRONG, 3, x, y);
            sold = false;
        }

        if (window = 3 && window_timer = 9 && !hitpause) sound_play(asset_get("sfx_blow_medium3"));
        if (window = 3 && window_timer = 9 && !hitpause) shake_camera(4, 5);
        break;

        case AT_ASTRONG:
        //if (!free)
        //{
        //        iasa_script();
        //        set_state(PS_LANDING_LAG);
        //}
        move_cooldown[AT_ASTRONG] = 15;
        break;

        case AT_NSPECIAL:
        can_fast_fall = false;
        move_cooldown[AT_NSPECIAL] = 15;
        break;

        case AT_USPECIAL:
        can_fast_fall = false;
        can_move = false;
        if (window = 1 && window_timer = 1) 
        {
            uspecial_angle = 90;
            //sprite_change_offset("uspecial", 96/2, 126/2, true);
            //draw_y = 0;
        }
        if (window = 2 || window = 3 || window = 1 && window_timer = 3)
        {
            if (window = 2)
            {
                uspecial_angle = joy_dir;
                spr_angle = uspecial_angle - 90;
            }
            if (window = 3)
            {
                if (window_timer = 1)
                {
                    hsp = lengthdir_x(11, uspecial_angle);
                    vsp = lengthdir_y(11, uspecial_angle);
                }
                if (vsp != 0 || hsp != 0 || !hitpause || !has_hit) spr_angle = -(radtodeg(arctan2(vsp, hsp)) + 90); 
                else spr_angle = -(radtodeg(arctan2(old_vsp, old_hsp)) + 90); 
                //changes angle based on the direction hes flying, for my small ass brain that shoulve been harder to calculate
            }
            if (window = 1 && window_timer = 3) spr_angle = uspecial_angle - 90;
            //sprite_change_offset("uspecial", 96/2, 96/2, true);
        } 
        if (window = 4 || window = 3 && window_timer = 20) 
        {
            //draw_y = 0;
            spr_angle = 0;
            //sprite_change_offset("uspecial", 96/2, 126/2, true);
        }
        if (window > 1) 
        {
            if (!free)
            {
                iasa_script();
                set_state(PS_PRATLAND);
            }
        }
        if ((window = 4 || window = 3 && window_timer > 12) && money >= 200 && special_pressed && (!left_down && !right_down && !up_down && !down_down))
        {
            iasa_script();
            set_attack(AT_NSPECIAL);
            sell_vfx = spawn_hit_fx(x, y - char_height/2, sell_fx);
            sell_vfx.depth = depth - 1;	
            sell_vfx.spr_dir = 1;
            money -= 200
            money_lost = 200;
            money_lost_gui_timer = 80;
            sound_play(sound_get("bcm_sell"));
        }
        if (window >= 3) can_wall_jump = true;
        break;

        case AT_DSPECIAL:
        if (window = 1 && window_timer = 1) 
        {
            dspecial_spins = 1;
            super_armor = false;
            dspecial_hit = false;
        }
        if (window = 2) 
        {
            if (window_timer >= 18 && dspecial_spins < dspecial_spins_max && special_down)
            {
                window_timer = 0;
                dspecial_spins++;
            }
            if (left_down && hsp > -2.5)
            {
                hsp--;
            }
            if (right_down && hsp < 2.5)
            {
                hsp++;
            }
            can_move = false;
            super_armor = true;
        }
        if (window >= 3) 
        {
            super_armor = false;
        }
        if ((window = 2 || window = 3) && dspecial_hit = true)
        {
                if (money >= 200 && special_pressed && (!left_down && !right_down && !up_down && !down_down))
                {
                        iasa_script();
                        set_attack(AT_NSPECIAL);
                        sell_vfx = spawn_hit_fx(x, y - char_height/2, sell_fx);
                        sell_vfx.depth = depth - 1;	
                        sell_vfx.spr_dir = 1;
                        money -= 200
                        money_lost = 200;
                        money_lost_gui_timer = 80;
                        sound_play(sound_get("bcm_sell"));
                }
        }
        move_cooldown[AT_DSPECIAL] = 20;
        break;

        case AT_FSPECIAL:
        can_fast_fall = false;
        if (!free)
        {
                iasa_script();
                set_state(PS_LANDING_LAG);
        }
        if (window = 2) 
        {
            if (hsp > 6) hsp = 5;
            if (hsp < -6) hsp = -5;
        }
        if (window == 1 && window_timer == 1)
        { 
         	grabbed_player_obj = noone; 
        	grabbed_player_relative_x = 0;
        	grabbed_player_relative_y = 0;
        }
        break;

        case AT_FSPECIAL_2:
        can_fast_fall = false;
        if (window < 4) can_move = false;
        hurtboxID.sprite_index = get_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE);
	if (instance_exists(grabbed_player_obj)) {
		
		//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
		if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
		else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }
	
		else {
			//keep the grabbed player in hitstop until the grab is complete.
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitpause = true;
			
			//if this is the first frame of a window, store the grabbed player's relative position.
			if (window_timer <= 1) {
				grabbed_player_relative_x = grabbed_player_obj.x - x;
				grabbed_player_relative_y = grabbed_player_obj.y - y;
			}

			if (window = 2 && (window_timer = 6 || window_timer = 11 )) {
				grabbed_player_relative_x = grabbed_player_obj.x - x;
				grabbed_player_relative_y = grabbed_player_obj.y - y;
			}
			 
			//on the first window, pull the opponent into the grab.
			if (window == 1) { 
				var pull_to_x = 24 * spr_dir;
				var pull_to_y = 0;
				
				//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
				grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
			}

			if (window == 2 && window_timer <= 5) { 
				var pull_to_x = -6 * spr_dir;
				var pull_to_y = 16;
				
				//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH)/4;
				grabbed_player_obj.x = x + ease_quadOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
				grabbed_player_obj.y = y + ease_cubeOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
			}

			if (window == 2 && window_timer > 5 && window_timer <= 10) { 
				var pull_to_x = -16 * spr_dir;
				var pull_to_y = 6;
				
				//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH)/4;
				grabbed_player_obj.x = x + ease_cubeOut( grabbed_player_relative_x, pull_to_x, window_timer-5, window_length);
				grabbed_player_obj.y = y + ease_quadOut( grabbed_player_relative_y, pull_to_y, window_timer-5, window_length);
			}

			if (window == 2 && window_timer > 10) { 
				var pull_to_x = -2 * spr_dir;
				var pull_to_y = -12;
				
				//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH)/2;
				grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer-10, window_length);
				grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer-10, window_length);
			}
		}
	}
        if (window > 3 && !free)
        {
                iasa_script();
                set_state(PS_LANDING_LAG);
        }
        break;
   
        case AT_TAUNT:
        if (window = 1 && window_timer = 1) 
        {
            taunt_num = random_func(0, 15, true);
            taunt_hit = false;
            switch (taunt_num)
            {
                case 0:
                taunt_line1 = "Modular";
                taunt_line2 = "Scaleablilty!";
                break;

                case 1:
                taunt_line1 = "Seamless";
                taunt_line2 = "Integration!";
                break;

                case 2:
                taunt_line1 = "Proactive";
                taunt_line2 = "Branding!";
                break;

                case 3:
                taunt_line1 = "Incentivised";
                taunt_line2 = "Overtime!";
                break;

                case 4:
                taunt_line1 = "Operational";
                taunt_line2 = "Innovation!";
                break;

                case 5:
                taunt_line1 = "Core";
                taunt_line2 = "Competency!";
                break;

                case 6:
                taunt_line1 = "Visualising";
                taunt_line2 = "Monetisation!";
                break;

                case 7:
                taunt_line1 = "Corporate";
                taunt_line2 = "Methodology!";
                break;

                case 8:
                taunt_line1 = "Buy Ludosity";
                taunt_line2 = "Stocks!";
                break;

                case 9:
                taunt_line1 = "Leveraging";
                taunt_line2 = "Adaptability!";
                break;

                case 10:
                taunt_line1 = "Obfuscated";
                taunt_line2 = "Chicanery!";
                break;

                case 11:
                taunt_line1 = "Motivational";
                taunt_line2 = "Downsizing!";
                break;

                case 12:
                taunt_line1 = "Marketplace";
                taunt_line2 = "Saturation!";
                break;

                case 13:
                taunt_line1 = "Interactive";
                taunt_line2 = "Preformance!";
                break;

                case 14:
                taunt_line1 = "Cross-Platform";
                taunt_line2 = "Transmedia!";
                break;
            }
        }
        if (window = 1 && window_timer = 5)
        {
            sound_play(sound_get("bcm_buy"));
            money += 50;
        }
        if (window >= 3 && window <= 7 && window_timer = 1)
        {
                sound_play(sound_get("bcm_talk"), 0, 0, 1, 1+(random_func(0, 1, false))/2);
        }
        break;

}