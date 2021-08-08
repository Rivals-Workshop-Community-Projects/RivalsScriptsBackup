// post_draw.gml
// Draws sprites in front of the player


shader_start();
if (attack == AT_FSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
	if (window == 2 || (window == 1 && window_timer != 1)){
		draw_sprite_ext(sprite_get("big_sparkle"), 0, fspec_x - (50 * spr_dir) - 8 - fspecial_circles, fspec_y - 30, 1, 1, 0, c_white, 1);
		draw_sprite_ext(sprite_get("small_sparkle"), 0, fspec_x + (40 * spr_dir) - 8 - fspecial_circles, fspec_y - 20, 1, 1, 0, c_white, 1);
	}
}
shader_end();

// Nspecial Armor
if (attack == AT_DSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){ 
	var armorcolor = make_colour_rgb(63, 240, 240);

	if (window == 1){
		if (!focus_armorbreak){

			if (window_timer < 15 && window_timer >= 4){
				gpu_set_fog(1, armorcolor, 0, 1);
				draw_sprite_ext(sprite_index, image_index, x, y, 1 * spr_dir, 1, 0, armorcolor, .5);
				gpu_set_fog(0, c_white, 0, 0);

			}
			if (window_timer >= 15){
				gpu_set_fog(1, armorcolor, 0, 1);
				draw_sprite_ext(sprite_index, image_index, x, y, 1 * spr_dir, 1, 0, armorcolor, .5);
				gpu_set_fog(0, c_white, 0, 0);
			}
		}
	}

	if ((window == 6 && window_timer <= 8) && !focus_armorbreak){
		gpu_set_fog(1, armorcolor, 0, 1);
		draw_sprite_ext(sprite_index, image_index, x, y, 1 * spr_dir, 1, 0, armorcolor, .5);
		gpu_set_fog(0, c_white, 0, 0);
	}	

// Nspecial Charge effect
	if ((window == 1 && state_timer > 13)){
		shader_start();
		draw_sprite_ext(sprite_get("focuseffectsfront"), get_gameplay_time()/4, x, y, 1 * spr_dir, 1, 0, c_white, 1);
		shader_end();
		
		if (!focus_armorbreak){
			gpu_set_fog(1, armorcolor, 0, 1);
			draw_sprite_ext(sprite_get("focuseffectsfront"), get_gameplay_time()/4, x, y, 1 * spr_dir, 1, 0, armorcolor, .5);
			gpu_set_fog(0, c_white, 0, 0);
		}
	}
	
	if (window < 4 || (window == 6 && window_timer <= 8)){
		draw_sprite_ext(sprite_get("focuseffectssmoke"), get_gameplay_time()/4, x, y, 1 * spr_dir, 1, 0, c_white, 1);
	}
	
	if (window == 2){
		shader_start();
		draw_sprite_ext(sprite_get("focuseffectsfront"), get_gameplay_time()/4, x, y, 1 * spr_dir, 1, 0, c_white, 1);
		shader_end();
	}
		
}


if (taunt_down && down_down && taunt_counter < 140){
	draw_sprite_ext(sprite_get("date_logo"), 0, x, y - 30 - 60, 1, 1, 0, c_white, .70);
	draw_sprite_part(sprite_get("date_logo"), 1, 0, 0, taunt_counter, 100, x - 65, y - 95 - 60);
}
	
if (taunt_down && up_down && taunt_counter < 140){
	draw_sprite_ext(sprite_get("stage_logo"), 0, x, y - 30 - 60, 1, 1, 0, c_white, .70);
	draw_sprite_part(sprite_get("stage_logo"), 1, 0, 0, taunt_counter, 100, x - 65, y - 95 - 60);
}
	
	
// Writes random dialogue on respawn platform
if (state == PS_RESPAWN){
	if (state_timer >= 1){
		draw_debug_text(x - Platform_Text[platform_number, 0], y + 13, Platform_Text[platform_number, 1]);
	}
}
else{
	platform_number = random_func(0, 10, true);
}

// Draws Nspecial cooldown effect when the cooldown is about to reset to 0
if (move_cooldown[AT_DSPECIAL] < 20 && move_cooldown[AT_DSPECIAL] != 0){
//	draw_sprite_ext(sprite_get("recharged"), 10 - (move_cooldown[AT_DSPECIAL] / 4), x, y - 70, 1, 1, 0, c_white, 1);

	var nspecialrecovercolor = make_colour_rgb(63, 240, 240);
	
	if (move_cooldown[AT_DSPECIAL] < 15 && move_cooldown[AT_DSPECIAL] >  10){
		gpu_set_fog(1, nspecialrecovercolor, 0, 1);
		draw_sprite_ext(sprite_index, image_index, x, y, 1 * spr_dir, 1, 0, nspecialrecovercolor, .70);
		gpu_set_fog(0, c_white, 0, 0);
	}
	
	if (move_cooldown[AT_DSPECIAL] < 6 && move_cooldown[AT_DSPECIAL] > 0){
		gpu_set_fog(1, nspecialrecovercolor, 0, 1);
		draw_sprite_ext(sprite_index, image_index, x, y, 1 * spr_dir, 1, 0, nspecialrecovercolor, .70);
		gpu_set_fog(0, c_white, 0, 0);
	}
}

// Draws the Down Special menu and icons when selecting a gift
if (attack == AT_NSPECIAL && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){

	if (window == 1 and special_down && window_timer > 5){
		draw_sprite_ext(sprite_get("dspecialmenu"), 0, x + 1, y - 37, 1, 1, 0, c_white, .05 * window_timer);	
	}

//	if (window == 2 and special_down){
//		draw_sprite_ext(sprite_get("dspecialmenu"), 0, x + 1, y - 37, 1, 1, 0, c_white, .125 * window_timer);	
//	}

	if ((window == 2 and special_down) || (window == 3 && special_down) && !special_pressed){
		draw_sprite_ext(sprite_get("dspecialmenu"), 0, x + 1, y - 37, 1, 1, 0, c_white, 1);

		draw_sprite_ext(sprite_get("gifts"), 0, x + 46, y - 34, up0, up0, 0, c_white, 1);
		draw_sprite_ext(sprite_get("gifts"), 1, x, y + 10, up1, up1, 0, c_white, 1);
		draw_sprite_ext(sprite_get("gifts"), 2, x - 46, y -  34, up2, up2, 0, c_white, 1);
		draw_sprite_ext(sprite_get("gifts"), 3, x, y - 88, up3, up3, 0, c_white, 1);
	}
	
	if (window == 3 && window_timer >= 5 && window_timer <= 15){
		switch (spr_dir){
			case 1:
				draw_sprite_ext(sprite_get("gifts"), GrappleMode, x - 16, y - 90, 1, 1, 0, c_white, .20 * (window_timer-5));
			break;
			case -1:
				draw_sprite_ext(sprite_get("gifts"), GrappleMode, x + 16, y - 90, 1, 1, 0, c_white, .20 * (window_timer-5));
			break;
		}
	}
}

// MINI METER DISPLAY


if (attack != AT_NSPECIAL){
	if (PreviousMeter != LoveMeter && LoveMeter != 0){
		MiniM_display_timer = 60;
		PreviousMeter = LoveMeter;
	}

	if (MiniM_display_timer >= 0){

		draw_sprite_ext(sprite_get("mini_meter"), 0, x, y + 10, 1, 1, 0, c_white, MiniM_Alpha);
		draw_sprite_part_ext(sprite_get("mini_meter"), 1, 0, 0, LoveMeter / 3.2, 22, x - 31, y - 1, 1, 1, c_white, MiniM_Alpha);
			
		if (MiniM_display_timer >= 20){
			MiniM_Alpha = 1;
		}
		else {
			MiniM_Alpha = MiniM_Alpha - .05;
		}
		
		
		if (LoveMeter == 200){
			draw_debug_text(x - 14, y + 20, string("FULL"));
		}
		if (LoveMeter >= 100 && LoveMeter < 200){
			draw_debug_text(x - 10, y + 20, string(LoveMeter));
		}
		if (LoveMeter < 100 && LoveMeter != 0){
			draw_debug_text(x - 2, y + 20, string(LoveMeter));
		}
		if (LoveMeter == 0){
			draw_debug_text(x + 6, y + 20, string(LoveMeter));
		}
		
		MiniM_display_timer--;
	}
}


if (attack == AT_NSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
	if (PreviousMeter != LoveMeter && LoveMeter != 0){
		MiniM_display_timer = 60;
		PreviousMeter = LoveMeter;
	}

	if (MiniM_display_timer >= 0){

		draw_sprite_ext(sprite_get("mini_meter"), 0, x, y - 29, 1, 1, 0, c_white, MiniM_Alpha);
		draw_sprite_part_ext(sprite_get("mini_meter"), 1, 0, 0, LoveMeter / 3.2, 22, x - 31, y - 40, 1, 1, c_white, MiniM_Alpha);
			
		if (MiniM_display_timer >= 20){
			MiniM_Alpha = 1;
		}
		else {
			MiniM_Alpha = MiniM_Alpha - .05;
		}
		
		
		if (LoveMeter == 200){
			draw_debug_text(x - 14, y - 20, string("FULL"));
		}
		if (LoveMeter >= 100 && LoveMeter < 200){
			draw_debug_text(x - 10, y - 20, string(LoveMeter));
		}
		if (LoveMeter < 100 && LoveMeter != 0){
			draw_debug_text(x - 2, y - 20, string(LoveMeter));
		}
		if (LoveMeter == 0){
			draw_debug_text(x + 6, y - 20, string(LoveMeter));
		}
		
		MiniM_display_timer--;
	}
}





/*
// Draws the flash animation during Nspecial
if (attack == AT_DSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
	if (window == 2){
		switch (spr_dir){
			case 1:
				draw_sprite_ext(sprite_get("nspecialfx"), window_timer/3, x + 20, y, 1, 1, 0, c_white, .70)
			break;
			case -1:
				draw_sprite_ext(sprite_get("nspecialfx"), window_timer/3, x - 20, y - 106, 1, 1, 180, c_white, .70)
			break;
		}
	}
}
*/

/*
// Draws the Ribbon effect with extending string length
var RibbonSprite = sprite_get("string");
var Ribbons = sprite_get("gifts");
//var	ca = sprite_get("stickygoo");
if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
	with (oPlayer){
		if (other.attack == AT_NTHROW && isRibbon && other.window >= 2 && other.state_timer < 43){
			draw_sprite_ext(RibbonSprite, 1, x, y - 20, (other.spr_dir * point_distance(x, y, other.x, other.y))/10, 1, (arctan((other.y - y) / (x - other.x)) * 180 / pi), c_white, 1)		
			draw_sprite_ext(Ribbons, 2, x , y - 25, 1.3 * other.spr_dir, 1.3, 0, c_white, 1)		
		}	
		if (other.attack == AT_NTHROW && isRibbon && other.window >= 2 && other.state_timer >= 43){
			draw_sprite_ext(RibbonSprite, 1, x - (17 * spr_dir), y - 20, (other.spr_dir * point_distance(x, y, other.x + (-30 * other.spr_dir), other.y - 10))/10, 2.3 - ((other.state_timer)/48), (arctan((other.y - 10 - y) / (x - (other.x + (20 * other.spr_dir)))) * 180 / pi), c_white, 1)		
			draw_sprite_ext(Ribbons, 2, x , y - 25, 1.5 * other.spr_dir, 1.5, 0, c_white, 1)		
		}	
	}
}
*/

// Some code junk
//draw_debug_text(360, 200, "Armor: " + string(soft_armor));
//draw_debug_text(360, 220, "FA: " + string(focus_attack));
//draw_debug_text(360, 240, "Break: " + string(focus_armorbreak));
//draw_debug_text(360, 260, "HSP: " + string(hsp));
//draw_debug_text(360, 280, "VSP: " + string(vsp));

//draw_debug_text(x, y - 100, "Thorn: " + string(isThorn));

//draw_debug_text(x, y - 100, string(isFspecial));

// Draws the opponent in front of Date Girl during her down throw
with(oPlayer){
	if (hitpause && isCandy){
		shader_start();
			draw_sprite_ext(sprite_index, 1, x, y, spr_dir, 1, 0, c_white, 1);
		shader_end();
	}
}
