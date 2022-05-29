//pre draw is the one that is behind. you may be looking for: "post draw"

if(state != 0 && player_id.in_affinity){
	
	//affinity thread
	var threadlength = point_distance(x, y - 35, player_id.x, player_id.y - 37)/affinity_radius[affinity_level];
	var frame = (get_gameplay_time() % 31)/8;
	var x_adj = 0;
	var y_adj = 0;
	if(affinity_level == 2){
		frame = (get_gameplay_time() % 39)/8;
		
		//i forgot to set the origin for the high thread so i wrote this whole code to use sin/cos
		//off the angle between the article and player and adjust the spawn position so its still
		//centered before realizing.
		
		//x_adj = -10 * sin(degtorad(point_direction(x, y - 35, player_id.x, player_id.y - 37)));
		//y_adj = 15 * cos(degtorad(point_direction(x, y - 35, player_id.x, player_id.y - 37)));
	}
	draw_sprite_ext( spr_thread[affinity_level], frame, x + x_adj, y - 35 - y_adj, 2 * (threadlength * (1.2 - (0.1) * affinity_level)), 2, 
		point_direction(x, y - 35, player_id.x, player_id.y - 37), c_white, 0.6 );
	
	//jittering thread afterimages
	for(i = 0; i < 2; i++){
		var jitterx = random_func( 0 + (i*2), 7, true ) - 3;
		var jittery = random_func( 1 + (i*2), 7, true ) - 3;
		draw_sprite_ext( spr_thread[affinity_level], frame, x + jitterx + x_adj, y - 35 + jittery - y_adj, 2 * (threadlength * (1.2 - (0.1) * affinity_level)), 2, 
			point_direction(x, y - 35, player_id.x, player_id.y - 37), c_white, 0.5 - (i*0.15) );
	}
}

//this is the worst code ive written in my life and is somehow the only thing i got to work
with(player_id){
    
	if(sprite_index == sprite_get("dspecial") && image_index == 7){
		init_UNshader = true;
		init_shader();
		
		shader_start();
		draw_sprite_ext(sprite_get("wait"), 0, x, y,  2 * spr_dir, 2, 0, c_white, 1);
		//gpu_set_fog(true,c_black,0,1);
		draw_sprite_ext(sprite_get("wait"), 0, x, y, 2 * spr_dir, 2, 0, c_black, 0.25 );
		//gpu_set_fog(false,c_white,0,0);
		
		init_UNshader = false;
		init_shader();
		shader_start();
	}
}