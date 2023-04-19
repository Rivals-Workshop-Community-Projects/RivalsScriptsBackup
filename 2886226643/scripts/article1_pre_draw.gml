
if (state == 1){
	draw_sprite_ext(sprite_get("portal_idle"), portal_startup_timer, x, y, portal_size, portal_size, 0, c_white, 1);
}

if (state == 3){
	draw_sprite_ext(sprite_get("portal_black_hole"), state_timer/3, x, y, portal_size, portal_size, 0, c_white, 1);
}
