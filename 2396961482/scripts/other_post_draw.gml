
//im seeing this for the first time and wtf lukaru, how do you do this -mcduckyers
//final smash stuff
if(other_player_id.attack == 49 && other_player_id.fs_has_hit && other_player_id.fs_cinematic)
{
	if(!variable_instance_exists(id,"fs_ypos"))
	{
		fs_ypos = 0;
		rescale = 1;
	}
	if(other_player_id.window == 4 && other_player_id.window_timer == 11)
		fs_ypos = 40;
	if (other_player_id.window < 4)
		fs_ypos = 0;
	if (other_player_id.window == 6)
		fs_ypos = 90;
	if(small_sprites == 1)
		rescale = 2;

	draw_triangle_colour(0, 0, 5000, 5000, 5000, 0, c_white, c_white, c_white, 0);
	draw_triangle_colour(0, 0, 5000, 5000, 0, 5000, c_white, c_white, c_white, 0);
    shader_start();
	draw_sprite_ext(sprite_index, image_index, other_player_id.x+(150*-spr_dir), y-fs_ypos, 4*rescale*spr_dir, 4*rescale, 0, c_white, 1);
    shader_end();
}