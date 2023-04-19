//post_draw.gml

if (fspecialNoCashTextTimer != 0){
	if (fspecialNoCashTextTimer != 2
	&& fspecialNoCashTextTimer != 4
	&& fspecialNoCashTextTimer != 6
	&& fspecialNoCashTextTimer != 8
	&& fspecialNoCashTextTimer != 10
	&& fspecialNoCashTextTimer != 12
	&& fspecialNoCashTextTimer != 14
	&& fspecialNoCashTextTimer != 16
	&& fspecialNoCashTextTimer != 18
	&& fspecialNoCashTextTimer != 20){
		draw_debug_text(x - 56, y + 20,"Not enough cash!");
	}
}

//deed card recolor
if (sprite_index == sprite_get("dspecial")){
	draw_sprite_ext( sprite_get("dspecial_deedrecolor"), image_index, x, y, spr_dir, 1, 0, hud_color, 1 );
} else if (sprite_index == sprite_get("fspecial_deed")){
	draw_sprite_ext( sprite_get("fspecial_deed_recolor"), image_index, x, y, spr_dir, 1, 0, hud_color, 1 );
} else {
	draw_sprite_ext( sprite_get("empty"), image_index, x, y, 1, 1, 0, c_white, 1 );
}

// jail
if (inJail == true){
	draw_sprite_ext( sprite_get("nspecial_jail"), 0, x, y, 1, 1, 0, c_white, 1 );
}