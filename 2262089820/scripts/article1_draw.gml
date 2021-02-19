//a

//0.2 //0.3
//0.0009 //0.0012
//
//0.25 //0.2

var spr_oldstar = sprite_get("stars4")

/*
if (obj_stage_main.optimalmode){ //optimized
	var alp_start = 0.5
	var alp_dec = 0.008
	var tmp_angle = image_angle
	var ang_inc = 0.7
}else{//not optimized as much
	var alp_start = 0.3
	var alp_dec = 0.002
	var tmp_angle = image_angle
	var ang_inc = 0.2
}

for (var tmp_a = alp_start; tmp_a>0; tmp_a -= alp_dec){
	tmp_angle += ang_inc
	ang_inc += 0.005
	draw_sprite_ext( spr_oldstar, 0, temp_x, temp_y, 2, 2, tmp_angle, -1, tmp_a/2 );
}*/

gpu_set_blendmode(bm_add);
draw_sprite_ext( sprite_get("stars6"), 0, temp_x, temp_y, 1, 1, image_angle, -1, 1 );
gpu_set_blendmode(bm_normal);

	draw_sprite_ext( spr_oldstar, 0, temp_x, temp_y, 2, 2, image_angle, -1, 1 );
	
if (!obj_stage_main.optimalmode){ // if optimal is not on, display star flares
	
	draw_sprite_ext( spr_oldstar, 0, temp_x+1, temp_y, 2, 2, image_angle, -1, 0.1 );
	draw_sprite_ext( spr_oldstar, 0, temp_x+1, temp_y, 2, 2, image_angle, -1, 0.1 );
	draw_sprite_ext( spr_oldstar, 0, temp_x-1, temp_y, 2, 2, image_angle, -1, 0.1 );
	draw_sprite_ext( spr_oldstar, 0, temp_x+2, temp_y, 2, 2, image_angle, -1, 0.1 );
	draw_sprite_ext( spr_oldstar, 0, temp_x-2, temp_y, 2, 2, image_angle, -1, 0.1 );
	draw_sprite_ext( spr_oldstar, 0, temp_x+3, temp_y, 2, 2, image_angle, -1, 0.1 );
	draw_sprite_ext( spr_oldstar, 0, temp_x-3, temp_y, 2, 2, image_angle, -1, 0.1 );
	draw_sprite_ext( spr_oldstar, 0, temp_x+4, temp_y, 2, 2, image_angle, -1, 0.1 );
	draw_sprite_ext( spr_oldstar, 0, temp_x-4, temp_y, 2, 2, image_angle, -1, 0.1 );
	draw_sprite_ext( spr_oldstar, 0, temp_x, temp_y+1, 2, 2, image_angle, -1, 0.1 );
	draw_sprite_ext( spr_oldstar, 0, temp_x, temp_y-1, 2, 2, image_angle, -1, 0.1 );
	draw_sprite_ext( spr_oldstar, 0, temp_x, temp_y+2, 2, 2, image_angle, -1, 0.1 );
	draw_sprite_ext( spr_oldstar, 0, temp_x, temp_y-2, 2, 2, image_angle, -1, 0.1 );
	
	draw_sprite_ext( spr_oldstar, 0, temp_x, temp_y, 1.8, 1.8, fake_angle, -1, 0.2 );
	
}
