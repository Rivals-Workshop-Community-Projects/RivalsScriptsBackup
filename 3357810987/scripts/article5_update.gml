//Background guys update
image_index += animation_speed;

if(active == false){
	sprite_index = asset_get("empty_sprite");
}

if(get_gameplay_time() == 1){
	with (oPlayer){//Make cameo not appear if fighter is present (stolen from Ghostabo's fridge kirby code lol)
	   	var player_count = 1;
	   	while(player_count < 5){
		   	if (
		      	(string_count("dracula", string_lower( get_char_info(player_count, INFO_STR_NAME))) > 0) ||
		      	(string_count("soma", string_lower( get_char_info(player_count, INFO_STR_NAME))) > 0)){
				other.active = false;
		   	}
		   	player_count++
	   	}
	}
}

switch(state){
	case(0)://Idling loop
		if(image_index >= 1){
			animation_speed = 0.05;
		} else {
			animation_speed = 0.0025;
		}
		if(image_index >= 3.8){
			image_index = 0;
			loops++;
		}
		if(loops >= 8 or final_stock == true){
			state++;
		}
	break;
	case(1)://Drinking
		if(image_index <= 7.8){
			animation_speed = 0.04;
		} else {
			if(final_stock = true){
				state = 3;
			} else {
				state++;
			}
		}
	break;
	case(2)://Putting down drink
		if(image_index >= 7.8){
			animation_speed = -0.056; 
		}
		if(image_index < 4){
			state = 0;
			image_index = 0;
			loops = 0;;
		}
	break;
	case(3)://Stand up
		if(image_index < 10){
			animation_speed = 0.02;
		} else if(image_index < 11){
			animation_speed = 0.04;
		} else if(image_index < 16){
			animation_speed = 0.12;
		} else {
			animation_speed = 0;
		}
		if(image_index >= 11 and final_stock == true){
			var goblet = create_hitbox(AT_TAUNT, 1, x + 20, y - 20);
			final_stock = false;
		}
	break;
}

if(state < 3){
	//final_stock = true;
	with (oPlayer) {
	    if ((get_player_stocks(player) = 1) && obj_stage_main.final_stock_cont == -1) {
	    	other.final_stock = true;
	    }
	}
}