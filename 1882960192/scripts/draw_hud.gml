//HUD stuff to show NSpecial's charging

if wblastcharge < 5 {
draw_sprite(sprite_get("wandpower"), 0, temp_x+21, temp_y-14);
}

if wblastcharge >= 5 {
draw_sprite(sprite_get("wandpower"), 1, temp_x+21, temp_y-14);
}

if wblastcharge >= 15 {
draw_sprite(sprite_get("wandpower"), 2, temp_x+21, temp_y-14);
}

if wblastcharge >= 35 {
draw_sprite(sprite_get("wandpower"), 3, temp_x+21, temp_y-14);
}

if wblastcharge >= 55 {
draw_sprite(sprite_get("wandpower"), 4, temp_x+21, temp_y-14);
}

if (superbluey) {
	draw_debug_text(temp_x + 6,temp_y - 20,"bluer mode detected!!!!!");
	}
	
user_event(11);