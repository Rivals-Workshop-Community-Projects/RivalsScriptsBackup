//attack_update.gml
//when we want to program in more complex attacks than what the basic attack scripts do, we come here
//this script runs every frame when the player is in an attack state (PS_ATTACK_GROUND, PS_ATTACK_AIR)

//NOTE: to reffer to a window's window_timer == 0, we must take the last frame of the window before
//		example: if (window == 3 && window_timer == window_end) will reffer to window 4, window_timer 0

//B-reverse - it allows the character to turn in while using specials
//it's seperate from the switch statement because switch statements always take the later instance of that case

if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL) trigger_b_reverse();

switch (attack){
	/////////////////////////////////////////////// NORMALS //////////////////////////////////////////////////
	case AT_FTILT:
	break;
	
	case AT_UTILT:
		if (window <= window_last) hud_offset = lerp(hud_offset, 250, 0.4); // put hud away
	break;
	
	case AT_FSTRONG:
		if window == 3 && window_timer == 15 && !hitpause hsp = 6 * spr_dir;
	break;
	
	case AT_DSTRONG:
		if window == 3 && window_timer == 3 sound_play(asset_get("sfx_clairen_spin"));
	break;
	
	case AT_USTRONG:
		if (window > 2 && window <= window_last) hud_offset = lerp(hud_offset, 250, 0.2); // put hud away
	break;
	
	case AT_NAIR:
		if window == 1 && window_timer == 13 sound_play(asset_get("sfx_clairen_spin"));
	break;
	
	case AT_BAIR:
		if window == 1 && window_timer == 1 sound_play(asset_get("sfx_clairen_swing_weak"));
	break;
	
	case AT_UAIR:
		if window < window_last hud_offset = lerp(hud_offset, 250, 0.2); // put hud away
	break;
	
	/////////////////////////////////////////////// SPECIALS /////////////////////////////////////////////////
	case AT_NSPECIAL: //grab
		can_move = false; //lock player's left-right movement
		if (window == 4){
			hsp = 0;
			vsp = 0;
		}

		switch (window){
			case 1: //var reset
				if (window_timer == 1){
					//if we didn't save the charge while charing and got hit it will reset our charge
					my_grab_id = noone;
				}
			break;
			case 2: //grab
				if my_grab_id != noone && !hitpause{
					window = 4;
					window_timer = 0;
				}
			break;
			case 4: //spin
				if my_grab_id != noone{
					my_grab_id.x = window_timer <= 4? ease_sineInOut(my_grab_id.x, x + 100 * spr_dir, window_timer, 4):ease_sineInOut(my_grab_id.x, x + round(sin((window_timer + 4) / 3) * (window_timer <= 12? 150:100) * spr_dir), window_timer, get_window_value(attack, window, AG_WINDOW_LENGTH));
					my_grab_id.y = window_timer <= 4? ease_sineInOut(my_grab_id.y, y, window_timer, 4):ease_sineInOut(my_grab_id.y, y - round(sin((window_timer + 8) / 3) * 32), state_timer, get_window_value(attack, window, AG_WINDOW_LENGTH));
					my_grab_id.spr_dir = sign(x - my_grab_id.x);
				}
				
				if window_timer % 15 == 4{
					sound_play(asset_get("sfx_swipe_heavy1"));
				}
				
				if window_timer == 20 && right_down - left_down == -spr_dir{
					window = 6;
					window_timer = 0;
				}
			break;
			case 5:
				if my_grab_id != noone{
					my_grab_id.x = ease_sineInOut(my_grab_id.x, x + (get_hitbox_value(attack, 3, HG_HITBOX_X) * spr_dir), window_timer, get_hitbox_value(attack, 3, HG_WINDOW_CREATION_FRAME) + get_hitbox_value(attack, 3, HG_LIFETIME));
					my_grab_id.y = ease_sineInOut(my_grab_id.y, y + get_hitbox_value(attack, 3, HG_HITBOX_Y), window_timer, get_hitbox_value(attack, 3, HG_WINDOW_CREATION_FRAME) + get_hitbox_value(attack, 3, HG_LIFETIME));
					if window_timer == get_hitbox_value(attack, 3, HG_WINDOW_CREATION_FRAME) + get_hitbox_value(attack, 3, HG_LIFETIME) window_timer -= 2;
				}
			break;
			case 6:
				if my_grab_id != noone{
					if window_timer = 3{
						var e = create_hitbox(attack, 4, x, y);
						e.x_pos = (my_grab_id.x-x);
						e.y_pos = (my_grab_id.y-y) - my_grab_id.char_height/3;
						e.can_hit[@1] = 0;
						e.can_hit[@2] = 0;
						e.can_hit[@3] = 0;
						e.can_hit[@4] = 0;
						e.can_hit[@my_grab_id.player] = 1;
					}
					
					my_grab_id.x = ease_sineInOut(my_grab_id.x, x + (get_hitbox_value(attack, 4, HG_HITBOX_X) * spr_dir), window_timer, get_hitbox_value(attack, 4, HG_WINDOW_CREATION_FRAME) + get_hitbox_value(attack, 4, HG_LIFETIME));
					my_grab_id.y = ease_sineInOut(my_grab_id.y, y + get_hitbox_value(attack, 4, HG_HITBOX_Y), window_timer, get_hitbox_value(attack, 4, HG_WINDOW_CREATION_FRAME) + get_hitbox_value(attack, 4, HG_LIFETIME));
					if window_timer == get_hitbox_value(attack, 4, HG_WINDOW_CREATION_FRAME) + get_hitbox_value(attack, 4, HG_LIFETIME) window_timer -= 2;
					
					if window_timer = 3{
						var e = create_hitbox(attack, 4, x, y);
						e.x_pos = (my_grab_id.x-x);
						e.y_pos = (my_grab_id.y-y) - my_grab_id.char_height/3;
					}
				}
				if window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH){
					spr_dir *= -1;
				}
			break;
		}
		break;
	case AT_FSPECIAL: //tether
		if window = 1 && window_timer = 12{
			spawn_hit_fx(x - 10*spr_dir, y - 50, fspec_fire);
			var e = create_hitbox(attack, 1, x - 10*spr_dir, y - 60);
			var dir = down_down - up_down;
			e.vsp = -7 + dir*3;
			e.hsp = (6 - 3*abs(dir))*spr_dir;
        	move_cooldown[AT_FSPECIAL] = 45;
		}
		break;
	case AT_DSPECIAL: //shotgun blast
		var shotgun_time = has_rune("H")? 60:90;
		switch (window){
			case 1:
				if !has_rune("J") shotgun_charge = 0;
			break;
			case 2:
				shotgun_charge = clamp(shotgun_charge + 1.5, 0, shotgun_time);
				if special_down && (shotgun_charge < shotgun_time || has_rune("K")){
					window_timer = 1;
					if has_rune("J") && shield_pressed{
						set_state(PS_PARRY_START);
					}
				}
				else{
					window = 3;
					window_timer = 0;
				}
			break;
			case 4:
				if window_timer == 1{
					shotgun_level = ceil((shotgun_charge + 1) / (shotgun_time / 2));
					for (var f = 0; f < shotgun_level + has_rune("G"); f++){
						set_hitbox_value(attack, shotgun_level, HG_PROJECTILE_VSPEED, (f - ((shotgun_level + has_rune("G") - 1) / 2)) * 4);
						var shotgun_blast = create_hitbox(attack, shotgun_level, x + (32 * spr_dir), y - 32);
					}
					sound_play(sound_get("gaslevel" + string(shotgun_level)), false, false, 1, 1);
					shotgun_charge = 0;
					move_cooldown[AT_DSPECIAL] = 60;
				}
			break;
		}
	case AT_USPECIAL:
		if window == 4 can_wall_jump = true;
	break;


//
	///////////////////////////////////////////////// OTHER ////////////////////////////////////////////////
    //
	case 2: //intro
		if (window <= window_last) hud_offset = lerp(hud_offset, 2000, 0.1); // put hud away
		if (window == window_last && window_timer == window_end-1 && game_time <= 125) state = PS_SPAWN; //correct state to spawn if needed
	break;
	case AT_TAUNT:
		if window == 2{
			if attack_pressed{
				shake_timer = 30;
				sound_play(asset_get("sfx_frog_nspecial_shove"));
				clear_button_buffer(PC_ATTACK_PRESSED);
			}
			if shake_timer{
				window_timer++;
				shake_timer--;
			}
			if taunt_down && window_timer >= 42{	
				window_timer = 0;
			}
			else if (!taunt_down || special_pressed) && state_timer >= 36{
				window = 3;
				window_timer = 0;
				set_window_value(attack, window, AG_WINDOW_GOTO, 5 - special_pressed);
			}
		}
	break;
	case AT_TAUNT_2:
		if window == 2{
			if taunt_down && window_timer >= get_window_value(AT_TAUNT_2, window, AG_WINDOW_LENGTH){
				window_timer = 0;
			}
			else if !taunt_down{
				window = 3;
				window_timer = 0;
			}
		}
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
}