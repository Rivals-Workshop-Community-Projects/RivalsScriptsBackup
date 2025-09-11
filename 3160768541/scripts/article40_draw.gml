/*
draw_rectangle_colour(get_marker_x(1), get_marker_y(1), get_marker_x(1)+2, get_marker_y(1)+2, c_red, c_red, c_red, c_red, false);
draw_rectangle_colour(get_marker_x(2), get_marker_y(2), get_marker_x(2)+2, get_marker_y(2)+2, c_red, c_red, c_red, c_red, false);
draw_rectangle_colour(get_marker_x(3), get_marker_y(3), get_marker_x(3)+2, get_marker_y(3)+2, c_red, c_red, c_red, c_red, false);*/

//draw_sprite_ext( sprite_get("plat"), 0, get_marker_x(1), get_marker_y(1), 4, 4, 0, -1, 1 )


if (move_ref.phase==1){
	if (move_ref.pausetime>0){
	if (move_ref.pausetime<120){
		var tmp_a = ease_sineIn( 150, 0, move_ref.pausetime, 120 )/100;
		var tmp_b = ease_sineOut( 200, 0, move_ref.pausetime, 120 )/100;
		//print("c = "+string(tmp_a)+" - "+string(tmp_b))
		var tmp_c = tmp_a-tmp_b
		var tmp_d = ease_quartIn( 200, 260, move_ref.pausetime, 120 )/100;
		draw_sprite_ext( sprite_get("plat"), 1, x, y, tmp_d, tmp_d, 0, -1, tmp_c )
		var tmp_d = ease_quartIn( 200, 260, move_ref.pausetime+20, 120 )/100;
		draw_sprite_ext( sprite_get("plat"), 1, x, y, tmp_d, tmp_d, 0, -1, tmp_c )
	}
	}
}