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

//Beeg rune


if has_rune("L") {
	draw_sprite_ext(sprite_index, image_index, x, y ,4*spr_dir,4,0,c_white,1);	
}
	
