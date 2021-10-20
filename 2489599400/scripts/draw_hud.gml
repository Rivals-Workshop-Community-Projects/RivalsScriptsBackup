//HUD stuff to show NSpecial's charging

if tapecool > 0 {
draw_sprite(sprite_get("hud"), 1, temp_x+20, temp_y-0);
}
else {
draw_sprite(sprite_get("hud"), 0, temp_x+20, temp_y-0);
}
	