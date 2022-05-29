	fstrong_aura()
		// var _steps = 7;
		// var _xx = x;
		// var _yy = y;
		// var _radius = 50;
		// var p_color = get_player_color(player);
		// draw_primitive_begin(pr_trianglestrip);
		// // draw_vertex(_xx, _yy);
		// for(var i = -_steps; i < _steps; ++i;)
		// {
		// 	var p_o = random_func(i, 10, true);
		// 	var cal_r = p_o*static/100;
			
			
		// 	var cmake = i % 2 ? make_color_rgb( get_color_profile_slot_r(p_color, 0), get_color_profile_slot_g(p_color, 0), get_color_profile_slot_b(p_color, 0)) : make_color_rgb(255, 255, 255)
			
		//     draw_vertex_color(_xx + i*4,
		// 									    	_yy + cal_r, 
		// 									    	cmake, 1);
		// }
		// draw_primitive_end();


#define fstrong_aura()
if(state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR){
  if(attack == AT_FSTRONG and window < 3 and !reflect_id and game_time % 4 != 0){
	
		var _steps = 15;
		var _xx = x;
		var _yy = y - 50;
		var _radius = 50;
		var p_color = get_player_color(player);
		draw_primitive_begin(pr_trianglestrip);
		// draw_vertex(_xx, _yy);
		for(var i = 0; i <= _steps; ++i;)
		{
			var p_o = random_func(i == _steps ? 0 : i, 10, true);
			var cal_r = _radius + p_o + 10/(state_timer*0.7);
			var cmake = i % 2 ? make_color_rgb( get_color_profile_slot_r(p_color, 0), get_color_profile_slot_g(p_color, 0), get_color_profile_slot_b(p_color, 0)) : make_color_rgb(255, 255, 255)
		    draw_vertex_color(_xx + lengthdir_x(cal_r, 360 * i / _steps),
											    	_yy + lengthdir_y(cal_r, 360 * i / _steps), 
											    	cmake, 1);
		}
		draw_primitive_end();

  }
	
}

