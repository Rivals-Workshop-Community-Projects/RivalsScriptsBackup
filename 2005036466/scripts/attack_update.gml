//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_AIR || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_DSPECIAL_2 || attack == AT_USPECIAL){
    trigger_b_reverse();
}

var whiff_time = round(get_window_value(attack, window, AG_WINDOW_LENGTH) * 1.5);

switch(attack){
	case AT_TAUNT:
		switch(window){
			case 1:
				pen_loop_two = 0;
				if !hitpause{
					switch(window_timer){
						case 8:
							penny_taunt_spr 		= asset_get("empty_sprite");
							penny_taunt_spr_white	= asset_get("empty_sprite");
							sound_play(asset_get("sfx_dust_knuckle"), false, noone, .5);
							break;
						case 14:
							sound_play(asset_get("mfx_unstar"), false, noone, .5);
							sound_play(asset_get("sfx_clairen_nspecial_grab_miss"), false, noone, .5);
							sound_play(asset_get("sfx_zetter_fireball_fire"), false, noone, .5);
							if !joy_pad_idle{
								if up_down{
									penny_taunt_spr = sprite_get("taunt_thumbsup");
									penny_taunt_spr_white = sprite_get("taunt_thumbsup_white");
								}
								if down_down{
									penny_taunt_spr = sprite_get("taunt_thumbsdown");
									penny_taunt_spr_white = sprite_get("taunt_thumbsdown_white");
								}
								if left_down{
									penny_taunt_spr = sprite_get("taunt_happy");
									penny_taunt_spr_white = sprite_get("taunt_happy_white");
								}
								if right_down{
									penny_taunt_spr = sprite_get("taunt_angy");
									penny_taunt_spr_white = sprite_get("taunt_angy_white");
								}
							} else {
								if attack_down{
									penny_taunt_spr = sprite_get("taunt_ko");
									penny_taunt_spr_white = sprite_get("taunt_ko_white");
								}
								if strong_down{
									penny_taunt_spr = sprite_get("taunt_shock");
									penny_taunt_spr_white = sprite_get("taunt_shock_white");
								}
								if special_down{
									penny_taunt_spr = sprite_get("taunt_pog");
									penny_taunt_spr_white = sprite_get("taunt_pog_white");
								}
								if jump_down{
									penny_taunt_spr = sprite_get("taunt_okhand");
									penny_taunt_spr_white = sprite_get("taunt_okhand_white");
								}
								if shield_down{
									penny_taunt_spr = sprite_get("taunt_owo");
									penny_taunt_spr_white = sprite_get("taunt_owo_white");
								}
								if (!shield_down and !jump_down and !special_down and !attack_down and !strong_down){
									penny_taunt_spr = sprite_get("taunt_l");
									penny_taunt_spr_white = sprite_get("taunt_l_white");
								}
							}
							break;
					}
				}
				break;
			case 2:
				if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1) and !hitpause{
					if pen_loop_two < 1{
						pen_loop_two++;
						window_timer = 0;
					} else {
						window = 3;
						window_timer = 0;
					}
				}
				break;
		}
		break;
	case AT_JAB:
		if has_hit{
			if backwards_held and attack_pressed{
				trigger_b_reverse();
			}
		}
		break;
	case AT_DATTACK:
		switch(window){
			case 2:
				if has_hit and !was_parried{
					can_ustrong = true;
					if is_strong_pressed(DIR_UP){
						with hit_player_obj{
							hitpause = true;
							hitstop = 6;
						}
					}
				}
				break;
			case 3:
				if (((window_timer == get_window_value(attack, 3, AG_WINDOW_LENGTH) - 1) and has_hit) or (window_timer == whiff_time - 1) and !hitpause){
					if down_down and !was_parried{
						set_state(PS_CROUCH);
						state_timer = 6;
					}
				}
				break;
		}
		break;
	case AT_DSTRONG:
		switch(window){
			case 2:
				if window_timer == 1 and !hitpause{
					spawn_base_dust(x + (8 * spr_dir),y, "land", 0);
				}
				if ((window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH) - 1) and !hitpause){
					sound_play(asset_get("sfx_zetter_downb"));
				}
				break;
		}
		break;
	case AT_DSTRONG_2:
		switch(window){
			case 2:
				if window_timer == 1 and !hitpause{
					spawn_base_dust(x + (8 * spr_dir),y, "land", 0);
				}
				if ((window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH) - 1) and !hitpause){
					sound_play(asset_get("sfx_zetter_downb"));
					sound_play(asset_get("sfx_absa_kickhit"));
				}
				break;
			case 3:
				if ((window_timer == get_window_value(attack, 3, AG_WINDOW_LENGTH) - 1) and !hitpause and !has_hit){
					penny_install = false;
				}
				break;
		}
		break;
	case AT_FSTRONG_2:
	case AT_USTRONG_2:
		switch(window){
			case 2:
				if ((window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH) - 2) and !hitpause){
					sound_play(asset_get("sfx_absa_kickhit"));
				}
				break;
			case 3:
				if ((window_timer == get_window_value(attack, 3, AG_WINDOW_LENGTH) - 1) and !hitpause and !has_hit){
					penny_install = false;
				}
				break;
		}
		break;
	case AT_DAIR:
		switch(window){
			case 3:
				if !hitpause and window_timer == get_window_value(attack, 3, AG_WINDOW_LENGTH) - 1{
					spawn_hit_fx(x, y - 16, vfx_dair);
				}
				break;
		}
		break;
	case AT_NSPECIAL:
		if window > 3{
			can_fast_fall = false;
		}
		switch(window){
			case 2:
				if has_hit_player{

			        grabbedid.invincible = true;
			        grabbedid.x = lerp(grabbedid.x, x + 32 * spr_dir, .6);
			        grabbedid.y = lerp(grabbedid.y, y - 32, .6);
			        grabbedid.spr_dir = -spr_dir;
			        grabbedid.wrap_time = 30;
			        grabbedid.state = PS_WRAPPED;
					// Jump to window 4
					window = 4;
					window_timer = 0;
				}
				break;
			case 4:
				// The PLEASE INPUT COMMAND
		        grabbedid.x = lerp(grabbedid.x, x + 32 * spr_dir, .6);
		        grabbedid.y = lerp(grabbedid.y, y - 32, .6);
				if window_timer < get_window_value(attack, window, AG_WINDOW_LENGTH) - 1{
					switch(spr_dir){
						case -1:
							// Facing Left
							if left_pressed or left_down{
								// Jump to 8
								window = 8;
								window_timer = 0;
							}
							if right_pressed or right_down{
								window = 5;
								window_timer = 0;
							}
							break;
						case 1:
							// Facing Right
							if left_pressed or left_down{
								// Jump to 8
								window = 5;
								window_timer = 0;
							}
							if right_pressed or right_down{
								window = 8;
								window_timer = 0;
							}
							break;
					}
				} else {
					// No input? Just go forward.
					window = 8;
					window_timer = 0;
				}
				break;
			case 5:
				if window_timer < 10{
					grabbedid.x = lerp(grabbedid.x, x - 8 * spr_dir, .25);
				}
				if window_timer > 10 and window_timer < get_window_value(attack, window, AG_WINDOW_LENGTH){
					grabbedid.x = lerp(grabbedid.x, x + 12 * spr_dir, .25);
				}
				if ((window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) and !hitpause){
					grabbedid.x = lerp(grabbedid.x, x - 38 * spr_dir, .25);
					window = 6;
					window_timer = 0;
				}
				break;
			case 6:
				grabbedid.x = lerp(grabbedid.x, x - 38 * spr_dir, .25);
				if ((window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) and !hitpause){
					window = 7;
					window_timer = 0;
				}
				break;
			case 7:
		        grabbedid = noone;
				if ((window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) and !hitpause){
					spr_dir *= -1;
				}
				break;
			case 8:
		        grabbedid.x = lerp(grabbedid.x, x + 64 * spr_dir, .6);
		        grabbedid.y = lerp(grabbedid.y, y - 32, .6);
				if ((window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1) and !hitpause){
					window = 9;
					window_timer = 0;
				}
				break;
			case 9:
		        grabbedid.x = lerp(grabbedid.x, x + 64 * spr_dir, .6);
		        grabbedid.y = lerp(grabbedid.y, y - 32, .6);
				if ((window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1) and !hitpause){
					window = 10;
					window_timer = 0;
				}
				break;
			case 10:
		        grabbedid = noone;
				break;
		}
		break;
	case AT_FSPECIAL:
		switch(window){
			case 3:
				if ((window_timer == get_window_value(attack, 3, AG_WINDOW_LENGTH) - 1) and !hitpause){
					if free{
						hsp = hsp + (-3 * spr_dir)
					}
					create_hitbox(attack, 2, x + (36 * spr_dir), y - 28);
				}
				break;
		}
		break;
	case AT_USPECIAL:
	case AT_USPECIAL_2:
		hsp = clamp(hsp, -4, 4);
		if(window_timer % 4 == 0 and !hitpause and (window > 1 and window < 7)){
			sound_play(asset_get("sfx_propeller_dagger_loop"));
		}
		if vsp > -4.5 and window != 7{
			vsp = lerp(vsp, -4, .5)
		}
		if !free and window > 1{
			attack_end();
			destroy_hitboxes();
			set_state(PS_PRATLAND);
		}
		switch(window){
			case 1:
				move_cooldown[AT_USPECIAL] = 100000;
				if !hitpause and attack == AT_USPECIAL_2{
					switch(window_timer){
						case 9:
							sound_play(asset_get("sfx_absa_singlezap2"));
							break;
						case 11:
							sound_play(asset_get("sfx_absa_jabloop"), true);
							break;
					}
				}
				if shield_pressed and !hitpause{
					sound_stop(asset_get("sfx_absa_jabloop"));
					//create_hitbox(AT_USPECIAL, 1, x + (-4 * spr_dir), y - 88);
					clear_button_buffer(PC_SHIELD_PRESSED);
					attack = AT_EXTRA_1;
					window = 1;
					window_timer = 0;
					if joy_pad_idle{
						hsp = 8 * spr_dir;
						vsp = -4;
					} else {
						if joy_dir > 180 and joy_dir < 360{
							vsp = lengthdir_y(4, joy_dir);
						} else {
							vsp = lengthdir_y(8, joy_dir) - 4;
						}
						hsp = lengthdir_x(8, joy_dir);
					}
				}
				break;
			case 3:
				if !hitpause and attack == AT_USPECIAL_2{
					switch(window_timer){
						case 14:
							sound_stop(asset_get("sfx_absa_jabloop"));
							sound_play(asset_get("sfx_absa_kickhit"));
							break;
					}
				}
				if window_timer == 7 and !hitpause{
					penny_install = false;
				}
				break;
		}
		if window > 1{
			if (((shield_pressed and window != 1) or down_pressed) and window != 7){
				penny_install = false;
				sound_stop(asset_get("sfx_absa_jabloop"));
				create_hitbox(AT_USPECIAL, 1, x + (-4 * spr_dir), y - 88);
				if attack == AT_USPECIAL_2{
					sound_play(asset_get("sfx_ell_cooldown"));
					if !has_hit{
						set_state(PS_PRATFALL);
					}
				} else {
					set_state(PS_PRATFALL);
				}
			}
			can_attack = true;
			can_special = true;
			can_shield = true;
			if attack_pressed or special_pressed and !is_special_pressed(DIR_UP) or shield_pressed or is_strong_pressed(DIR_ANY){
				if window < 6{
					create_hitbox(AT_USPECIAL, 1, x + (8 * spr_dir), y - 88);
				}
				penny_install = false;
				sound_stop(asset_get("sfx_absa_jabloop"));
			}
			can_wall_jump = true;
		}
		break;
	case AT_EXTRA_1:	// Flip Dash
		pen_didairdash = true;
		can_attack = true;
		can_special = true;
		can_shield = true;
		can_wall_jump = true;
		if !free{
			destroy_hitboxes();
			attack_end();
			set_state(PS_PRATLAND);
		}
		break;
	case AT_DSPECIAL:
		move_cooldown[AT_DSPECIAL] = 90;
		penny_autodet = false;
		
		switch(window){
			case 1:
				if (!hitpause and (window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH) - 1)){
					if instance_exists(mine){
						mine.state = 5;
						mine.state_timer = 0;
					}
					mine = instance_create(x, y - 32, "obj_article2");
					mine.player_id = id;
					mine.penny_orig_owner = id;
				}
				break;
		}
		break;
	case AT_DSPECIAL_2:
		switch(window){
			case 1:
				if window_timer == 1 and !hitpause{
					move_cooldown[AT_DSPECIAL] = 120;
					can_fast_fall = false;
		            if ((mine_player.state != PS_TUMBLE and mine_player.state_cat == SC_HITSTUN) or (mine_player.state == PS_TUMBLE and mine_player.state_timer <= 12)) {
		            	penny_autodet = true;
		            } else {
		                penny_autodet = false;
		            }
				}
				break;
			case 2:
			    if window_timer == 1 and !hitpause{
			        if (instance_exists(obj_article2)){
			            with(obj_article2){
			            	if (("pen_c4_charged" in self) and (player_id == other.id)){
					            state = 3;
					            state_timer = 0;
					            sound_play(asset_get("sfx_mol_huge_countdown"));
			            	}
			            }
			        }

			        if opponent_strapped and mine_active == 1{
			            boomtimer = boommax;
			            if (penny_autodet) {
			            	sound_play(asset_get("sfx_mol_huge_countdown"));
			            	boomtimer = 0;
			                goboom = true;
			            } else {
			                goboom = true;
			            }
			        }

			    }

			    if window_timer == 2 and !goboom and mine_active = 1 and !hitpause{
			        mine_active = 0;
			        penny_autodet = false;
			        cooldown_mine = cooldown_mine_max;
					opponent_strapped = false;
					with (oPlayer){
						if id != other.id{
							penny_strapped = false;
						}
					}
					clear_button_buffer(PC_SPECIAL_PRESSED);
			    }
				break;
			/*case 3: //Residual code for cancelling mine timer during endlag of mine detonation. Left here because honestly it could be cool still.
				if special_pressed{
					if opponent_strapped and mine_active == 1 and (boomtimer < boommax and boomtimer > 0){
						sound_stop(c4beepsound);
						sound_play(asset_get("mfx_coin"));
						goboom = false;
						boomtimer = boommax;
						mine_active = 0;
						cooldown_mine = cooldown_mine_max;
					}
				}
      break;*/
		}
  break;
  case AT_DSPECIAL_AIR: //Cancelling opponent mine timer.
    if opponent_strapped and mine_active == 1 and (boomtimer < boommax and boomtimer > 0)
      {
      print_debug("Detonation cancelled.")
      sound_stop(c4beepsound);
      sound_play(asset_get("mfx_coin"));
      goboom = false;
      boomtimer = boommax;
      mine_active = 0;
      cooldown_mine = cooldown_mine_max;
      }
  break;
}

//Supersonic's Base Cast Dust Function
#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
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
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;