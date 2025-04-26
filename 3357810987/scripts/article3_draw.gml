

//Drawing glow
var offset = 2+dsin(state_timer*5);
var alpha = .5+dsin(state_timer*5)*.2;
var c_glow = make_colour_rgb(67, 206, 216);

gpu_set_blendmode(bm_add);
gpu_set_fog(true, c_glow, 1, 0)
draw_sprite_ext(sprite_index, image_index, x-offset, y-offset, image_xscale*spr_dir + spawn_emphasis, image_yscale + spawn_emphasis, 0, c_white, 0.5*image_alpha);
draw_sprite_ext(sprite_index, image_index, x+offset, y-offset, image_xscale*spr_dir + spawn_emphasis, image_yscale + spawn_emphasis, 0, c_white, 0.5*image_alpha);
draw_sprite_ext(sprite_index, image_index, x+offset, y+offset, image_xscale*spr_dir + spawn_emphasis, image_yscale + spawn_emphasis, 0, c_white, 0.5*image_alpha);
draw_sprite_ext(sprite_index, image_index, x-offset, y+offset, image_xscale*spr_dir + spawn_emphasis, image_yscale + spawn_emphasis, 0, c_white, 0.5*image_alpha);
gpu_set_fog(false, c_white, 1, 0);
gpu_set_blendmode(bm_normal);

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale*spr_dir, image_yscale, 0, c_white, image_alpha);

switch(spawn_variables[0]){//Effect specific vfx
	case 0://Nail
	//Nothing
	break;
	case 1://Eye
    //Nothing
	break;
	case 2://Rib
	//Nothing
	break;
	case 3://Ring
    //Nothing
	break;
	case 4://Heart
	    with(oPlayer){
	    	if(player == other.hitplayer){
            	if (blood_glow < 0){
                	var blood_start = 3;
                	var c_blood = make_colour_rgb(235,26,26);
                	
                	shader_start();
                	//Inverted colors pure black silhouette
                	gpu_set_blendmode_ext(bm_inv_dest_colour, bm_zero);
                	draw_rectangle_colour(x-sprite_width*4, y-sprite_height*4, x+sprite_width*4, y+sprite_height*4, c_white,c_white,c_white,c_white,false);
                	gpu_set_blendmode(bm_normal);
                	draw_sprite_ext(sprite_index, image_index, x + blood_glow/2, y + blood_glow/2, spr_dir*(small_sprites + 1 + blood_start+blood_glow)/2, (small_sprites + 1 + blood_start+blood_glow)/2, image_angle, c_black, 1 * image_alpha);
                	gpu_set_blendmode_ext(bm_inv_dest_colour, bm_zero);
                	draw_rectangle_colour(x-sprite_width*4, y-sprite_height*4, x+sprite_width*4, y+sprite_height*4, c_white,c_white,c_white,c_white,false);
                	gpu_set_blendmode(bm_normal);
                	//Adding in coloring
                	draw_sprite_ext(sprite_index, image_index, x + blood_glow/2, y + blood_glow/2, spr_dir*(small_sprites + 1 + blood_start + blood_glow)/2, (small_sprites + 1 + blood_start+blood_glow)/2, image_angle, c_blood, 1 * image_alpha);
                	shader_end();
                }
	    	}
	    }
	break;
}