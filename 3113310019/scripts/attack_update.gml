// attack_update

//B - Reversals
if (attack == AT_NSPECIAL 
|| attack == AT_FSPECIAL 
|| attack == AT_DSPECIAL 
|| attack == AT_USPECIAL){
    trigger_b_reverse();
}

var exists = false;

with (obj_article1){
    if (player_id == other.id){
        var exists = true;
    }
}

if (attack == AT_JAB){
	if (window == 6) && (special_pressed){
		window = 7;
		window_timer = 0;
	}
	if (window mod 3 == 1 && window_timer == 1){
		spawn_base_dust(x - 16*spr_dir, y, "walk", spr_dir);
	}
}

if (attack == AT_FTILT){
	if (window == 1 && window_timer == 16) && (!free){
		spawn_base_dust(x - 16*spr_dir, y, "dash", spr_dir);
	}
	if !(window == 1 && window_timer < 2){
		if (has_rune("G")){
			if (jump_pressed){
				if (djumps < max_djumps){
					if free{
						djumps += 1;
						spawn_base_dust(x, y, "djump", spr_dir);
						sound_play (asset_get("sfx_jumpair"));
						vsp = -11;
					} else {
						spawn_base_dust(x, y, "jump", spr_dir);
						sound_play (asset_get("sfx_jumpground"));
						vsp = -10;
					}
					clear_button_buffer( PC_JUMP_PRESSED );
				}
			}
		}
	}
}

if (attack == AT_UTILT){
	if (window == 1 && window_timer == 10){
		spawn_base_dust(x + 32*spr_dir, y, "dash", -1*spr_dir);
	}
	if (window == 2 && window_timer == 7){
		spawn_base_dust(x - 48*spr_dir, y, "land", spr_dir);
	}
}

if (attack == AT_DTILT){
	if (window == 1 && window_timer == 8){
		spawn_base_dust(x - 16*spr_dir, y, "dash", spr_dir);
	}
	if (window >= 2){
		if (jump_down && has_hit){
			attack_end();
			set_attack( AT_EXTRA_1 );
			window_timer = 0
			window = 1
			destroy_hitboxes();
			sound_play(asset_get("sfx_jumpground"));
		}
	}
}

if (attack == AT_EXTRA_1){
	hurtboxID.sprite_index = get_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE);
	hsp = clamp(hsp, -5.5, 5.5);
	if (window_timer == 1){
		clear_button_buffer( PC_JUMP_PRESSED );
		spawn_base_dust(x, y, "jump", spr_dir);
		vsp = -8;
		if (left_down && !right_down){
            spr_dir = -1
        }
		if (right_down && !left_down){
            spr_dir = 1
        }
	}
	if (window_timer >= 6){
		iasa_script();
	}
	if (!free && window_timer > 1){
		set_state( PS_LAND );
		window = 1
		window_timer = 0
	}
}

if (attack == AT_DATTACK){
	if (window == 1){
		if (window_timer == 1 && up_down && !right_down && !left_down){
			attack = AT_EXTRA_2;
			swing_throw_type = 1;
		}
		if (window_timer == 10){
			spawn_base_dust(x - 16*spr_dir, y, "dash_start", spr_dir);
		}
	}
	if (window == 2 || window == 3 || window == 4) {
		if (window_timer mod 4 == 3){
			spawn_base_dust(x - 16*spr_dir, y, "dash", spr_dir);
		}
		if (spr_dir > 0 && left_down) || (spr_dir < 0 && right_down){
			spr_dir *= -1;
		}
		if ((up_down && attack_pressed) || special_pressed){
			attack = AT_EXTRA_2;
			swing_throw_type = 2;
		}
		if (has_rune("E")){
			if (!attack_down){
				set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 1);
			}
		}
	}
}

if (attack == AT_EXTRA_2){
	if (window == 1){
		if (window_timer == 10){
			spawn_base_dust(x - 16*spr_dir, y, "dash", spr_dir);
		}
	}
	if (window == 2 || window == 3 || window == 4) {
		if (window_timer == 8){
			spawn_base_dust(x - 16*spr_dir, y, "walk", spr_dir);
		}
	}
}

if (attack == AT_DAIR){
	if (window == 1){ 
		dair_fall_timer = 0;
	}
	if (window == 3){
		if (!hitpause && !hitstop){
			dair_fall_timer++;
		}
		can_wall_jump = true;
		can_fast_fall = false;
		can_move = false;
		if (dair_fall_timer >= 30){
			can_jump = true;
			if (has_airdodge) && (shield_pressed){
				set_state( PS_AIR_DODGE );
				state_timer = 0;
			}
		}
		if (has_rune("H")) && (down_down && special_pressed){
			if (umbrellaleaf_recharge >= 300){
				if (exists){
					with (obj_article1){
						if (player_id == other.id){
							shovel = true
						}
					}
				}
				instance_create(x + (spr_dir*32),y + 48,"obj_article1");
				sound_play (sound_get ("plant"));
				umbrellaleaf_recharge = 0
			}
		}
	}
	if (window == 4){
		can_fast_fall = true;
		if (window_timer == 4){ 
			vsp = -3;
			//shake_camera( 1, 3 );
		}
	}
	if (window == 5){
		if (!free){
			set_state( PS_LANDING_LAG );
		}
	} else {
		move_cooldown[AT_DAIR] = 20;
	}
}

if (attack == AT_FSTRONG){
	if (window == 2 && window_timer == 12){
		spawn_hit_fx(floor(x + 86*spr_dir),floor(y),splat_effect);
		sound_play (sound_get ("melonimpact"));
	}
}

if (attack == AT_USTRONG){
	if (window == 2){ 
		if (window_timer == 8){
			sound_play(sound_get("fs_fire1"));
			spawn_base_dust(x, y - 80, "djump", spr_dir);
			spawn_base_dust(x, y, "jump", spr_dir);
			move_cooldown[AT_USTRONG] = 30;
		}
		/*
		with oPlayer if id != other.id && melon_mortar_scoop == other.id {
			x = lerp(x, other.x, 0.5)
			y = lerp(y - 32, other.y - 32, 0.5)
		}
		*/
	}
	/*
	if (window == 3){
		with oPlayer if id != other.id && melon_mortar_scoop == other.id {
			melon_mortar_scoop = false;
		}
	}
	*/
	if (window == 4 && window_timer == 4){
		spawn_base_dust(x, y, "land", spr_dir);
	}
}

if (attack == AT_DSTRONG){
	if (window == 2 && window_timer == 6){
		spawn_base_dust(x + 32*spr_dir, y, "dash_start", spr_dir*-1);
	}
	if (window == 3 && window_timer == 5){
		spawn_base_dust(x - 32*spr_dir, y, "dash_start", spr_dir);
	}
}

if (attack == AT_NSPECIAL){
	if (window == 2){
		if free{
			hsp = clamp(hsp, -2, 2);
			vsp -= gravity_speed * 2 / 3;
			vsp = clamp(vsp, -5, 1.5);
			can_fast_fall = false;
		}
		if (!special_down){
			if (window_timer >= 12){
				window = 3;
				window_timer = 0;
			}
		} else {
			if (left_down && spr_dir == 1) || (right_down && spr_dir == -1){
				pult_di = -1;
			} else if ((left_down && spr_dir == -1) || (right_down && spr_dir == 1)){
				pult_di = 1;
			} else {
				pult_di = 0;
			}
		}
	}
	if (window == 3){
		can_fast_fall = true;
	}
	if (window == 5){
		move_cooldown[AT_NSPECIAL] = 30;
		can_wall_jump = true;
	}
}

if (attack == AT_FSPECIAL){
	move_cooldown[AT_FSPECIAL] = 30;
	if (window == 1){
		attack_end();
		if (window_timer > 4){
			if free{
				hsp = clamp(hsp, -1, 1);
				vsp -= gravity_speed * 2 / 3;
				vsp = clamp(vsp, -4, 1.5);
				can_fast_fall = false;
			}
			fspecial_charge++;
			if !(special_down){
				window = 2;
				window_timer = 0;
			}
		}
		if (fspecial_charge == 24){
			sound_stop(sound_get("sfx_charge"));
			sound_play(sound_get("sfx_charge_max"));
		}
	} else {
		sound_stop(sound_get("sfx_charge"));
	}
	if (window == 2 || window == 3){
		if free{
			hsp = clamp(hsp, -1, 1);
			vsp -= gravity_speed * 2 / 3;
			vsp = clamp(vsp, -4, 1.5);
			can_fast_fall = false;
		}
	}
	if (window == 2 && window_timer == 3){
		if (fspecial_charge >= 24){
			window = 4;
			window_timer = 0;
			fspecial_charge = 0;
		}
	}
	if (window == 3 && window_timer == 4){
		window = 6;
		window_timer = 0;
	}
	if (window >= 5){
		can_fast_fall = true;
	}
}
if (attack == AT_FSPECIAL_2){
	move_cooldown[AT_FSPECIAL] = 60;
	if (melonpult_fspecial_grabbed != 0){
		// C A U T I O N !   G I A N T   W A L L   O F   L E R P   A H E A D .
		if (window == 1){
			if (window_timer == 2 || window_timer == 3){
				melonpult_fspecial_grabbed.x = lerp(melonpult_fspecial_grabbed.x, x + (94 * spr_dir), 0.5);
				melonpult_fspecial_grabbed.y = lerp(melonpult_fspecial_grabbed.y, y - 16, 0.5);
			}
			if (window_timer == 4 || window_timer == 5){
				melonpult_fspecial_grabbed.x = lerp(melonpult_fspecial_grabbed.x, x + (62 * spr_dir), 0.5);
				melonpult_fspecial_grabbed.y = lerp(melonpult_fspecial_grabbed.y, y - 16, 0.5);
			}
			if (window_timer == 6){
				melonpult_fspecial_grabbed.x = lerp(melonpult_fspecial_grabbed.x, x + (16 * spr_dir), 0.5);
				melonpult_fspecial_grabbed.y = lerp(melonpult_fspecial_grabbed.y, y - 28, 0.5);
			}
		}
		if (window == 2){
			if (window_timer == 1){
				melonpult_fspecial_grabbed.x = lerp(melonpult_fspecial_grabbed.x, x + (16 * spr_dir), 0.5);
				melonpult_fspecial_grabbed.y = lerp(melonpult_fspecial_grabbed.y, y - 28, 0.5);
			}
			if (window_timer == 2 || window_timer == 3){
				melonpult_fspecial_grabbed.x = lerp(melonpult_fspecial_grabbed.x, x - (18 * spr_dir), 0.5);
				melonpult_fspecial_grabbed.y = lerp(melonpult_fspecial_grabbed.y, y - 38, 0.5);
			}
			if (window_timer == 4){
				melonpult_fspecial_grabbed.x = lerp(melonpult_fspecial_grabbed.x, x - (36 * spr_dir), 0.5);
				melonpult_fspecial_grabbed.y = lerp(melonpult_fspecial_grabbed.y, y - 48, 0.5);
			}
		}
		if (window == 3){
			if (melonpult_fspecial_grabbed != 0){
				if (shield_pressed){
					window = 4;
					window_timer = 0;
				}
				if !(special_down){
					melonpult_fspecial_grabbed.x = lerp(melonpult_fspecial_grabbed.x, x - (36 * spr_dir), 0.5);
					melonpult_fspecial_grabbed.y = lerp(melonpult_fspecial_grabbed.y, y - 54, 0.5);
				}
				if (up_down && special_pressed) && (melonpult_fspecial_grabbed.melonpult_grabbed_type == 2){
					if !(left_down && spr_dir == 1) && !(right_down && spr_dir == -1){
						melonpult_fspecial_grabbed.x = x + (54 * spr_dir);
					}
					set_attack( AT_USPECIAL );
					window_timer = 0;
					window = 1;
				} else if (melonpult_fspecial_grabbed.melonpult_grabbed_type == 1 || special_down){
					if (left_down && spr_dir == 1) || (right_down && spr_dir == -1){
						set_attack( AT_NTHROW );
						window_timer = 0;
						window = 1;
					} else if (left_down && spr_dir == -1) || (right_down && spr_dir == 1) || (special_down){
						set_attack( AT_FTHROW );
						window_timer = 0;
						window = 1;
					}
				}
			}
		}
		if (window != 4){
			if free{
				// glider
				if (melonpult_fspecial_grabbed.melonpult_grabbed_type == 2){
					vsp -= gravity_speed * 2 / 3; 
					vsp = clamp(vsp, -4, 1); 
					if (window == 3){
						can_attack = true;
						can_jump = true;
						if (has_airdodge) && (shield_pressed){
							set_state( PS_AIR_DODGE );
							state_timer = 0;
						}
						if (window_timer mod 12 == 1){
							sound_play (sound_get ("float"));
						}
					}
					if (!exists){
						set_state( PS_PRATFALL );
					}
				} else if (melonpult_fspecial_grabbed.melonpult_grabbed_type == 1){
					can_move = false;
					hsp = clamp(hsp, -1, 1);
					vsp -= gravity_speed * 2 / 3;
					vsp = clamp(vsp, -4, 1.5);
				}
				can_fast_fall = false;
			}
			if (melonpult_fspecial_grabbed.melonpult_grabbed_type == 1){
				melonpult_fspecial_grabbed.hitstop = 2;
			}
		} else {
			if (melonpult_fspecial_grabbed.melonpult_grabbed_type == 2){
				iasa_script();
			}
		}
	}
}
if (attack == AT_FTHROW){
	move_cooldown[AT_FSPECIAL] = 60;
	hurtboxID.sprite_index = get_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE);
	if (melonpult_fspecial_grabbed != 0){
		if (window == 1){
			if (melonpult_fspecial_grabbed.melonpult_grabbed_type == 1){
				soft_armor = 999;
				melonpult_fspecial_grabbed.hitstop = 2;
			}
			if (free){
				if (melonpult_fspecial_grabbed.melonpult_grabbed_type == 2){
					vsp -= gravity_speed * 2 / 3; 
					vsp = clamp(vsp, -4, 1);
				} else if (melonpult_fspecial_grabbed.melonpult_grabbed_type == 1){
					vsp -= gravity_speed * 2 / 3;
					vsp = clamp(vsp, -4, 1.5);
				}
				can_fast_fall = false;
			}
			if (window_timer >= 1 && window_timer <= 3){
				melonpult_fspecial_grabbed.x = lerp(melonpult_fspecial_grabbed.x, x - (42 * spr_dir), 0.5);
				melonpult_fspecial_grabbed.y = lerp(melonpult_fspecial_grabbed.y, y - 36, 0.5);
			}
			if (window_timer >= 4 && window_timer <= 7){
				melonpult_fspecial_grabbed.x = lerp(melonpult_fspecial_grabbed.x, x - (56 * spr_dir), 0.5);
				melonpult_fspecial_grabbed.y = lerp(melonpult_fspecial_grabbed.y, y - 28, 0.5);
			}
			if (window_timer >= 8 && window_timer <= 11){
				melonpult_fspecial_grabbed.x = lerp(melonpult_fspecial_grabbed.x, x - (32 * spr_dir), 0.5);
				melonpult_fspecial_grabbed.y = lerp(melonpult_fspecial_grabbed.y, y - 54, 0.5);
			}
			if (window_timer == 12){
				melonpult_fspecial_grabbed.x = x + (24 * spr_dir);
				melonpult_fspecial_grabbed.y = y - 60;
			}
		} else {
			can_fast_fall = true;
		}
		if (window == 3){
			soft_armor = 0;
			if (melonpult_fspecial_grabbed.melonpult_grabbed_type == 2){
				iasa_script();
			}
		}
	}
}
if (attack == AT_NTHROW){
	move_cooldown[AT_FSPECIAL] = 60;
	hurtboxID.sprite_index = get_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE);
	if (melonpult_fspecial_grabbed != 0){
		if (window == 1){
			if (melonpult_fspecial_grabbed.melonpult_grabbed_type == 1){
				soft_armor = 999;
				melonpult_fspecial_grabbed.hitstop = 2;
				if (window_timer < 9){
					hsp = -3 * spr_dir;
				} else {
					hsp = 3 * spr_dir;
				}
			}
			if (free){
				if (melonpult_fspecial_grabbed.melonpult_grabbed_type == 2){
					vsp -= gravity_speed * 2 / 3; 
					vsp = clamp(vsp, -4, 1);
				} else if (melonpult_fspecial_grabbed.melonpult_grabbed_type == 1){
					vsp -= gravity_speed * 2 / 3;
					vsp = clamp(vsp, -4, 1.5);
				}
				can_fast_fall = false;
			} else {
				if (window_timer mod 6 == 1){
					if (window_timer < 9){
						spawn_base_dust(x + 16*spr_dir, y, "walk", spr_dir*-1);
					} else {
						spawn_base_dust(x - 16*spr_dir, y, "walk", spr_dir);
					}
				}
			}
			if (window_timer >= 1 && window_timer <= 2){
				melonpult_fspecial_grabbed.x = lerp(melonpult_fspecial_grabbed.x, x - (44 * spr_dir), 0.5);
				melonpult_fspecial_grabbed.y = lerp(melonpult_fspecial_grabbed.y, y - 44, 0.5);
			}
			if (window_timer >= 3 && window_timer <= 5){
				melonpult_fspecial_grabbed.x = lerp(melonpult_fspecial_grabbed.x, x - (44 * spr_dir), 0.5);
				melonpult_fspecial_grabbed.y = lerp(melonpult_fspecial_grabbed.y, y - 36, 0.5);
			}
			if (window_timer >= 6 && window_timer <= 8){
				melonpult_fspecial_grabbed.x = lerp(melonpult_fspecial_grabbed.x, x - (0 * spr_dir), 0.5);
				melonpult_fspecial_grabbed.y = lerp(melonpult_fspecial_grabbed.y, y - 22, 0.5);
			}
			if (window_timer == 9){
				spr_dir *= -1;
				sound_play (asset_get("sfx_swipe_medium1"));
			}
			if (window_timer >= 9 && window_timer <= 11){
				melonpult_fspecial_grabbed.x = lerp(melonpult_fspecial_grabbed.x, x - (34 * spr_dir), 0.5);
				melonpult_fspecial_grabbed.y = lerp(melonpult_fspecial_grabbed.y, y - 16, 0.5);
			}
			if (window_timer >= 12 && window_timer <= 14){
				melonpult_fspecial_grabbed.x = lerp(melonpult_fspecial_grabbed.x, x - (60 * spr_dir), 0.5);
				melonpult_fspecial_grabbed.y = lerp(melonpult_fspecial_grabbed.y, y - 24, 0.5);
			}
			if (window_timer >= 15 && window_timer <= 17){
				melonpult_fspecial_grabbed.x = lerp(melonpult_fspecial_grabbed.x, x - (32 * spr_dir), 0.5);
				melonpult_fspecial_grabbed.y = lerp(melonpult_fspecial_grabbed.y, y - 44, 0.5);
			}
			if (window_timer >= 18 && window_timer <= 20){
				melonpult_fspecial_grabbed.x = lerp(melonpult_fspecial_grabbed.x, x - (14 * spr_dir), 0.5);
				melonpult_fspecial_grabbed.y = lerp(melonpult_fspecial_grabbed.y, y - 66, 0.5);
			}
			if (window_timer == 21){
				melonpult_fspecial_grabbed.x = x + (48 * spr_dir);
				melonpult_fspecial_grabbed.y = y - 54;
			}
		} else {
			can_fast_fall = true;
		}
		if (window == 3){
			soft_armor = 0;
			if (melonpult_fspecial_grabbed.melonpult_grabbed_type == 2){
				iasa_script();
			}
		}
	}
}

if (attack == AT_USPECIAL){
	if (window == 1){
		if free{
			vsp = min(vsp, 1.5);
		}
		/*
		if (window_timer == 8) && (special_down){
			if (umbrellaleaf_recharge >= 300){
				if (exists){
					with (obj_article1){
						if (player_id == other.id){
							shovel = true
						}
					}
				}
				instance_create(x + (spr_dir*60),y - 0,"obj_article1");
				sound_play (sound_get ("plant"));
				umbrellaleaf_recharge = 0
			}
        }
		*/
    } else {
		can_wall_jump = true;
	}
	if (window < 3){
		can_fast_fall = false;
	} else {
		can_fast_fall = true;
	}
}
if (attack == AT_USPECIAL_2){
	hurtboxID.sprite_index = get_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE);
	if (melonpult_uspecial_grabbed.melonpult_grabbed_type == 2){
		if (window == 1){
			if (window_timer < 4){
				melonpult_uspecial_grabbed.x = x + (24 * spr_dir);
				melonpult_uspecial_grabbed.y = y - 18;
			}
			if (window_timer == 4){
				melonpult_uspecial_grabbed.x = x + (28 * spr_dir);
				melonpult_uspecial_grabbed.y = y - 64;
			}
		} else {
			can_wall_jump = true;
		}
		if (window == 2) || (window == 3){
			melonpult_uspecial_grabbed.x = x + (32 * spr_dir);
			melonpult_uspecial_grabbed.y = y - 64;
		}
		if (window != 4){
			if free{
				vsp -= gravity_speed * 2 / 3; 
				vsp = clamp(vsp, -4, 1); 
				if (!exists){
					set_state( PS_PRATFALL );
				}
				can_fast_fall = false;
			}
		}
	}
	if (window < 4){
		can_fast_fall = false;
	} else {
		can_fast_fall = true;
	}
}

if (attack == AT_DSPECIAL){
	if (window == 2){
		if free{
			hsp = clamp(hsp, -2, 2);
			vsp -= gravity_speed * 2 / 3;
			vsp = clamp(vsp, -5, 1.5);
		}
        if (window_timer == 1){
			if (exists){
				with (obj_article1){
					if (player_id == other.id){
						shovel = true
					}
				}
			}
			if (umbrellaleaf_recharge >= 300){
				instance_create(x + (spr_dir*60),y - 0,"obj_article1");
				sound_play (sound_get ("plant"));
				umbrellaleaf_recharge = 0
				/*
				if (free){
					vsp = -6;
				}
				*/
			} else if (!exists){
			    sound_play (sound_get ("buzzer"));
			}
        }
    }
}

if (attack == AT_TAUNT){
	if (window >= 5){
		iasa_script();
	}
}

//tahnk you soup
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
var dir; if (argument_count > 3) dir = argument[3]; else dir = 0;

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