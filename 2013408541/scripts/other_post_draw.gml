if ("sworded" in self && sworded != 0 && "other_player_id" in self)
{
	with (other_player_id)
	{
		shader_start();
		draw_sprite_ext(swordin, 0, other.x, other.y-32, -spr_dir, 1, 0, c_white, 1 );
		shader_end();
	}
}

if ("runeM" in other_player_id && other_player_id.runeM && last_attack == AT_FSTRONG && hit_player_obj == other_player_id) {
    gpu_set_blendmode_ext_sepalpha(bm_inv_dest_color,bm_inv_src_color,bm_src_alpha,bm_src_alpha);
    gpu_set_colorwriteenable(true,true,true,true);
    draw_set_alpha(0.5);

	draw_circle_colour(x, y - floor(char_height/2), floor(char_height*ease_expoOut(0,12,floor(hitstop),floor(hitstop_full))/10), c_white, c_white, false);
	draw_circle_colour(x, y - floor(char_height/2), floor(char_height*ease_expoOut(0,17,floor(hitstop),floor(hitstop_full))/10), c_white, c_white, false);

    draw_set_alpha(1);
    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode(bm_normal);
}