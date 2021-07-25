if spawn_variables[1] == 1 {
	if rot2 < 180 draw_sprite(sprite_get("plat1_moon"), 0, x+dcos(rot2)*70, y)
	if rot < 180 draw_sprite(sprite_get("plat1_moon"), 0, x+dcos(rot)*40, y)
	
	draw_sprite(sprite_index,image_index,x,y)
	
	if rot >= 180 draw_sprite(sprite_get("plat1_moon"), 0, x+dcos(rot)*40, y)
	if rot2 >= 180 draw_sprite(sprite_get("plat1_moon"), 0, x+dcos(rot2)*70, y)
}