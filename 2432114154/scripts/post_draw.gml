shader_start();


 if hit_player_obj.url != "2273636433" && hit_player_obj.url != "1870768156"
	&& hit_player_obj.url != "1869351026" &&
	(string_count("nald", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("%", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("sand", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("oku", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("psy", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("ultra", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("god", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("boss", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("ui ", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("ssg", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("melee", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("accurate", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	){
	  
	  if get_gameplay_time() < 200 {
	      draw_debug_text(x - 170 ,y -102,"A cheapie? Prepare to face my army then.");
	  }  
	    
	}

shader_end() 

