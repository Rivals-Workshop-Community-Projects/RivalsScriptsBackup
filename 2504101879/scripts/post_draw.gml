//if phone_cheats[cheat_funny_snail]{
//	draw_debug_text(x, y, "woag");
//}

if (debugtime) {
	draw_debug_text(x-80, y, "bc: " + string(babycount));
	draw_debug_text(x-80, y+16, "bthrown: " + string(babythrown));
	draw_debug_text(x-80, y+32, string(id));
	draw_debug_text(x-80, y+44, "bfc: " + string(babyfollowingcount));
	draw_debug_text(x-80, y+60, "ux: " + string(ux) + " udestx: " + string(udest_x) + " tx: " + string(temp_x) + " x: " + string(x));
	draw_debug_text(x-80, y+76, "uy: " + string(uy) + " udesty: " + string(udest_y) + " ty: " + string(temp_y) + " y: " + string(y));
	//draw_debug_text(x-80, y+90, "st: " + string(spintimes) + " ts: " + string(timesspun) + " sc: " + string(strong_charge));
}

shader_start();
if (attack == AT_UTILT && window == 2 && window_timer >= 1) {
	if (get_player_color(player) == 7) {
		draw_sprite_ext(sprite_get("babyflygriffin"), image_index, temp_x, temp_y, spr_dir, 1, point_direction(temp_x, temp_y,x, y-50)+90, c_white, 1);
	}
	else {
		draw_sprite_ext(sprite_get("babyfly"), image_index, temp_x, temp_y, spr_dir, 1, point_direction(temp_x, temp_y,x, y-50)+90, c_white, 1);
	}
}

if (attack == AT_BAIR && window == 2 && image_index >= 4 && image_index <= 7) {
	if (get_player_color(player) == 7) {
		draw_sprite_ext(sprite_get("babyflygriffin"), image_index, temp_x, temp_y, -spr_dir, 1, point_direction(temp_x+(60*spr_dir), temp_y, x, y-50)+90, c_white, 1);
	}
	else {
		draw_sprite_ext(sprite_get("babyfly"), image_index, temp_x, temp_y, -spr_dir, 1, point_direction(temp_x+(60*spr_dir), temp_y, x, y-50)+90, c_white, 1);
	}
}
shader_end();
/*if (attack == AT_USPECIAL) {
    if (window > 1 && window < 4) {
		draw_sprite_ext(sprite_get("egg"), image_index, udest_x, udest_y, 1, 1, 0, c_white, 1);
    }
}*/

//user_event(12);



