//pre_draw.gml

if ((state == PS_RESPAWN) || (attack == AT_TAUNT && free)) && (sprite_index == sprite_get("idle") || sprite_index == sprite_get("taunt")){
	var timePlay = (get_gameplay_time() / 4);
	draw_sprite_ext( sprite_get("plat_behind"), timePlay, x, y, 1, 1, 0, c_white, 1);
    //draw_sprite(sprite_get("plat"), 0, x, y);
}