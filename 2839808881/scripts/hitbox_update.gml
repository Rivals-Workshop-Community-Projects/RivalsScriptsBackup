//Pulls the opponent (windbox)
if (attack == AT_NSPECIAL){
	if (hbox_num == 1){
		
		with (oPlayer) 
		if (id != other.player_id) {
		    if (place_meeting(x, y, other)) {
		        x -= 2*other.spr_dir;
		    }
		}
		
		x = player_id.x + 50*spr_dir
		y = player_id.y - 26
		
		if (player_id.window == 3){
			destroyed = true;
		}
	}
	
	if (hbox_num == 5){
		if (hitbox_timer%4 == 0){
			spawn_hit_fx(x, y, player_id.star_trail_fx);
		}
		if (hitbox_timer == 39){
			spawn_hit_fx(x, y, 109);
		}
	}
}

if (attack == AT_COPY_BEAM) {
	if (hitbox_timer%4 == 0){
		if (hbox_num == 6){
			//spawn_hit_fx(x - 10*spr_dir, y, player_id.beam_trail);
			var beamProjYOffset = sin(hitbox_timer);
			var beamProjHeightOffset = 16;
			spawn_hit_fx(x - 10*spr_dir, y+(beamProjYOffset*beamProjHeightOffset), player_id.beam_trail);
			spawn_hit_fx(x - 10*spr_dir, y+(beamProjYOffset*-beamProjHeightOffset), player_id.beam_trail);
		}
	}
}

if (attack == AT_COPY_RANGER) {

	proj_angle -= ((8+((hbox_num-1)*7)) * spr_dir);

	if (initXOffset != 1){
		x += initXOffset
		initXOffset = 1;
	}
		
	if (initYOffset != 1){
		y += initYOffset
		initYOffset = 1;
	}

	var baseMovementSpeed = 11+((hbox_num-1)*3);

	hsp = playerJoyDirectionMultHSP*baseMovementSpeed*(playerJoyDirectionRemember);
	vsp = playerJoyDirectionMultVSP*baseMovementSpeed*(playerJoyDirectionRememberVert);
}

if (attack == AT_COPY_BOMB) {
	proj_angle -= 5*spr_dir;
	if ((!free || hsp == 0) && hbox_num == 1){
		player_id.bomb_x = x;
		player_id.bomb_y = y;
		player_id.bomb_timer = 0;
		sound_play(sound_get("sfx_krdl_bomb_explode"));
		destroyed = true;
	}
}

if (attack == AT_COPY_ESP) {

if (hbox_num == 1){
	
	if (player_id.esp_charged == false){
		//State 1: Spawning
		if (esp_state == 1){
			image_index += 0.5
			if (image_index > 2.5){
				esp_state = 2;
			}
		}
		//State 2: Traveling
		if (esp_state == 2){
			image_index += 0.3
			if (image_index > 6.9){
				image_index = 3;
			}
		}
		
		if (esp_state == 2 && player_id.window == 4){
			esp_state = 3;
			image_index = 7;
		}
		
		//State 3: Detonate
		if (esp_state == 3){
			hsp = 0;
			vsp = 0;
			image_index += 0.25;
			if (image_index == 8){
				//print("Hello World");
				create_hitbox(AT_COPY_ESP, 3, x, y);
				sound_play(sound_get("sfx_star_allies_esp_psychokinesis"));
			}
			if (image_index > 14.6){
				destroyed = true;
			}
		}
	}
	
	if (player_id.esp_charged == true){
		esp_state = 1;
		destroyed = true;
	}

}

if (hbox_num == 4){
	
		//State 1: Spawning
		if (esp_state == 1){
			image_index += 0.5
			if (image_index > 2.5){
				esp_state = 2;
			}
		}
		//State 2: Traveling
		if (esp_state == 2){
			image_index += 0.3
			if (image_index > 6.9){
				image_index = 3;
			}
		}
		
		if (esp_state == 2 && player_id.window == 4){
			esp_state = 3;
			image_index = 7;
		}
		
		//State 3: Detonate
		if (esp_state == 3){
			hsp = 0;
			vsp = 0;
			image_index += 0.25;
			if (image_index == 8){
				//print("Hello World");
				create_hitbox(AT_COPY_ESP, 6, x, y);
				sound_play(sound_get("sfx_star_allies_esp_pkelectroshift_detonate"));
			}
			if (image_index > 14.6){
				destroyed = true;
			}
		}

}


//despawning multihit hitboxes if released
if (hbox_num == 2 || hbox_num == 5){
	if (esp_state == 2 && player_id.window == 4){
		destroyed = true;
	}
}

if (hbox_num == 1 || hbox_num == 4){
	
	if (player_id.esp_parried == true){
		//print("why am i here")
		spawn_hit_fx(x, y-12, 110);
		player_id.esp_parried = false;
		sound_stop(sound_get("sfx_star_allies_esp_pkshift"));
		sound_stop(sound_get("sfx_star_allies_esp_pkelectroshift"));
		destroyed = true;
	}
	
	player_id.esp_x = x;
	player_id.esp_y = y;
	
	
	if (player_id.right_down && hsp <= 3.5){
			hsp += 0.45;
		}
		if (player_id.left_down && hsp >= -3.5){
			hsp -= 0.45;
		}
		if (player_id.down_down && vsp <= 3.5){
			vsp += 0.45;
		}
		if (player_id.up_down && vsp >= -3.5){
			vsp -= 0.45;
		}
			if (player_id.down_down == false && vsp > 0){
				vsp -= 0.35;
			}
			if (player_id.up_down == false && vsp < 0){
				vsp += 0.35;
			}
			if (player_id.right_down == false && hsp > 0){
				hsp -= 0.35;
			}
			if (player_id.left_down == false && hsp < 0){
				hsp += 0.35;
			}
	}


if (hbox_num != 1 || hbox_num != 4){
	x = player_id.esp_x;
	y = player_id.esp_y;
}


}
	
	
