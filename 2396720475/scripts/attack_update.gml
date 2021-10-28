// attack_update.gml
// Called every frame, but only if the character is performing an attack

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (taunt_down && attack == AT_TAUNT && state == PS_ATTACK_GROUND && window == 2 && window_timer == 24){
	window = 2;
	window_timer = 1;
}

if (taunt_down && attack == AT_EXTRA_1 && state == PS_ATTACK_GROUND && window == 2 && window_timer == 50){
	window = 2;
	window_timer = 1;
}

// Slime Taunt
if (attack == AT_TAUNT){
	if (get_player_color(player) == 14){
		
		if (state_timer == 1){
			if (death_chime){
				death_chime_sound =	sound_play(sound_get("Slime Taunt Theme"));		
			}
			else {
				sound_play(sound_get("FFXIV_Open_Window"));
			}

		}

		if (window_timer == 4 && window == 3){
			sound_stop(death_chime_sound);
			death_chime_sound = noone;
		}
	}
}

if (attack == AT_EXTRA_2 && state == PS_ATTACK_GROUND && window == 1 && window_timer == 4){
	
	if (yai_hold_sound != 0){
		yai_hold_sound = 0;
	}
	
	if (attack_pressed || shield_pressed || jump_pressed){
		window = 3;
		window_timer = 1;
	}
	else {
		window = 1;
		window_timer = 1;
	}
	
	if (down_down){ // Doo
		sound_play(sound_get("moyai_start"));
		window = 2;
		window_timer = 1;
	}
	
	if (up_down){ // Shout
		attack = AT_EXTRA_3;
		window = 2;
		window_timer = 1;
		sound_play(sound_get("moyai_shout"));
	}
	
	/*
	if (up_down){ // Minigame
		tomoyai = true;
	}
	*/
}

if (attack == AT_EXTRA_2 && down_down && window = 2 && window_timer == 6){
	window_timer = 5;
	if (yai_hold_sound == 27){
		yai_hold_sound = 0;
	}
	if (yai_hold_sound == 0){
		sound_play(sound_get("moyai_hold"));
	}
	yai_hold_sound++;
}

if (attack == AT_EXTRA_2  && window = 2 && window_timer == 8){
	sound_stop(sound_get("moyai_hold"));
	sound_play(sound_get("moyai_end"));
}

if ((attack == AT_EXTRA_2 || attack == AT_EXTRA_3) && state == PS_ATTACK_GROUND && window == 2 && window_timer == 12){
	if (attack == AT_EXTRA_3){
		attack = AT_EXTRA_2;
	}
	window = 1;
	window_timer = 1;
}

	
// Down Special
if (attack == AT_DSPECIAL){
	if (state_timer == 11){
		create_new_box = true;

		box_health = 10;

		if (instance_exists(movingbox)){
			create_new_box = false;
			move_cooldown[AT_DSPECIAL] = 30;
		}
		
		if (create_new_box){
			move_cooldown[AT_DSPECIAL] = 200;
			
			if (instance_exists(needleplatform_solid)){
				if (needleplatform_solid.state == 3){
					needleplatform_solid.new_box = true;
				}
			}
			
			with (oPlayer){
				if (player != other.player && url == other.url){
					if (instance_exists(needleplatform_solid)){
						if (needleplatform_solid.state == 6 && point_distance( needleplatform_solid.x, needleplatform_solid.y, other.Box.x, other.Box.y ) > 10){
							needleplatform_solid.new_box = true;
						}
					}
				}
			}

			if (instance_exists(Box)){
				spawn_hit_fx(Box.x, Box.y, hit_small1);

				if (get_player_color(player) == 13 || get_player_color(player) == 15 || get_player_color(player) == 11){
					sound_play(sound_get("squeak_sfx"));
				}
				else {
					sound_play(sound_get("box3_sfx"));			
				}

				instance_destroy(Box);
				Box = noone;
			}


			movingbox = instance_create(x, y + 40, "obj_article1");
			movingbox.player_id = id;
			movingbox.player = player;
			movingbox.state = 1;
			movingbox.hit_delay = 6;
			movingbox.kb_angle = 270;
			movingbox.bkb = 4;
			movingbox.kb_scaling = .4;
			movingbox.destroy_check = false;
			movingbox.owner = player;
			movingbox.health_check = true;
			movingbox.initial_spawn = true;
			movingbox.hitfxowner = id;
			
			if (get_player_color(player) == 12 || get_player_color(player) == 14 || get_player_color(player) == 10 || get_player_color(player) == 1 || SecretColor == 2 || SecretColor == 3){
				flag_destroy = false;
				movingbox.flag = true;
			}
			if (get_player_color(player) == 13){
				movingbox.sprite_index = sprite_get("plushy");
			}
			if (get_player_color(player) == 11){
				movingbox.sprite_index = sprite_get("macka");
			}
			if (get_player_color(player) == 15){
				movingbox.sprite_index = sprite_get("moff");
			}
		}
	}
}

// Allows for wall jumps during certain attacks
if (attack == AT_FSPECIAL || attack == AT_USPECIAL){
	can_wall_jump = true;
}

// Forward Special
if (attack == AT_FSPECIAL){	
	can_fast_fall = false;
	move_cooldown[AT_FSPECIAL] = 40;
	if (window == 2){
		
		
		if (chargedash == 0){ // Weak
			sound_play(sound_get("charging"));
		}
		if (chargedash == 20){ // Medium
			sound_play(sound_get("charging"));
		}
		if (chargedash == 40){ // Strong
			sound_play(sound_get("charging"));
		}

		if (shield_pressed){
			window = 6;
			window_timer = 0;		
		}
		
		if (special_down) { // Charge Shot
			if (window_timer == 19 && chargedash == 60){
				window = 6;
				window_timer = 0;
			}
			if (window_timer == 20){
				window_timer = 0;
			}
			if (chargedash < 60){
				chargedash += 1;
			}
		}		
		else { // Charge Release

			sound_play(sound_get("uspecial_sfx"));
			if (chargedash >= 0 && chargedash <= 20){ // Weak
				window = 3;
				window_timer = 0;
			}
			if (chargedash >= 20 && chargedash <= 40){ // Medium
				window = 4;
				window_timer = 0;
			}
			if (chargedash >= 40 && chargedash <= 60){ // Strong
				window = 5;
				window_timer = 0;
			}
		}
	}
	
	if (hsp == 0 && chargedash != 60 || (has_hit && window >= 3 && window <= 6) || x < 30 || x > room_width - 30){
		hsp = 0;
		
		if ((window == 3 && window_timer >= 4) || (window == 4 && window_timer >= 4) || (window == 5 && window_timer >= 4)){
			sound_play(sound_get("fspecial_hit_sfx"));
			window = 7;
			window_timer = 0;
		}
	}
	
	if (window >= 3 && window < 6){
		if (window_timer == 2){
			chargedash = 0;
		}	
		
		if ((window == 2 && window_timer >= 5) || (window == 3 && window_timer >= 8) || (window == 4 && window_timer >= 12) || (window == 5 && window_timer >= 15)){
			window = 6;
			window_timer = 0;
		}
	}
	
	if (window == 6 && window_timer == 16){
		if (!has_hit_player){
			window = 20;
		}
	}
}

// Neutral Special
if (attack == AT_NSPECIAL){	
	move_cooldown[AT_NSPECIAL] = 30;
	if (window == 1){

		if (get_player_color(player) == 14){
			set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("slime_nspecial_air"));
			set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("slime_nspecial_ground"));
		}
		else {
			set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
			set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_ground"));	
		}
			
		set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 6);
		set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 3);
			
		if (special_down) { // Charge Shot
			if (window_timer == 9 && chargespike == 20){
				if (get_player_color(player) == 14){
					set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("slime_tomochungus"));
					set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("slime_tomochungus"));
				}
				else {
					set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("tomochungus"));
					set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("tomochungus"));
				}
				set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 3);
				set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 6);
				window = 2;
				window_timer = 0;
			}
			if (window_timer == 9){
				window_timer = 6;
			}
			if (chargespike < 20){
				chargespike += 1;
			}
		}

	}	
	
	if (window >= 2){
		if (window_timer == 2){
			chargespike = 0;
		}	
	}	
	
	if ((has_hit && window >= 3) && window_timer >= 5){
		can_jump = true;
		can_attack = true;
		can_special = true;
		can_move = true;
	}
}

// Tomo Needle Throw
if (attack == AT_USPECIAL){
	angle = (floor(joy_dir / 22.5) * 22.5 / 180) * -pi;
}

if (attack == AT_USPECIAL){
	can_fast_fall = false;
	if (window == 1 && window_timer == 1){
		usedUspecial_Again++;
	}
	
	if (!joy_pad_idle){
	//	needle_angle = floor(joy_dir / 22.5) * 22.5;
		needle_angle = joy_dir;
	}

	angle = (needle_angle / 180) * -pi;

	if (window_timer == 15 && window == 2){
		needleland = false;
		needleplatform = instance_create(x, y - 15, "obj_article2")
		needleplatform.angle = needle_angle;
		needleplatform.player = player;
		needleplatform.player_id = id;
		needle_sprite = 0;
		
		needle_hitbox = create_hitbox(AT_USPECIAL, 1, x, y);
		needle_hitbox.length = 999;
	}
	
	if (window == 3 && has_hit){
		can_attack = true;
		can_special = true;
	}
}
else {
	if (!instance_exists(needleplatform) && instance_exists(needleplatform_solid)){
		needle_angle = 0;
		angle = 0;
	}
}

if (attack == AT_UAIR){
	if (state_timer == 1){
		hud_offset = 10;
	}
	
	hud_offset = clamp(state_timer * 4 + 12, 10, 60);
}

if (attack == AT_FAIR){
	if (state_timer == 1){
		hud_offset = 10;
	}
	
	hud_offset = clamp(state_timer * 4 + 12, 10, 45);
}

if (attack == AT_UTILT){
	if (state_timer == 1){
		hud_offset = 20;
	}
	
	hud_offset = clamp(state_timer * 8 + 12, 10, 80);
}

if (attack == AT_FSTRONG){
	if (state_timer == 1){
		hud_offset = 20;
	}
	
	hud_offset = clamp(state_timer * 4 + 12, 20, 60);
}

if (attack == AT_USTRONG){
	if (window > 2){
		draw_indicator = false
	}
}

if (attack == AT_BAIR){
	if (window < 7 && !down_hard_pressed){
		if (has_hit_player || has_hit){
			vsp = clamp(vsp, -2, 2);
		}
	}
}

if (attack == AT_NSPECIAL){
	if (window <= 3 && !down_hard_pressed){
		if (has_hit_player || has_hit){
			hsp = clamp(hsp, -6, 6);
		}
	}
}
