//Mira
image_index+=0.125;

if (
	(string_count("mira", string_lower( get_char_info(1, INFO_STR_NAME))) > 0) ||
	(string_count("mira", string_lower( get_char_info(2, INFO_STR_NAME))) > 0) ||
	(string_count("mira", string_lower( get_char_info(3, INFO_STR_NAME))) > 0) ||
	(string_count("mira", string_lower( get_char_info(4, INFO_STR_NAME))) > 0)){
		instance_destroy();
        exit;
        
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
            instance_destroy();
            exit;
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