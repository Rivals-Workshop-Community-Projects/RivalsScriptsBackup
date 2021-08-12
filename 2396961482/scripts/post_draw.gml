//im seeing this for the first time and wtf lukaru, how do you do this -mcduckyers
//final smash stuff
if(attack == 49 && fs_has_hit && fs_cinematic)
{
	draw_sprite_ext(sprite_get("whitebg"), 0, x-60*spr_dir, y-50, 1.5, 1.5, 0, c_white, 1);
    shader_start();
	draw_sprite_ext(sprite_index, image_index, x, y, 4*spr_dir, 4, 0, c_white, 1);
    shader_end();
}

