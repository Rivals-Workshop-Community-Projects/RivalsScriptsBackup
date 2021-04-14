shader_start();
if ("activeBuff" in self) {
	if (usesAltHud == 0) {draw_sprite(sprite_get("hud_bg"), 0, temp_x + 138, temp_y - 6);}
	else {draw_sprite(sprite_get("hud2_bg"), 0, temp_x + 138, temp_y - 6);}
	
	if (activeBuff == 1) {draw_sprite(sprite_get("hud_icons"), 0, temp_x + 86, temp_y - 8);}
	else if (activeBuff == 2) {draw_sprite(sprite_get("hud_icons"), 1, temp_x + 86, temp_y - 8);}

	if (activeBuffUses > 0) {draw_sprite(sprite_get("hud_icons"), activeBuffUses + 1, temp_x + 106, temp_y - 8);}
	
	if (usesAltHud == 0) {
		if (actionMeterFill >= 1) {
			draw_sprite(sprite_get("hud_meter"), ((actionMeterFill / 200) * 43) + 1, temp_x + 162, temp_y - 5);
		} else {
			draw_sprite(sprite_get("hud_meter"), 0, temp_x + 162, temp_y - 5);
		}
		
		if (actionMeterFill > 199) {
			actionMeterAnimTimer++;
			if (actionMeterAnimTimer > 3) {draw_sprite(sprite_get("hud_meter"), 45, temp_x + 162, temp_y - 5);}
			if (actionMeterAnimTimer > 6) {actionMeterAnimTimer = 0;}
		}
	} else {
		if (actionMeterFill >= 1) {
			draw_sprite(sprite_get("hud2_meter"), ((actionMeterFill / 200) * 43) + 1, temp_x + 162, temp_y - 5);
		} else {
			draw_sprite(sprite_get("hud2_meter"), 0, temp_x + 162, temp_y - 5);
		}
		
		if (actionMeterFill > 199) {
			actionMeterAnimTimer++;
			if (actionMeterAnimTimer > 3) {draw_sprite(sprite_get("hud2_meter"), 45, temp_x + 162, temp_y - 5);}
			if (actionMeterAnimTimer > 6) {actionMeterAnimTimer = 0;}
		}
	}
	
	if (actionMeterFill >= 1 && actionMeterFill <= 199) {
		draw_sprite_ext(sprite_get("hud_meter_overlay"), 0, temp_x + 111 + (2 * round(((actionMeterFill + 16.3) / 200) * 43)), temp_y - 5, 1, 1, 0, -1, 0.7 * (((1 - (actionMeterFill % (200/43))) * 0.25) + 0.75));
	}
}
shader_end();