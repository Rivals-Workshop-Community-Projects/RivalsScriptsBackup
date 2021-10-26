muno_event_type = 4;
user_event(14);

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

//Shell missing frame

if (attack == AT_FSTRONG && state == PS_ATTACK_GROUND){
	if(window == 2 && window_timer < 1){
		draw_sprite_ext(sprite_get("green_shell"), 0, x+spr_dir*2, y-46 ,1*spr_dir,1,0,-1,1);
	}
}

//Beeg rune


if has_rune("L") {
	draw_sprite_ext(sprite_index, image_index, x, y ,2*spr_dir,2,0,c_white,1);	
}
	
