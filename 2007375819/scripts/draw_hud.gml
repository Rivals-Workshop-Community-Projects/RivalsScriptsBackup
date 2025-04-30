//HUD stuff to show Blueytank's availability

if "hud_enable" not in self exit

shader_start();
if minionOut == true {
	draw_sprite(sprite_get("blueytank_hud"), 1, temp_x+190, temp_y+4);
	draw_sprite(sprite_get("blueytank_hud_overlay"), 1, temp_x+190, temp_y+4);
	}
	else if move_cooldown[AT_DSPECIAL] > 0 {
	draw_sprite(sprite_get("blueytank_hud"), 2, temp_x+190, temp_y+4);
	draw_sprite(sprite_get("blueytank_hud_overlay"), 2, temp_x+190, temp_y+4);
	}
	else {
	draw_sprite(sprite_get("blueytank_hud"), 0, temp_x+190, temp_y+4);
}

//HUD stuff to show H/Pizza Dino's availability
if HOut == true {
	draw_sprite(sprite_get("h_hud"), 1, temp_x+156, temp_y+4);
	draw_sprite(sprite_get("h_hud_overlay"), 1, temp_x+156, temp_y+4);
	}
	else if move_cooldown[AT_FSPECIAL] > 0 {
	draw_sprite(sprite_get("h_hud"), 2, temp_x+156, temp_y+4);	
	draw_sprite(sprite_get("h_hud_overlay"), 2, temp_x+156, temp_y+4);
	}
	else {
	draw_sprite(sprite_get("h_hud"), 0, temp_x+156, temp_y+4);
}
shader_end();