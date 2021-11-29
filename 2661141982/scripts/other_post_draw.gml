//ZOOM BITCH
if(other_player_id.attack == 49 && other_player_id.window >= 6 && other_player_id.window <= 9 && other_player_id.fs_cinematic)
{
    hud_offset = 999;
    if(!variable_instance_exists(id,"rescale"))
    {
        rescale = 1;
    }
    if(small_sprites == 1)
        rescale = 2;

    draw_triangle_colour(-5000, -5000, 5000, 5000, 5000, -5000, c_white, c_white, c_white, 0);
    draw_triangle_colour(-5000, -5000, 5000, 5000, -5000, 5000, c_white, c_white, c_white, 0);
    shader_start();
    draw_sprite_ext(sprite_index, image_index, x, y+50, 2*rescale*spr_dir, 2*rescale, 0, c_white, 1);
    shader_end();
    fs_go_to_hud = true;
}
else
{
	if(variable_instance_exists(id,"rescale"))
    {
		rescale = 1;
        sizescale = 1;
    }
}