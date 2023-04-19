shader_start();

if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) and attack == AT_NSPECIAL){
	if(window == 2){
    	draw_sprite_ext(sprite_get("nspecial_arms"), window_timer / 2, x + 20 * spr_dir, y - 0, spr_dir, 1, nspecial_angle * -spr_dir, c_white, 1);
	}
}

	
	
shader_end();



if (attack == AT_NSPECIAL){
    if(instance_exists(splatbomb) && instance_exists(big_splatter)){
    	//sound_play(sound_get("Lock_On00"));
    	draw_sprite(sprite_get("target"), state_timer / 4 , splatbomb.x - 15, splatbomb.y - 20);
   	}
}

if (attack == AT_FSPECIAL){
    if(instance_exists(splatbomb) && splatbomb.bomb_land = true) && (window > 2 || (instance_exists(specs)|| instance_exists(headphones)|| instance_exists(bobblehat))){
	   	draw_sprite(sprite_get("target"), state_timer / 4 , splatbomb.x - 15, splatbomb.y - 20);
   	}
}

if (attack == AT_USPECIAL){
    if(instance_exists(splatbomb) && window > 3){
    	draw_sprite(sprite_get("target"), state_timer / 4 , splatbomb.x - 15, splatbomb.y - 20);
   	}
}

if (attack == AT_DSPECIAL){
    if(instance_exists(splatbomb) && (instance_exists(specs)|| instance_exists(headphones)|| instance_exists(bobblehat))){
    	draw_sprite(sprite_get("target"), state_timer / 4 , splatbomb.x - 15, splatbomb.y - 20);
   	}
}


