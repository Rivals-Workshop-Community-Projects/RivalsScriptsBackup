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
    if (player_id == other.id) var exists = true;
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
	if (window == 1 && window_timer == 18){
		if (!free) spawn_base_dust(x - 16*spr_dir, y, "dash", spr_dir);
		hsp = max(hsp*spr_dir, 5)*spr_dir;
	}
	if !(window == 1 && window_timer < 2){
		if (has_rune("G")){
			if (jump_pressed) && (djumps < max_djumps){
				if free && (!hitpause && !hitstop){
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

if (attack == AT_UTILT){
	if (window == 1 && window_timer == 10){
		spawn_base_dust(x + 32*spr_dir, y, "dash", -1*spr_dir);
	}
	if (window == 2 && window_timer == 7){
		spawn_base_dust(x - 48*spr_dir, y, "land", spr_dir);
	}
}

if (attack == AT_DTILT){
	if (window == 1 && window_timer == 7){
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
		if (left_down && !right_down) spr_dir = -1;
		if (right_down && !left_down) spr_dir = 1;
	}
	if (window_timer >= 6) iasa_script();
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
			spawn_base_dust(x - 16*spr_dir, y, "dash_start", spr_dir);
		}
	}
	if (window == 2 || window == 3 || window == 4) {
		if (window_timer == 8){
			spawn_base_dust(x - 16*spr_dir, y, "wavedash", spr_dir);
		}
	}
}

if (attack == AT_DAIR){
	if (window == 1){ 
		dair_fall_timer = 0;
	}
	if (window == 2 && window_timer == 8){
		hsp = 6 * spr_dir;
        vsp = 12;
	}
	if (window == 3){
		if (!hitpause && !hitstop){
			dair_fall_timer++;
            vsp += 0.2;
            hsp = (vsp/2)*spr_dir;
		}
		can_wall_jump = true;
		can_fast_fall = false;
		can_move = false;
		if (has_hit) && (has_rune("B")){
			window = 5;
			window_timer = 0;
			old_vsp = -5;
		}
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
						if (player_id == other.id) shovel = true;
					}
				}
				instance_create(x + (spr_dir*32),y + 48,"obj_article1");
				sound_play (sound_get ("plant"));
				umbrellaleaf_recharge = 0
			}
		}
		/*
		if (collision_line(x, y-16, x+32*spr_dir, y-16, asset_get("par_block"), false, false) != noone){
			window = 4;
			window_timer = 0;
			vsp = -5;
		}
		*/
	}
	if (window == 4){
		can_fast_fall = true;
		hsp = clamp(hsp, -5, 5);
		if (window_timer == 4) vsp = min (vsp, -3.6);
	}
	if (window == 5 && window_timer > 1){
		if (!free) set_attack_value( AT_DAIR, AG_CATEGORY, 1 );
	} else move_cooldown[AT_DAIR] = 20;
}

if (attack == AT_FSTRONG){
	if (window == 2 && window_timer == 9){
		spawn_base_dust(x - 16*spr_dir, y, "dash", spr_dir);
		hsp = 5*spr_dir;
	}
	if (window == 2 && window_timer == 12){
		spawn_hit_fx(floor(x + 98*spr_dir),floor(y-8),splat_effect);
		sound_play (sound_get ("melonimpact"));
		shake_camera( 6, 4 );
		
		if get_synced_var(player) == true {
			var ground_test = collision_point(floor(x + 98 * spr_dir), floor(y), asset_get("par_block"), 1, 1)
			var plat_test = collision_point(floor(x + 98 * spr_dir), floor(y), asset_get("par_jumpthrough"), 1, 1)
			if (ground_test || plat_test) {
				// destroy old graffiti
				if instance_exists(graffiti_id) {
					instance_destroy(graffiti_id);
				}
				// create new graffiti
				graffiti_tagging = true; // must be set true before spawning
				graffiti_id = instance_create(x + 98*spr_dir, y, "obj_article3");
				graffiti_tagging = false; // must be set false after spawning
			}
		}
	}
}

if (attack == AT_USTRONG){
	if (window == 2){ 
		if (window_timer == 8){
			sound_play(sound_get("melon_mortar1"));
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
	if (has_rune("O")){
		if (strong_charge == 60) {
			attack = 49;
			window = 0;
			window_timer = 0;
			state_timer = 0;
		}
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
			if (right_down - left_down == spr_dir){
				pult_di = 1;
			} else if (right_down - left_down == -spr_dir){
				pult_di = -1;
			} else pult_di = 0;
		}
	}
	if (window == 3) can_fast_fall = true;
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
		if (fspecial_charge == 18){
			sound_stop(sound_get("sfx_charge"));
			sound_play(sound_get("sfx_charge_max"));
		}
	} else sound_stop(sound_get("sfx_charge"));
	if (window == 2 || window == 3){
		if free{
			hsp = clamp(hsp, -1, 1);
			vsp -= gravity_speed * 2 / 3;
			vsp = clamp(vsp, -4, 1.5);
			can_fast_fall = false;
		}
	}
	if (window == 2 && window_timer == 3){
		if (fspecial_charge >= 18){
			window = 4;
			window_timer = 0;
			fspecial_charge = 0;
		}
	}
	if (window == 3 && window_timer == 4){
		window = 6;
		window_timer = 0;
	}
	if (window >= 5) can_fast_fall = true;
}
if (attack == AT_FSPECIAL_2){
	if (melonpult_fspecial_grabbed.melonpult_grabbed_type == 1){
		move_cooldown[AT_FSPECIAL] = 30;
	} else if (melonpult_fspecial_grabbed.melonpult_grabbed_type == 2){
		move_cooldown[AT_FSPECIAL] = 0;
	}
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
					melonpult_fspecial_grabbed.x = lerp(melonpult_fspecial_grabbed.x, (x - (36 * spr_dir)) + hsp*2, 0.5);
					melonpult_fspecial_grabbed.y = lerp(melonpult_fspecial_grabbed.y, y - 50, 0.5);
				}
				if (melonpult_fspecial_grabbed.melonpult_grabbed_type == 2){
					if (up_down && special_pressed){
						if !(left_down && spr_dir == 1) && !(right_down && spr_dir == -1){
							melonpult_fspecial_grabbed.x = floor(x) + (54 * spr_dir);
						}
						set_attack( AT_USPECIAL );
						window_timer = 0;
						window = 1;
					} else if (down_down && special_pressed) && !(left_down || right_down){
						window = 4;
						window_timer = 0;
						clear_button_buffer( PC_SPECIAL_PRESSED );
					}
				}
				if (melonpult_fspecial_grabbed.melonpult_grabbed_type == 1) 
				|| (melonpult_fspecial_grabbed.melonpult_grabbed_type == 2 && special_pressed && !up_down){
					if (left_down && spr_dir == 1) || (right_down && spr_dir == -1){
						set_attack( AT_NTHROW );
						window_timer = 0;
						window = 1;
					} else if (left_down && spr_dir == -1) || (right_down && spr_dir == 1) 
					|| (special_pressed){
						set_attack( AT_FTHROW );
						window_timer = 0;
						window = 1;
					}
				}
			}
		}
		if (window != 4){
			if (melonpult_fspecial_grabbed.melonpult_grabbed_type == 1){
				melonpult_fspecial_grabbed.hitstop = 2;
				if free{
					can_move = false;
					hsp = clamp(hsp, -1, 1);
					vsp -= gravity_speed * 2 / 3;
					vsp = clamp(vsp, -4.5, 1.5);
					can_fast_fall = false;
				}
			}
			// glider
			if (melonpult_fspecial_grabbed.melonpult_grabbed_type == 2){
				if free{
				
					vsp -= gravity_speed * 2 / 3; 
					if (down_down) vsp = max(vsp, 0);
					else vsp = clamp(vsp, -4.5, 1);
					
					can_fast_fall = false;
					if (window == 3){
						if (window_timer mod 12 == 1){
							sound_play (sound_get ("float"));
						}
						if (has_airdodge) && (shield_pressed){
							set_state( PS_AIR_DODGE );
							state_timer = 0;
						}
					}
				}
				if (window == 3){
					can_attack = true;
					can_jump = true;
					can_wall_jump = true;
				}
				if (!exists) set_state( PS_PRATFALL );
			}
		} else {
			if (melonpult_fspecial_grabbed.melonpult_grabbed_type == 2){
				hsp = clamp(hsp, -6, 6);
				iasa_script();
			}
		}
	}
}
if (attack == AT_FTHROW){
	if (melonpult_fspecial_grabbed.melonpult_grabbed_type == 1){
		move_cooldown[AT_FSPECIAL] = 30;
	} else if (melonpult_fspecial_grabbed.melonpult_grabbed_type == 2){
		move_cooldown[AT_FSPECIAL] = 0;
	}
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
					if (down_down) vsp = max(vsp, 0);
					else vsp = clamp(vsp, -4.5, 1);
					
					if (window_timer == 12){
						hsp -= 3 * spr_dir;
					}
				} else if (melonpult_fspecial_grabbed.melonpult_grabbed_type == 1){
					vsp -= gravity_speed * 2 / 3;
					vsp = clamp(vsp, -4.5, 1.5);
					hsp = clamp(hsp, -6, 6);
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
				melonpult_fspecial_grabbed.x = floor(x) + (24 * spr_dir);
				melonpult_fspecial_grabbed.y = floor(y) - 60;
			}
		} else can_fast_fall = true;
		if (window == 3){
			soft_armor = 0;
			if (melonpult_fspecial_grabbed.melonpult_grabbed_type == 2){
				iasa_script();
			}
		}
	}
}
if (attack == AT_NTHROW){
	if (melonpult_fspecial_grabbed.melonpult_grabbed_type == 1){
		move_cooldown[AT_FSPECIAL] = 30;
	} else if (melonpult_fspecial_grabbed.melonpult_grabbed_type == 2){
		move_cooldown[AT_FSPECIAL] = 0;
	}
	hurtboxID.sprite_index = get_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE);
	if (melonpult_fspecial_grabbed != 0){
		if (window == 1){
			if (melonpult_fspecial_grabbed.melonpult_grabbed_type == 1){
				soft_armor = 999;
				melonpult_fspecial_grabbed.hitstop = 2;
				if (window_timer < 9) hsp = -3 * spr_dir;
				else hsp = 3 * spr_dir;
			}
			if (free){
				if (melonpult_fspecial_grabbed.melonpult_grabbed_type == 2){
				
					vsp -= gravity_speed * 2 / 3; 
					if (down_down) vsp = max(vsp, 0);
					else vsp = clamp(vsp, -4.5, 1);
					
					if (window_timer == 21) hsp -= 3 * spr_dir;
					
					//if (window_timer >= 9) iasa_script();
					
				} else if (melonpult_fspecial_grabbed.melonpult_grabbed_type == 1){
					vsp -= gravity_speed * 2 / 3;
					vsp = clamp(vsp, -4.5, 1.5);
				}
				can_fast_fall = false;
			} else {
				if (window_timer mod 6 == 1){
					if (window_timer < 9) spawn_base_dust(x + 16*spr_dir, y, "walk", spr_dir*-1);
					else spawn_base_dust(x - 16*spr_dir, y, "walk", spr_dir);
				}
				if (melonpult_fspecial_grabbed.melonpult_grabbed_type == 2){
					if (window_timer < 9) hsp = -3 * spr_dir;
					else hsp = 3 * spr_dir;
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
				melonpult_fspecial_grabbed.x = floor(x) + (48 * spr_dir);
				melonpult_fspecial_grabbed.y = floor(y) - 54;
			}
		} else can_fast_fall = true;
		if (window == 3){
			soft_armor = 0;
			if (melonpult_fspecial_grabbed.melonpult_grabbed_type == 2) iasa_script();
		}
	}
}

if (attack == AT_USPECIAL){
	if (window == 1){
		if free{
			vsp = min(vsp, 1.5);
			if (window_timer == 1) && (hsp * spr_dir < 0) hsp *= -1;
		}
		if (window_timer == 8){
			hsp = clamp(hsp, -1, 1);
			/*
			if (special_down){
				if (umbrellaleaf_recharge >= 300){
					if (exists){
						with (obj_article1){
							if (player_id == other.id) shovel = true;
						}
					}
					instance_create(x + (spr_dir*60),y - 0,"obj_article1");
					sound_play (sound_get ("plant"));
					umbrellaleaf_recharge = 0
				}
			}
			*/
		}
    } else can_wall_jump = true;
	if (window < 3) can_fast_fall = false;
	else can_fast_fall = true;
}
if (attack == AT_USPECIAL_2){
	hurtboxID.sprite_index = get_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE);
	if (melonpult_uspecial_grabbed.melonpult_grabbed_type == 2){
		if (window == 1){
			if (window_timer < 4){
				melonpult_uspecial_grabbed.x = floor(x) + (24 * spr_dir);
				melonpult_uspecial_grabbed.y = floor(y) - 18;
			}
			if (window_timer == 4){
				melonpult_uspecial_grabbed.x = floor(x) + (28 * spr_dir);
				melonpult_uspecial_grabbed.y = floor(y) - 64;
			}
		} else can_wall_jump = true;
		if (window == 2) || (window == 3){
			melonpult_uspecial_grabbed.x = floor(x) + (30 * spr_dir);
			melonpult_uspecial_grabbed.y = floor(y) - 58;
		}
		if (window != 4){
			if free{
				vsp -= gravity_speed * 2 / 3; 
				vsp = clamp(vsp, -4, 1); 
				if (!exists) set_state( PS_PRATFALL );
				can_fast_fall = false;
			}
		}
	}
	if (window < 4) can_fast_fall = false;
	else can_fast_fall = true;
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
					if (player_id == other.id) shovel = true;
				}
			}
			if (umbrellaleaf_recharge >= 300){
				instance_create(x + (spr_dir*64),y - 0,"obj_article1");
				sound_play (sound_get ("plant"));
				umbrellaleaf_recharge = 0
				//if (free) vsp = min(vsp, -4);
			} else if (!exists){
			    sound_play (sound_get ("buzzer"));
				alert_text_timer = 32;
			}
        }
    }
}

if (attack == AT_TAUNT){
	if (window >= 5) iasa_script();
}

if (attack == 49){
	super_armor = true;
	hurtboxID.sprite_index = get_attack_value(49, AG_HURTBOX_SPRITE);
	if free{
		hsp = clamp(hsp, -0.5, 0.5);
		vsp -= gravity_speed * 2 / 3;
		vsp = clamp(vsp, -5, 0);
		can_fast_fall = false;
	}
	if (!hitpause && !hitstop){
		if (window == 2 || window == 5 || window == 7 || window == 9){ 
			if (window_timer == 8){
				sound_play(asset_get("sfx_ell_utilt_cannon"));
				spawn_base_dust(x, y - 80, "djump", spr_dir);
				if (!free) spawn_base_dust(x, y, "jump", spr_dir);
				
				var oppcount = 0;
				opptarget = [];
				with (oPlayer) if (get_player_team(player) != get_player_team(other.player)) 
				&& (state != PS_DEAD) && (!clone){
					with (other){
						oppcount += 1;
						array_push(opptarget, other);
					}
				}
				//print_debug(array_length(opptarget));
				for (var i = 0; i < clamp(oppcount*3, 1, 12); i++){
					var mfs = create_hitbox( 49, 1, 
					x - (32 - random_func(i, 64, true)),
					y - (32 + random_func(i + 1, 64, true)) );
					// by the way mfs is short for melonpult final smash i'm just using slang
					mfs.image_index = random_func(i + 2, 7, true);
					mfs.vsp = -27 + random_func(i + 3, 2, false);
					mfs.hsp = 2 - random_func(i + 4, 4, false);
					if (array_length(opptarget) > 0) {
						mfs.target = opptarget[i mod array_length(opptarget)];
						//print_debug(opptarget[i mod array_length(opptarget)]);
					} else {
						mfs.target = -4;
						//print_debug("-4");
					}
				}
			}
		}
	}
}

//soup
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