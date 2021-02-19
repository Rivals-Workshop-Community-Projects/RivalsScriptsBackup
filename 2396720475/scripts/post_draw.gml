// post_draw.gml
// Draws sprites in front of the player

//draw_sprite_ext(sprite_get("needle"), -1, x, y, 1, 1, needle_angle, c_white, 1);	


if (attack == AT_USPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && window <= 2){
shader_start();
	switch (needle_angle){
		case 0:
			needle_sprite = draw_sprite_ext(sprite_get("needle"), -1, x + 30, y - 15, 1, 1, needle_angle, c_white, 1);	
		break;
		case 45:
			needle_sprite = draw_sprite_ext(sprite_get("needle"), -1, x + 15, y - 15 - 15, 1, 1, needle_angle, c_white, 1);	
		break;
		case 90:
			needle_sprite = draw_sprite_ext(sprite_get("needle"), -1, x, y - 30 - 15, 1, 1, needle_angle, c_white, 1);	
		break;
		case 135:
			needle_sprite = draw_sprite_ext(sprite_get("needle"), -1, x - 15, y - 15 - 15, 1, 1, needle_angle, c_white, 1);	
		break;
		case 180:
			needle_sprite = draw_sprite_ext(sprite_get("needle"), -1, x - 30, y - 15, 1, 1, needle_angle, c_white, 1);	
		break;
		case 225:
			needle_sprite = draw_sprite_ext(sprite_get("needle"), -1, x - 15, y + 15 - 15, 1, 1, needle_angle, c_white, 1);	
		break;
		case 270:
			needle_sprite = draw_sprite_ext(sprite_get("needle"), -1, x, y + 30 - 15, 1, 1, needle_angle, c_white, 1);	
		break;
		case 315:
			needle_sprite = draw_sprite_ext(sprite_get("needle"), -1, x + 15, y + 15 - 15, 1, 1, needle_angle, c_white, 1);	
		break;
		case 360:
			needle_sprite = draw_sprite_ext(sprite_get("needle"), -1, x + 30, y - 15, 1, 1, needle_angle, c_white, 1);	
		break;
	}
shader_end();
}

// Some code junk

/*
with (needleplatform_solid){
	draw_debug_text(x, y - 40, "Attached: " + string(canmove));
	draw_debug_text(x, y - 60, "Standing: " + string(standing));
}
*/

//draw_debug_text(x, y - 80, "Window Timer: " + string(window_timer));
//draw_debug_text(x, y - 100, "LoveMeter Bal: " + string(LoveMeter_Balloon));

//draw_debug_text(x, y - 100, "Thorn: " + string(isThorn));

//draw_debug_text(x, y - 100, string(isFspecial));

