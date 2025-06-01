//Person cameos

switch(cameo){
    default: //Empty
        sprite_index = asset_get("empty_sprite")
        hsp = 0;
        
    break;
    case 0: //Laura
        depth = 20;
        x = get_marker_x(9);
        y = get_marker_y(9) - 1;
        animation_timer++;
        if(animation_timer > 800){
            sprite_index = sprite_get("laura_blink")
        }
        else{
            sprite_index = sprite_get("laura")
        }
        if(animation_timer >= 810){
            animation_timer = 0;
        }
        image_index+= 0.125
        parallax_x = -0.07
        parallax_y = -0.10
        if (
	      	(string_count("laura", string_lower( get_char_info(1, INFO_STR_NAME))) > 0) ||
	      	(string_count("laura", string_lower( get_char_info(2, INFO_STR_NAME))) > 0) ||
	      	(string_count("laura", string_lower( get_char_info(3, INFO_STR_NAME))) > 0) ||
	      	(string_count("laura", string_lower( get_char_info(4, INFO_STR_NAME))) > 0)){
			image_alpha = 0;
	   	}
    break;
    case 1: //James
    	animation_timer++;
    	if(animation_timer <= 1){
    		image_index = 14;
        	sprite_index = sprite_get("james_taunt")
        	x = get_marker_x(12);
    		y = get_marker_y(12) + 6;
    	}
    	if(animation_timer >= 260 and animation_timer < 290){
    		image_index += 0.2
    		sprite_index = sprite_get("james_taunt")
    	}
    	if(animation_timer >= 290){
    		sprite_index = sprite_get("james_run")
    		image_index += 0.15
    		hsp = -1.6
    	}
        spr_dir = -1
        parallax_x = 0
        parallax_y = 0
        depth = 14
        if (
	      	(string_count("james", string_lower( get_char_info(1, INFO_STR_NAME))) > 0) ||
	      	(string_count("james", string_lower( get_char_info(2, INFO_STR_NAME))) > 0) ||
	      	(string_count("james", string_lower( get_char_info(3, INFO_STR_NAME))) > 0) ||
	      	(string_count("james", string_lower( get_char_info(4, INFO_STR_NAME))) > 0)){
			image_alpha = 0;
	   	}
	   	
	   	with(pet_obj){
	    	if (variable_instance_exists(id, "gun_mode")){
	    		other.image_alpha = 0;
	    	}
	    }
    break;
    case 2: //Angela
        depth = 14;
        x = get_marker_x(10);
        y = get_marker_y(10);
        animation_timer++;
        if(animation_timer > 850){
            sprite_index = sprite_get("angela_blink")
        }
        else{
            sprite_index = sprite_get("angela")
        }
        if(animation_timer >= 930){
            animation_timer = 0;
        }
        image_index+= 0.125
        parallax_x = 0
        parallax_y = 0
        if (
	      	(string_count("angela", string_lower( get_char_info(1, INFO_STR_NAME))) > 0) ||
	      	(string_count("angela", string_lower( get_char_info(2, INFO_STR_NAME))) > 0) ||
	      	(string_count("angela", string_lower( get_char_info(3, INFO_STR_NAME))) > 0) ||
	      	(string_count("angela", string_lower( get_char_info(4, INFO_STR_NAME))) > 0)){
			image_alpha = 0;
	   	}
    break;
    case 3: //Eddie
        depth = 14;
        x = get_marker_x(11) - 6;
        y = get_marker_y(11);
        animation_timer++;
        if(animation_timer > 800){
            sprite_index = sprite_get("eddie_blink")
        }
        else{
            sprite_index = sprite_get("eddie")
        }
        if(animation_timer >= 810){
            animation_timer = 0;
        }
        image_index+= 0.125
        parallax_x = 0
        parallax_y = 0
        if (
	      	(string_count("eddie", string_lower( get_char_info(1, INFO_STR_NAME))) > 0) ||
	      	(string_count("eddie", string_lower( get_char_info(2, INFO_STR_NAME))) > 0) ||
	      	(string_count("eddie", string_lower( get_char_info(3, INFO_STR_NAME))) > 0) ||
	      	(string_count("eddie", string_lower( get_char_info(4, INFO_STR_NAME))) > 0)){
			image_alpha = 0;
	   	}
    break;
}

switch(mode){
    case 0: //Midday
        if(image_alpha > 0){
            image_alpha-= 0.02;
        } else {
            image_alpha = 0;
        }
    break;
    case 1: //Evening
        if(image_alpha < 1){
            image_alpha += 0.02;
        } else {
            image_alpha = 1;
        }
    break;
    case 2: //Midnight
        if(image_alpha > 0){
            image_alpha -= 0.02;
        } else {
            image_alpha = 0;
            spr_dir = 1;
            hsp = 0;
            cameo = (random_func(6, 5, true));
            animation_timer = 0;
            //print("Cameo number: " + string(cameo))
        }
    break;
    case 3: //Dawn
        if(image_alpha < 1){
            image_alpha += 0.02;
        } else {
            image_alpha = 1;
        }
    break;
    case 4: //Midday
        if(image_alpha < 1){
            image_alpha += 0.02;
        } else {
            image_alpha = 1;
        }
    break;
}