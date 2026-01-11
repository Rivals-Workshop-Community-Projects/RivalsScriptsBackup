//attack_update.gml
//when we want to program in more complex attacks than what the basic attack scripts do, we come here
//this script runs every frame when the player is in an attack state (PS_ATTACK_GROUND, PS_ATTACK_AIR)

//NOTE: to reffer to a window's window_timer == 0, we must take the last frame of the window before
//		example: if (window == 3 && window_timer == window_end) will reffer to window 4, window_timer 0

//B-reverse - it allows the character to turn in while using specials
//it's seperate from the switch statement because switch statements always take the later instance of that case
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL) trigger_b_reverse();

switch attack{
	/////////////////////////////////////////////// NORMALS ////////////////////////////////////////////////
	case AT_FTILT:
		if (!hitpause && has_hit){
		can_jump = true;
	}
	case AT_FSTRONG:
		if window == 5 && window_timer == 17 sound_play(sound_get("glock_02"));
	break;
	case AT_USTRONG:
		case AT_USTRONG:
		can_move = false;
		if window >= 3 hud_offset = lerp(hud_offset, 180, 0.3);
		if my_grab_id{
			if !hitstop{
				my_grab_id.hurt_img = 4;
				my_grab_id.hitstun = 20;
				my_grab_id.x = lerp(my_grab_id.x, x + ((0 + ((window_timer + window == 4? 0:6) * 4)) * spr_dir), 0.2);
				my_grab_id.y = lerp(my_grab_id.y, y + -60 - ((window_timer + window == 4? 0:6) * 4), 0.2);
			}
			if window == 6{
				my_grab_id = noone;
			}
		}
	break;
	case AT_UAIR:
		if !(window == 1 && window_timer < 6) && !(window == 3 && window_timer > 4) hud_offset = lerp(hud_offset, 130, 0.3);
	break;
	case AT_DAIR:
		if window == 1 && window_timer == 6 sound_play(asset_get("sfx_swipe_medium2"));
	break;
	/////////////////////////////////////////////// SPECIALS ///////////////////////////////////////////////
	case AT_NSPECIAL:
		switch window{
			case 1:
				mask_array = [];
			break;
			case 2:
				nspecial_angled = up_down;
				set_window_value(attack, 2, AG_WINDOW_ANIM_FRAME_START, 4 + (nspecial_angled * 5));
				set_window_value(attack, 3, AG_WINDOW_ANIM_FRAME_START, 5 + (nspecial_angled * 5));
				
				nspecial_x = x + ((nspecial_angled? 40:64) * spr_dir);
				nspecial_y = y - (nspecial_angled? 84:50);
				var x_off = -54;
				var y_off = -8;
				
				var interval = nspecial_angled? nspecial_angled_interval:nspecial_interval;
				
				var target = noone;
				var mask = noone;
				
				mask_array = [];
				var i = 0;
				repeat ceil((nspecial_range / (nspecial_angled? 1.4:1)) / interval) + 1{
					mask = create_hitbox(AT_NSPECIAL, (i == 0? 2:3) + (nspecial_angled * 3), nspecial_x + (x_off * spr_dir), nspecial_y + y_off);
					mask_array[i / interval] = [mask.mask_index, mask.x, mask.y];
					with pHurtBox{
						if !target && place_meeting(x, y, mask) && mask.orig_player_id != playerID && !playerID.invincible{
							target = self;
							other.nspecial_x = x;
							other.nspecial_y = y - round(playerID.char_height / 2);
							break;
						}
					}
					with mask{
						if !target && place_meeting(x, y, asset_get("par_block")){
							target = place_meeting(x, y, asset_get("par_block"));
							other.nspecial_x += interval * other.spr_dir;
							other.nspecial_y -= interval * other.nspecial_angled;
							break;
						}
					}
					
					if target break;
					else{
						i += interval;
						nspecial_x += interval * spr_dir;
						nspecial_y -= interval * nspecial_angled;
					}
				}
				
				if !special_down{
					move_cooldown[AT_NSPECIAL] = 45
					create_hitbox(attack, 1, nspecial_x, nspecial_y);
					spawn_hit_fx(nspecial_x, nspecial_y, nspecial_shot);
					set_window(3);
				}
				//else if shield_pressed set_window(4);
				else window_timer--;
			break;
			//case 3:
			//	set_window_value(attack, window, AG_WINDOW_GOTO, special_pressed || special_down? 2:4);
			//	mask_array = [];
			break;
		}
	break;
	case AT_FSPECIAL: case AT_USPECIAL:
		if window < 3{
			can_move = true;
			can_fast_fall = false;
		}
		if window == (3 - attack == AT_FSPECIAL? 1:2) can_wall_jump = true;
	break;
	case AT_FSPECIAL_2: //grab
		can_fast_fall = false;
		if my_grab_id{
			if !hitstop{
				my_grab_id.hurt_img = 2;
				my_grab_id.hitstop = 20;
				my_grab_id.x = lerp(my_grab_id.x, x + (32 * spr_dir), 0.2);
				my_grab_id.y = lerp(my_grab_id.y, y + -40, 0.2);
			}
		}
		if window == 2{
			if (right_down - left_down) == spr_dir || window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) fixed_set_attack(AT_FTHROW);
			else if (right_down - left_down) == -spr_dir fixed_set_attack(AT_NTHROW);
			else if down_down == true fixed_set_attack(AT_DTHROW);
			else if up_down == true fixed_set_attack(AT_UTHROW);
		}
	break;
	case AT_FTHROW: case AT_UTHROW:
		can_fast_fall = false;
		if my_grab_id{
			if !hitstop{
				my_grab_id.hurt_img = 2;
				my_grab_id.hitstop = 20;
				my_grab_id.x = lerp(my_grab_id.x, x + (32 * spr_dir), 0.2);
				my_grab_id.y = lerp(my_grab_id.y, y + -40, 0.2);
			}
		}
	break;
	case AT_NTHROW: //back throw
		can_fast_fall = false;
		if window == 1 && window_timer == 20 sound_play(asset_get("sfx_swipe_medium2"));
		if my_grab_id{
			if !hitstop{
				my_grab_id.hurt_img = 2;
				my_grab_id.hitstop = 20;
				my_grab_id.x = lerp(my_grab_id.x, x + (-32 * spr_dir), 0.2);
				my_grab_id.y = lerp(my_grab_id.y, y + -40, 0.2);
			}
		}
		if window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH){
			attack_end();
			destroy_hitboxes();
			set_state(!free? PS_IDLE:PS_IDLE_AIR);
			spr_dir *= -1;
		}
	break;
	case AT_DTHROW:
		can_fast_fall = false;
		if my_grab_id{
			if !hitstop{
				my_grab_id.hurt_img = 2;
				my_grab_id.hitstop = 20;
				my_grab_id.x = lerp(my_grab_id.x, x + (-16 * spr_dir), 0.2);
				my_grab_id.y = lerp(my_grab_id.y, y + -32 + (abs(window_timer - 8) * 4), 0.2);
			}
		}
		if window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH){
			attack_end();
			destroy_hitboxes();
			set_state(!free? PS_IDLE:PS_IDLE_AIR);
			spr_dir *= -1;
		}
	break;
	case AT_DSPECIAL:
		can_fast_fall = false;
		if window == 2{
			if !special_down set_window(3);
			else{
				set_hitbox_value(attack, 1, HG_DAMAGE, 6 + (window_timer * dspecial_damage_scaling));
				set_hitbox_value(attack, 1, HG_EXTRA_HITPAUSE, 15 + (window_timer * dspecial_stun_scaling));
			}
			if !special_down && left_down spr_dir = -1;
			if !special_down && right_down spr_dir = 1;
		}
	break;
	///////////////////////////////////////////////// OTHER ////////////////////////////////////////////////
	case AT_TAUNT:
		if window == 1 && window_timer <= 6 && shield_pressed{
			fixed_set_attack(AT_TAUNT_2);
		}
	break;
	case AT_TAUNT_2:
		if window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH){
			pencilmode = pencilmode? false:true;
			var p = pencilmode? "_p":"";
			set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("pencil" + p));
			set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt" + p));
			set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair" + p));
			set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair" + p));
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
#define fixed_set_state(state)
{
	set_state(state);
	hurtboxID.sprite_index = hurtbox_spr;
}
#define fixed_set_attack(attack)
{
	set_attack(attack);
	if free && get_attack_value(attack, AG_HURTBOX_AIR_SPRITE) hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_AIR_SPRITE);
	else hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
}