
if(attack == AT_DSPECIAL){
    if(window == 4){
		if(window_timer = 1){
			if(hit_player_obj != noone){
				old_prat_land_time = hit_player_obj.prat_land_time;
			}
		}
		if(window_timer = 2){
			if(was_parried == true){
				hit_player_obj.prat_land_time = 99;
			}
		}
    }
}

if(hit_player_obj != noone && old_prat_land_time != 0 && old_prat_land_time != hit_player_obj.prat_land_time){
	if(hit_player_obj.state != PS_PRATLAND ){
		hit_player_obj.prat_land_time = old_prat_land_time;
	}
}

//MOTION BLUR CODE
with(asset_get("oPlayer")) {
	//Move back all other frames
	for(var i = array_length_1d(blur) - 1; i > 0; i--) {
		blur[@ i] = blur[i - 1];
	}
	blur[@ i] = [
		sprite_index,
		image_index,
		x,
		y,
		image_xscale,
		image_yscale,
		image_angle,
		image_blend,
		image_alpha,
	];
}


//game start stuff
if (get_gameplay_time() == 10) {
    set_attack(AT_EXTRA_2);
}



if (galaxy_timer == 0 and instance_exists(hit_player_obj) and hit_player_obj.activated_kill_effect)
{
    galaxy_timer = 90;


}
galaxy_timer = max(galaxy_timer-1,0)








init_shader();



if(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
if (attack == AT_DSPECIAL){
    if (window == 2){
    	outline_color = [window_timer*10,0 ,0 ];
    }else{
        outline_color = [ 0, 0, 0 ];
    }
}


}else{
    outline_color = [ 0, 0, 0 ];
    
}
