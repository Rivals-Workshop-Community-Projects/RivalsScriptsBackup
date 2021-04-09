// Article 2 pre_draw 

if (!touched_player){
	if (get_player_color(player) != 14){
		draw_sprite_ext(sprite_get("needle"), 0, x, y, 1, 1, angle, c_white, 1);
	}
	else {
		draw_sprite_ext(sprite_get("slime_needle"), 0, x, y, 1, 1, angle, c_white, 1);
	}
}
//draw_debug_text(x, y, "State timer: " + string(image_angle));
