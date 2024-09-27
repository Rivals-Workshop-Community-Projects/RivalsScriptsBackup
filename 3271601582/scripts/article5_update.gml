//Background guys update
image_index += animation_speed;

if(active == false){
	sprite_index = asset_get("empty_sprite");
}

if(spawn_variables[0] = 6){
	with (oPlayer){//Make cameo not appear if fighter is present (stolen from Ghostabo's fridge kirby code lol)
	   	if (
	      	(string_count("chosen undead", string_lower( get_char_info(1, INFO_STR_NAME))) > 0) ||
	      	(string_count("chosen undead", string_lower( get_char_info(2, INFO_STR_NAME))) > 0) ||
	      	(string_count("chosen undead", string_lower( get_char_info(3, INFO_STR_NAME))) > 0) ||
	      	(string_count("chosen undead", string_lower( get_char_info(4, INFO_STR_NAME))) > 0)){
			other.active = false;
	   	}
	}
}
