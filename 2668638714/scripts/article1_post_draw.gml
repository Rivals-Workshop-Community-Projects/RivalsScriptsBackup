if (inactive_timer != 0)
{
	shader_end();
	gpu_push_state();
	gpu_set_fog(true,c_gray,0,1);
	draw_sprite_ext(sprite_index, image_index,x,y,spr_dir,image_yscale,image_angle,-1,0.6);
	gpu_pop_state();
}