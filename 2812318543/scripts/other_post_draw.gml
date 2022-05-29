with(other_player_id){

	shader_start();
	with(pHitBox){
		if(player_id == other && attack == AT_NSPECIAL_2 && hbox_num == 1){
			var ret_alpha = 0.3 + (0.4 * sin(degtorad(6 * (get_gameplay_time() % 30))));
			if(phase < 3) draw_sprite_ext(sprite_get("pandy_ntarget"), 0, targ_x, targ_y - 20, 2, 2, 0, c_white, ret_alpha);
		}
	}
	shader_end();

}