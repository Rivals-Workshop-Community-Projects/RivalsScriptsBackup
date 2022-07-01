//post-draw

if ((state==PS_ATTACK_GROUND||state==PS_ATTACK_AIR)&&attack==AT_NSPECIAL){
	if (window==1){
		var c_tmp_y1 = ease_quartOut( -24, -56, window_timer, get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH));
		var c_tmp_y2 = ease_expoIn( 0, 6, window_timer, get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH));
		var c_tmp_y3 = c_tmp_y1 + c_tmp_y2
		shader_start()
		draw_sprite( sprite_get("the_man"), 0, x+(64*spr_dir), y-16+c_tmp_y3 )
		draw_sprite( sprite_get("the_vase"), 0, x-(64*spr_dir), y+10+c_tmp_y3 )
		shader_end()
	}
}