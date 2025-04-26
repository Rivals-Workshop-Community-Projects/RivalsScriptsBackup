//
switch type {
	case 0:
		gpu_set_blendmode(bm_add); 
		draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, c_white, dsin(state_timer)*.5); 
		gpu_set_blendmode(bm_normal);
		
		draw_sprite_ext(sprite_index, 1, x, y, image_xscale*spr_dir, image_yscale, image_angle*.5, c_white, 1);
		break;
}