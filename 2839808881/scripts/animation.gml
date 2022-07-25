

// fix weird jittering that can happen when it tries to return to 0
if abs(hud_offset) < 1{
	hud_offset = 0;
}
if (jet_charge_stored) { //Fully charged
	outline_color = [ 0, 200, 255 ];
} else {
	outline_color = [ 0, 0, 0 ];
}
//uspecial
if (sprite_index != sprite_get("uspecial")){
	jet_flight_dir = 0;
} else {
	if (window == 3 || window == 4){
		if (jet_flight_dir != 0){
		
			//0: no dir: just forward.
			//1: up
			//2: up + right
			//3: right
			//4: down + right
			//5: down
			//6: down + left
			//7: left
			//8: up + left
		
			if (jet_flight_dir == 1){
				spr_angle = 90*spr_dir;
			} else if (jet_flight_dir == 2){
				spr_angle = 45;
			} else if (jet_flight_dir == 3){
				spr_angle = 0;
			} else if (jet_flight_dir == 4){
				spr_angle = -45;
			} else if (jet_flight_dir == 5){
				spr_angle = -90*spr_dir;
			} else if (jet_flight_dir == 6){
				spr_angle = 45;
			} else if (jet_flight_dir == 7){
				spr_angle = 0;
			} else if (jet_flight_dir == 8){
				spr_angle = -45;
			}
		} 
	}
}

//ranger
if (attack == AT_COPY_RANGER){
	if (ranger_aim > 209 && ranger_aim < 331){
		if (image_index > 5 && image_index < 11){
			ranger_aim_hand_shoot_offset = -6;
		} else {
			ranger_aim_hand_shoot_offset = 0;
		}
	}
}


//Grab stuff, mostly changing the sprites when using it
if (nspec_grabbed == true && ds_map_exists(kirb_chonk_spr_map, sprite_index)){
    shader_start();
    sprite_index = ds_map_find_value(kirb_chonk_spr_map, sprite_index);
    shader_end(); 
    if (state == PS_DASH || state == PS_DASH_START || state == PS_DASH_STOP){
        sprite_index = sprite_get("walk_chonky");
    }
    if (state == PS_WALK_TURN || state == PS_DASH_TURN){
        sprite_index = sprite_get("walkturn_chonky");
    }
}

/*
if(attack == AT_COPY_MIKE){
	if (window == 1){
		if (mike_level == 1){
			sprite_index = sprite_get("ability_mike1");
		}
		if (mike_level == 2){
			sprite_index = sprite_get("ability_mike2");
		}
		if (mike_level == 3){
			sprite_index = sprite_get("ability_mike3");
		}
	}
}
*/
switch (state){
    case PS_IDLE:
    case PS_RESPAWN:
    case PS_SPAWN:
        image_index = floor(image_number*state_timer/(image_number*6.5));
    break;
    case PS_DASH:
    case PS_WALK:
        image_index = floor(image_number*state_timer/(image_number*5));
    break;
}