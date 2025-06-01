//Monster cameos

switch(cameo){
    default: //Empty
        sprite_index = asset_get("empty_sprite")
        hsp = 0;
        
    break;
    case 0: //Maria
        depth = 5;
        x = get_marker_x(5);
        y = get_marker_y(5);
        animation_timer++;
        if(animation_timer > 800){
            sprite_index = sprite_get("maria_blink")
        }
        else{
            sprite_index = sprite_get("maria")
        }
        if(animation_timer >= 810){
            animation_timer = 0;
        }
        image_index+= 0.125
        parallax_x = 0
        parallax_y = 0
        if (
	      	(string_count("maria", string_lower( get_char_info(1, INFO_STR_NAME))) > 0) ||
	      	(string_count("maria", string_lower( get_char_info(2, INFO_STR_NAME))) > 0) ||
	      	(string_count("maria", string_lower( get_char_info(3, INFO_STR_NAME))) > 0) ||
	      	(string_count("maria", string_lower( get_char_info(4, INFO_STR_NAME))) > 0)){
			image_alpha = 0;
	   	}
    break;
    case 1: //Pyramid Head
        sprite_index = sprite_get("ph")
        spr_dir = -1
        hsp = -0.85;
        image_index += 0.125;
        parallax_x = 0.07
        parallax_y = 0.10
        depth = 10
        if (
	      	(string_count("pyramid head", string_lower( get_char_info(1, INFO_STR_NAME))) > 0) ||
	      	(string_count("pyramid head", string_lower( get_char_info(2, INFO_STR_NAME))) > 0) ||
	      	(string_count("pyramid head", string_lower( get_char_info(3, INFO_STR_NAME))) > 0) ||
	      	(string_count("pyramid head", string_lower( get_char_info(4, INFO_STR_NAME))) > 0)){
			image_alpha = 0;
	   	}
    break;
    case 2: //Bubble Head Nurse
        sprite_index = sprite_get("nurse")
        depth = 30;
        x = get_marker_x(6);
        y = get_marker_y(6) -1// + 10;
        parallax_x = -0.07
        parallax_y = -0.10
        animation_timer++
        if(animation_timer >= 360){
        	image_index -= 0.4;
        } else {
        	image_index += 0.075;
        }
        if(animation_timer >=370){
        	animation_timer = 0;
        }
    break;
    case 3: //Lying Figure
        sprite_index = sprite_get("figure")
        depth = 30;
        x = get_marker_x(8);
        y = get_marker_y(8) -2 + 12;
        parallax_x = -0.07
        parallax_y = -0.10
        image_index += 0.08;
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
        if(image_alpha > 0){
            image_alpha -= 0.02;
        } else {
            image_alpha = 0;
            spr_dir = 1;
            x = get_marker_x(7);
            y = get_marker_y(5) + 65;
            hsp = 0;
            cameo = (random_func(5, 5, true));
            //print("Cameo number: " + string(cameo))
        }
    break;
    case 2: //Midnight
        if(image_alpha < 1){
            image_alpha += 0.005;
        } else {
            image_alpha = 1;
        }
    break;
    case 3: //Dawn
        if(cameo == 0){
            if(image_alpha < 1){
                image_alpha += 0.02;
            } else {
                image_alpha = 1;
            }
        } else {
            if(image_alpha < 0.75){
                image_alpha -= 0.01;
            } else {
                image_alpha = 0.75;
            }   
        }
    break;
    case 4: //Midday
        if(cameo == 0){
            if(image_alpha < 1){
                image_alpha += 0.02;
            } else {
                image_alpha = 1;
            }
        } else {
            if(image_alpha > 0){
                image_alpha -= 0.02;
            } else {
                image_alpha = 0;
            }   
        }
    break;
}