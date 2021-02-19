//plat

if !inited{
	
	is_off = (abs(x - owner.x) % 32 != 0) ^^ width % 2; //am i offset from the tile grid? (0 = 1 tile in center, 1 = 2 tiles in center)
	
	width *= 2; //oops
	
	image_xscale = width; //only affects mask
	
	var i = 0;
	
	while (i < width){
		
		//0 middle
		//1 full end
		//2 half end
		//>0 left, <0 right
		
		var type = 0;
		var face = 1;
		
		if (i == 0){
			type = 1 + is_off;
		}
		else if (i == width - 1 || (!is_off && i == width - 2)){
			type = 1 + is_off;
			face = -1;
		}
		
		if (width == 2 && !is_off){
			type = 3;
		}
		
		var x_off = -16 * (floor(width / 2) - 1);
		
		array_push(segments, type * face);
		array_push(segments_pos, x_off + i * 16 - 16 * (i == width - 1 && is_off));
		i++;
		if !(is_off && i == 1) i++;
	}
	
	inited = true;
}



if (state == 0){ //spawning
	var s_t_max = 60;
	y = ease_cubeInOut(fake_y, real_y, state_timer, s_t_max);
	
	if (state_timer == s_t_max){
		setState(1);
	}
}



if (state == 1){
	mask_index = sprite_get("platform_mask");
	y = real_y;
}
else{
	mask_index = asset_get("empty_sprite");
}



if (state == 2){
	var s_t_max = 60;
	y = ease_cubeInOut(real_y, fake_y, state_timer, s_t_max);
	
	if (state_timer == s_t_max || y >= room_height){
		instance_destroy();
		exit;
	}
}



state_timer++;



#define setState(n_s)

state = n_s;
state_timer = 0;