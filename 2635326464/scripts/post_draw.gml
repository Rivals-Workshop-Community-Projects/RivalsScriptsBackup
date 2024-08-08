// Golden shroom

if (attack == AT_NSPECIAL_2){

	//drift effects

	if (window >= 2){
		if(golden_charge == 2){
			drift_1 = 0;
			drift_2 = 1;
		} else if (golden_charge == 3){
			drift_1 = 2;
			drift_2 = 3;
		} else if (golden_charge == 4){
			drift_1 = 4;
			drift_2 = 5;
		}

		if (image_index mod 2 = 0) {
			drift_index = drift_1;
		} else drift_index = drift_2;

		if (golden_charge > 1){
			draw_sprite_ext(sprite_get("drift"), drift_index, x, y ,1*spr_dir,1,0,-1,1);
		}
	}
}


// Nair glow thingy

if ("has_tricked" in self){
	if ( (has_tricked == 1) || (has_charged_countdown) || (attack == AT_DATTACK && (window == 2 || window == 3) && has_hit && get_gameplay_time() > 1 && state == PS_ATTACK_GROUND)){
		gpu_set_fog(true, c_white, 0, 0);
		draw_sprite_ext(sprite_index, image_index, x, y ,2*spr_dir,2,0,c_white,0.35);
		gpu_set_fog(false, c_black, 0, 0);
	}
}

// Beeg rune


if has_rune("L") {
	draw_sprite_ext(sprite_index, image_index, x, y ,4*spr_dir,4,0,c_white,1);	
}
	
