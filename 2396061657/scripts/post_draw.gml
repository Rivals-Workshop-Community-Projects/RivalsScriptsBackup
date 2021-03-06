// post_draw.gml
// Draws sprites in front of the player
	

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
if (move_cooldown[AT_NSPECIAL] < 40 && move_cooldown[AT_NSPECIAL] != 0){
	draw_sprite_ext(sprite_get("recharged"), 10 - (move_cooldown[AT_NSPECIAL] / 4), x, y - 70, 1, 1, 0, c_white, 1);
}

// Some wack code if I want to add a refresh icon for when Fspecial cooldown comes back
/*
if (move_cooldown[AT_FSPECIAL] != 0 && move_cooldown[AT_FSPECIAL] < 18){
	draw_sprite_ext(sprite_get("grabrecharged"), 6 - (move_cooldown[AT_FSPECIAL] / 3), x, y - 60, 1, 1, 0, c_white, 1);
}
*/

// Draws the Down Special menu and icons when selecting a gift
if (attack == AT_DSPECIAL){

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

// Draws the flash animation during Nspecial
if (attack == AT_NSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
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


// Some code junk
//draw_debug_text(x, y - 40, "CandyKB: " + string(CandyKB));
//draw_debug_text(x, y - 60, "Room: " + string(room));
//draw_debug_text(x, y - 80, "LoveMeter Rib: " + string(LoveMeter_Ribbon));
//draw_debug_text(x, y - 100, "LoveMeter Bal: " + string(LoveMeter_Balloon));

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
