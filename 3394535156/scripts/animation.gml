// animation.gml

// intro animation
if (state == PS_SPAWN) {
	if (intro_shouldgotoidle == false){
		if (introTimer < -12) {//>
			sprite_index = sprite_get("empty");
			introanimplaying_timer = 0;
			hud_offset = 9999;
		} else {
			var whichnumberdoistartshowingplagueon = 8;
			if (introanimplaying_timer < whichnumberdoistartshowingplagueon){
				sprite_index = sprite_get("empty");
				hud_offset = 9999;
			} else {
				sprite_index = sprite_get("intro");
			}
			image_index = ((introanimplaying_timer - whichnumberdoistartshowingplagueon) / 5);
			introanimplaying_timer++;
			if (introanimplaying_timer == 5){
				spawn_hit_fx(x,y,fspecial_vfx).depth = depth - 1;
				sound_play(asset_get("sfx_forsburn_reappear_hit"), false, noone, 0.5, 1.35);
				sound_play(sound_get("sfx_vakna_explosion_2"), false, noone, 0.2, 1.1);
				sound_play(sound_get("sfx_plague_bomb_med_explode_2"), false, noone, 0.95, 1);
			}
			
			if (image_index >= 11.8){
				intro_shouldgotoidle = true;
				//image_index = 0;
			}
		}
	} else {
		sprite_index = sprite_get("idle");
	}
}



if get_player_color(player) == 8 {
	if (state != PS_DEAD){	// preventing sparkles from showing up if plague knight dies first in a 3+ person free for all at the respawn point
		// sparkles n shit
		var goldalt_sparklehorizrangeoffset = 28;
		if (get_gameplay_time() % 8 == 0 && point_distance(hsp, vsp, 0, 0) > 2){
			var goldalt_spawned_sparkle_fx = spawn_hit_fx(x + (random_func(0, goldalt_sparklehorizrangeoffset * 2, false) - goldalt_sparklehorizrangeoffset),
			y - (char_height / 2) + (random_func_2(0, goldalt_sparklehorizrangeoffset * 2, false) - goldalt_sparklehorizrangeoffset),
			goldAlt_sparkle_fx_med);
			goldalt_spawned_sparkle_fx.depth = depth - 1;
			goldalt_spawned_sparkle_fx.draw_angle = point_direction(x, y, x + hsp, y + vsp);
		}


		switch (state) {
			case PS_WALK:
				sprite_index = sprite_get("walk_gold")
				image_index = (state_timer / 5.6) mod image_number		
			break;
			case PS_DASH:
				sprite_index = sprite_get("dash_gold")
				image_index = (state_timer / 5) mod image_number
				//image_index = image_index mod image_number
			break;
			case PS_DASH_TURN:
				sprite_index = sprite_get("dashturn_gold")
			break;
			case PS_DOUBLE_JUMP:
				sprite_index = sprite_get("doublejump_gold")
				image_index = (state_timer / double_jump_time) * image_number
			break;
			case PS_WAVELAND:
				sprite_index = sprite_get("waveland_gold")
			break;
			case PS_FIRST_JUMP:
				sprite_index = is_gold_jump_right ? sprite_get("jump_gold_R") : sprite_get("jump_gold_L")
				
				if (state_timer == 0){
					spawn_hit_fx(x + (random_func(0, goldalt_sparklehorizrangeoffset * 2, false) - goldalt_sparklehorizrangeoffset),
					y - 12,
					goldAlt_sparkle_fx_sml);
					
					spawn_hit_fx(x + (random_func_2(0, goldalt_sparklehorizrangeoffset * 2, false) - goldalt_sparklehorizrangeoffset),
					y - 44,
					goldAlt_sparkle_fx_sml);
				}
			break;
		}
	}
}







// check for attacking state first
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
	// check for attack
	
	//print(string(window) + " : " + string(window_timer));
	
	if (attack == AT_DATTACK){
		if (window == 5 && window_timer == 0){
			var datkFadeVFX = spawn_hit_fx(x + (32 * spr_dir), y - 12, datk_bomb_fx);
			datkFadeVFX.depth = depth - 1;
		}
	}
	
	if (attack == AT_DAIR){
		if (window == 4 && window_timer == 0){
			var dairFadeVFX = spawn_hit_fx(x + (36 * spr_dir), y + 4, datk_bomb_fx);
			dairFadeVFX.depth = depth - 1;
		}
	}
	
	if (attack == AT_USTRONG){
		if (window == 4 && window_timer == 0){
			var ustrongFadeVFX = spawn_hit_fx(x, y, ustrongFadeFX);
			ustrongFadeVFX.depth = depth - 1;
			uspecFrontVFX.hsp = hsp;
			uspecFrontVFX.vsp = vsp * 1;
			uspecFrontVFX.grav = 0.675;
		}
	}
	
	if (attack == AT_USPECIAL){
		if (window == 4 && window_timer == 0){
			var uspecFrontVFX = spawn_hit_fx(x, y, uspecFadeFrontFX);
			uspecFrontVFX.depth = depth - 1;
			uspecFrontVFX.hsp = hsp;
			uspecFrontVFX.vsp = -4.5;
			uspecFrontVFX.grav = 0.485;
			
			var uspecBackVFX = spawn_hit_fx(x, y, uspecFadeBackFX);
			//uspecBackVFX.depth = depth - 1;
			uspecBackVFX.hsp = hsp;
			uspecBackVFX.vsp = -4.5;
			uspecBackVFX.grav = 0.485;
		}
	}
}