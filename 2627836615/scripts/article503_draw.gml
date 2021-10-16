if z+zsp > 0 {
	draw_sprite_ext(sprite_index,1,x,y-z,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
} else draw_self();

//draw_debug_text(floor(x),floor(y),string(collision_layer)+" "+string(change_layer))