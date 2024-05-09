//Background colors update

switch(mode) {
	case 0://Inside stage
		if(image_alpha > 0){
			image_alpha -= 0.005;
		}
	break;
	case 1://Fog
		if(image_alpha < 0.3){
			image_alpha += 0.005;
		}
	break;
	case 2://Stay for darkness
		if(image_alpha < 0.65){
			image_alpha += 0.005;
		}
	break;
	case 3://Remain in Fog
		if(image_alpha > 0.3){
			image_alpha -= 0.005;
		}
	break;
	case 4://Go Back Down
		if(image_alpha > 0){
			image_alpha -= 0.005;
		}
	break;
}

/*
//Spawning fog
fog_time++;
if(fog_time == fog_wait){
	fog_time = 0;
}
if(fog_time == 0){
	has_spawned_fog = true;
}

if(has_spawned_fog == true){
	var new_fog = instance_create(get_marker_x(5) + fog_pos, get_marker_y(fog_spawn), "obj_stage_article", 2);
	fog_frame = (random_func(1, 11, true));
	fog_pos = -50 + (random_func(1, 100, true));
	fog_spawn = 5 + (random_func(2, 2, true));
	new_fog.hsp = (random_func(1, 10, true)) / 10;
	new_fog.sprite_index = sprite_get("cloud_"+string(fog_frame));
	has_spawned_fog = false;
}
*/