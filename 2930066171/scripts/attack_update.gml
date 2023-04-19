//
switch(attack) {
	case AT_UTILT:
		can_move = false;
		if (window == 1 && window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH)) {
			spawn_base_dust(x, y, "jump", 0)
		}
		if (window == 3 || window == 4) {
			spawn_base_dust(x, y - 8, "waveland", 0)
		}
		//Funny Buster
		/*
		if (window == 2) {
			if (has_hit) {
				vsp = -20
				if (state_timer  >= 24) {
					window = 3;
					window_timer = 0;
				}
			} else {
				if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
					window = 3;
					window_timer = 0;
				}
			}
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
				window_timer -= 1;
			}
		}
		*/
		if (window == 4) {
			if (!free) {
				sound_play(landing_lag_sound);
				spawn_base_dust(x, y, "land", 0)
				window = 5;
				window_timer = 0;
				if (grabbed_player || fspecial_proj) {
					sound_play(asset_get("sfx_ell_explosion_medium"));
					var _dust = spawn_hit_fx( x, y - 40, HFX_MOL_BOOM_NORM);
					_dust.depth -= 2;
					
					create_hitbox(AT_UTILT, 2, x, y - 40);
				}
			} else {
				if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
					window_timer = 0;
				}
			}
		}
		if (grabbed_player != -4) {
			grabbed_player.depth = -100;
			grabbed_player.fall_through = true;
			grabbed_player.hitstun += 1;
			grabbed_player.x = lerp(grabbed_player.x, x + hsp, grab_lerp_speed);
			grabbed_player.y = lerp(grabbed_player.y, y - 80 + vsp, grab_lerp_speed);
		}
		if (window == 2) {
			with pHitBox { //Projectile Grab Code
				if (orig_player == player && player_id == other && type == 1) {
					with pHitBox {
						if (place_meeting(x, y, other) && type == 2 && "chad_dumb" in self) {
							if !(player_id.url == CH_KRAGG || ("chad_cannot_grab" in self) || other.player_id.fspecial_proj == self)  {
								other.player_id.fspecial_proj = self;
								spr_dir = other.player_id.spr_dir;
								player = other.player;
								player_id = other.player;
								sound_play(asset_get("sfx_clairen_nspecial_grab_success"));
								spawn_hit_fx( x, y, 301);
							}
						}
					}
				}
			}
		}
	break;
	case AT_DATTACK:
		can_fast_fall = false;
		if (!hitpause) {
			switch(window) {
				case 1:
					hsp *= .9
				break;
				case 2:
					hsp = spr_dir* 12;
				break;
				case 3:
					if (jump_pressed && !has_hit && free) {
						//hsp = spr_dir * 6;
						//window = 5;
						dash_attack_jc = true;
						window = 4;
						window_timer = 0;
						vsp = -10;
						hsp *= .75;
						djumps += 1;
						if (free) {
							sound_play(djump_sound);
						} else {
							sound_play(jump_sound);
						}
						spawn_base_dust(x, y, "djump", 0)
					}
				break
				case 4:
					hsp *= .99
					if (dash_attack_jc) {
						can_attack = true;
					}
				break
				default:
				
				break;
			}
		}
	break;
	case AT_FSPECIAL:
		if (window == 2) {
			with pHitBox { //Projectile Grab Code
				if (orig_player == player && player_id == other && type == 1) {
					with pHitBox {
						if (place_meeting(x, y, other) && type == 2 && "chad_dumb" in self) {
							if !(player_id.url == CH_KRAGG || ("chad_cannot_grab" in self) || other.player_id.fspecial_proj == self) {
								other.player_id.fspecial_proj = self;
								spr_dir = other.player_id.spr_dir;
								player = other.player;
								sound_play(asset_get("sfx_clairen_nspecial_grab_success"));
								spawn_hit_fx( x, y, 301);
								with (other.player_id) {
									attack_end();
									set_attack(AT_FSPECIAL_2);
								}
							}
						}
					}
				}
			}
		}
	break;
	case AT_NSPECIAL:
		/*
		//Wave Bounce
		if (window_timer <= 3) {
			if ((right_pressed && spr_dir == -1) || (left_pressed && spr_dir == 1)) {
				spr_dir *= -1
				hsp *= -1
			}
		}
		*/
		if (!hitpause) {
			if (window == 1 && window_timer <= 12) {
				if (inital_dir == spr_dir) {
					if ((spr_dir == 1 && left_hard_pressed) || (spr_dir == -1 && right_hard_pressed)) {
						spr_dir *= -1;
						hsp *= -1
					}
				}
			}
			if (window == 1 && free) {
				vsp -= .3
				hsp *= .9
			}
			if (window == 2) {
				vsp = 0;
				hsp = 0;
			}
			if (window == 3 && window_timer == 1) {
				vsp = -10;
				hsp = spr_dir * -10;
			}
		}
		move_cooldown[AT_NSPECIAL] = 9999;
	break;
	case AT_JAB:
		was_parried = false;
	break;
	case AT_FSPECIAL_2:
		can_fast_fall = false;
		if (window_timer == get_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH) ) {
			if (up_down || up_strong_down || up_stick_down) {
				set_attack(AT_UTHROW);
			} else if (down_down || down_strong_down || down_stick_down) {
				set_attack(AT_DTHROW);
			} else if ((spr_dir == -1 && (right_down|| right_strong_down || right_stick_down)) || (spr_dir == 1 && (left_down || left_strong_down || left_stick_down))) {
				set_attack(AT_NTHROW);
			} else {
				set_attack(AT_FTHROW);
			}
		}
		if ((spr_dir == 1 && (right_pressed || right_strong_pressed || right_stick_pressed)) || (spr_dir == -1 && (left_pressed || left_strong_pressed || left_stick_pressed))) { //Forward Throw
			set_attack(AT_FTHROW);
		}
		if ((spr_dir == -1 && (right_pressed || right_strong_pressed || right_stick_pressed)) || (spr_dir == 1 && (left_pressed || left_strong_pressed || left_stick_pressed))) { //Back Throw
			set_attack(AT_NTHROW);
		}
		if (down_pressed || down_strong_pressed || down_stick_pressed) { //DownThrow
			set_attack(AT_DTHROW);
		}
		if (up_pressed || up_strong_pressed || up_stick_pressed) { //DownThrow
			set_attack(AT_UTHROW);
		}
	break;
	case AT_USPECIAL:
		if ((window == 1 && window_timer == 3) && grounded_uspecial) {
			invincible = true;
			invince_time = 3;
		}
		if (!free && window != 1) {
			set_state(PS_PRATFALL);
		}
		if (window >= 3) {
			can_wall_jump = true;
		}
		can_fast_fall = false;
	break;
	case AT_NAIR:
	if (!hitpause && (image_index % 2 == 0)) {
		with pHitBox {
			if (player_id == other.id && hbox_num = 1 && attack == AT_NAIR) {
				for (i = 0; i < 20; i++) {
					can_hit[i] = 1;
				}
			}
		}
	}
	break;
	case AT_FSTRONG:
		if (((window == 4 || window == 5) && !free) || (window == 3 && !hitpause && has_hit)) {
			destroy_hitboxes();
			window = get_attack_value(attack, AG_NUM_WINDOWS);
			window_timer = 0;
		}
		if (has_hit && !hitpause) {
			attack_end();
			destroy_hitboxes();
			set_attack(AT_FSTRONG_2);
		}
	break;
	case AT_DSPECIAL:
		move_cooldown[attack] = 30;
		if (!hitpause && window != 1) {
			can_wall_jump = true;
		}
		if (window == 1) {
			if window_timer <= 6 {
				vsp = -15;
				hsp = spr_dir * 10;
			} else {
				vsp = 0;
				hsp = 0;
			}
		}
		if (window == 2) {
			vsp = 0;
			hsp = 0;
		}
		if (window == 3) {
			if !hitpause {
				//spawn_base_dust(x, y - 8, "waveland", 0)
				spawn_hit_fx( x, y, 13); //DO NOT PUT 292 AS THE NUMBER
				if vsp < 21 { 
					vsp += 3;
				} else {
					vsp = 21;
				}
			}
			if (free && !has_hit) {
				if (window_timer == 6) {
					window_timer = 0;
				}
			} else {
				move_cooldown[AT_NSPECIAL] = 0
				djumps = 0 ;
				destroy_hitboxes();
				if (!free) {
					window = 4;
					window_timer = 0;
				} else {
					window = 5;
					window_timer = 0;
				}
			}
		}
		if (window == 4 || window == 5) {
			if (!free && window_timer == 1) {
				sound_play(asset_get("sfx_blow_weak1"));
				spawn_base_dust(x, y, "waveland", 0);
				spawn_hit_fx( x, y, 301);
			}
			if (free && has_hit) {
				if window_timer < get_window_value(attack, window, AG_WINDOW_LENGTH) {
					vsp = 0;
					hsp = 0;
				} else {
					vsp = -6;
				}
			}
		}

	break;
	default:
	
	break;
}
//Pre-emptive rune code
/*
if (attack != AT_FSPECIAL && fspecial_proj != -4) {
	if (instance_exists(fspecial_proj)) {
		switch(attack) {
			case AT_FTHROW: //Forward Throw
				fspecial_proj.hsp = lengthdir_x(spr_dir * proj_throw_speed ,get_hitbox_value( attack, 1, HG_ANGLE ));
				fspecial_proj.vsp = lengthdir_y(proj_throw_speed , get_hitbox_value( attack, 1, HG_ANGLE ));
			break;
			case AT_NTHROW: //Back Throw
				fspecial_proj.hsp = lengthdir_x(spr_dir * proj_throw_speed , get_hitbox_value( attack, 1, HG_ANGLE ));
				fspecial_proj.vsp = lengthdir_y(proj_throw_speed , get_hitbox_value( attack, 1, HG_ANGLE ));
			break;
			case AT_DTHROW: //Down Throw
				fspecial_proj.hsp = lengthdir_x(spr_dir * proj_throw_speed , get_hitbox_value( attack, 1, HG_ANGLE ));
				fspecial_proj.vsp = lengthdir_y(proj_throw_speed , get_hitbox_value( attack, 1, HG_ANGLE ));
			break;
		}
			fspecial_proj.spr_dir = spr_dir;
		switch(attack) {
			case AT_FTHROW: //Forward Throw
				fspecial_proj.x = x + spr_dir * 64 + hsp;
				fspecial_proj.y = y - 8 + vsp;
				fspecial_proj.hsp = lengthdir_x(spr_dir * proj_throw_speed , get_hitbox_value( attack, 1, HG_ANGLE ));
				fspecial_proj.vsp = lengthdir_y(proj_throw_speed , get_hitbox_value( attack, 1, HG_ANGLE ));
			break;
			case AT_NTHROW: //Back Throw
				fspecial_proj.x = lerp(fspecial_proj.x, x + spr_dir * -64 + hsp, grab_lerp_speed);
				fspecial_proj.y = lerp(fspecial_proj.y, y - 88 + vsp, grab_lerp_speed);
				fspecial_proj.hsp = lengthdir_x(spr_dir * proj_throw_speed , get_hitbox_value( attack, 1, HG_ANGLE ));
				fspecial_proj.vsp = lengthdir_y(proj_throw_speed , get_hitbox_value( attack, 1, HG_ANGLE ));
			break;
			case AT_DTHROW: //Down Throw
				if (window_timer <= 12) {
					fspecial_proj.x = lerp(fspecial_proj.x, x + spr_dir * -24 + hsp, grab_lerp_speed);
					fspecial_proj.y = lerp(fspecial_proj.y, y - 120 + vsp, grab_lerp_speed);
				} else {
					fspecial_proj.x = x + spr_dir * 48 + hsp;
					fspecial_proj.y = y - 48 + vsp;
				}
				fspecial_proj.hsp = lengthdir_x(spr_dir * proj_throw_speed , get_hitbox_value( attack, 1, HG_ANGLE ));
				fspecial_proj.vsp = lengthdir_y(proj_throw_speed , get_hitbox_value( attack, 1, HG_ANGLE ));
			break;
			case AT_UTHROW: //Forward Throw
				if (window_timer <= 5) {
					fspecial_proj.x = lerp(fspecial_proj.x, x + spr_dir * 32 + hsp, grab_lerp_speed);
					fspecial_proj.y = lerp(fspecial_proj.y, y - 40 + vsp, grab_lerp_speed);
				} else {
					fspecial_proj.x = x + spr_dir * -8 + hsp;
					fspecial_proj.y = y - 120 + vsp;
				}
				fspecial_proj.hsp = lengthdir_x(spr_dir * proj_throw_speed , get_hitbox_value( attack, 1, HG_ANGLE ));
				fspecial_proj.vsp = lengthdir_y(proj_throw_speed , get_hitbox_value( attack, 1, HG_ANGLE ));
			break;
			default: //Grab
				fspecial_proj.x = lerp(fspecial_proj.x, x + spr_dir * 64 + hsp, grab_lerp_speed);
				fspecial_proj.y = lerp(fspecial_proj.y, y - 48 + vsp, grab_lerp_speed);
			break;
		}
		if ((attack == AT_FTHROW || attack = AT_UTHROW || attack == AT_DTHROW || attack == AT_NTHROW) && window == 2) {
			fspecial_proj.hitbox_timer = 0;
			if ("chad_dumb" in fspecial_proj) { //Dumbell catch
				fspecial_proj.grounds = 2;
				fspecial_proj.grav = 0;
				fspecial_proj.active = true;
				for (i = 0; i < 20; i++) {
					fspecial_proj.can_hit[i] = 1;
				}
			}
			fspecial_proj = -4 
		}
	}
}
*/
	
//SuperSonic dust function
#define spawn_base_dust {
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
}