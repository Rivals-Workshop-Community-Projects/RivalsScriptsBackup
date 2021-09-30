




//e

if (variable_instance_exists(id, "body")){
	draw_sprite_ext( sprite_get("hud_cooldown"), nsp_remain, temp_x+16, temp_y-4, 2, 2, 0, -1, 1 )
	if (nsp_locked>0){
		draw_sprite_ext( sprite_get("hud_cooldown"), 4, temp_x+16, temp_y-4, 2, 2, 0, -1, 0.5 )
	}
	
	//boosts area
	var b_x = temp_x + 58;
	var b_y = temp_y - 18;
	if(boost_duration){
		var tmp_index = 0 + boost_duration * 9 / boost_duration_max;
		//that's:
		//starting animation frame +
		//current time *
		//number of anim frame in the duration /
		//time it takes
		draw_sprite_ext( sprite_get("boosts_icon"), boost_selected-1, b_x, b_y, 2, 2, 0, -1, 1 )
		draw_sprite_ext( sprite_get("hud_boosts_cd"), tmp_index, b_x, b_y, 2, 2, 0, -1, 0.8 )
	}else{
		draw_sprite_ext( sprite_get("hud_boosts"), nsp_remain, b_x, b_y, 2, 2, 0, -1, 0.7 )
		draw_sprite_ext( sprite_get("boosts_number"), boost_left, b_x-1, b_y+1, 2, 2, 0, -1, 1 )
	}
}