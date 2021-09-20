//pre_draw.gml

if ((state == PS_RESPAWN) || (attack == AT_TAUNT && free)) && (sprite_index == sprite_get("idle") || sprite_index == sprite_get("taunt")){
    draw_sprite(sprite_get("plat_behind"), 0, x, y);
    //draw_sprite(sprite_get("plat"), 0, x, y);
}

if (state == PS_SPAWN){
	if (spr_dir == 1){
		draw_sprite(sprite_get("intro_noddy"), image_index, x, y);
	} else {
		draw_sprite(sprite_get("intro_noddy_left"), image_index, x, y);
	}
}