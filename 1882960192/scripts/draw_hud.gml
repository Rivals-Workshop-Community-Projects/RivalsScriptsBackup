//HUD stuff to show NSpecial's charging

if wblastcharge < 5 {
draw_sprite(sprite_get("wandpower"), 0, temp_x+141, temp_y-14);
}

if wblastcharge >= 5 {
draw_sprite(sprite_get("wandpower"), 1, temp_x+141, temp_y-14);
}

if wblastcharge >= 25 {
draw_sprite(sprite_get("wandpower"), 2, temp_x+141, temp_y-14);
}

if wblastcharge >= 45 {
draw_sprite(sprite_get("wandpower"), 3, temp_x+141, temp_y-14);
}
	
user_event(11);