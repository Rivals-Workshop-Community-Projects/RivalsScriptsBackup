//init_shader - changing the local color profiles

var true_player = (room == asset_get("network_char_select")) ? 0 : player;var alt_cur = get_player_color(true_player); //Replace the old alt_fix thing with this

if(alt_cur == 0){
    set_character_color_slot(1, 47, 54, 82); //Hat
    set_character_color_slot(4, 47, 54, 82); //Pants
}else if (alt_cur == 1 || alt_cur == 2) {
    for (var slot_num = 0; slot_num < 8; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
}

//init_shader.gml
if(object_index == asset_get("draw_result_screen")){
    if("grabbedmonopolyinfo" not in self){
        golden_skill_suit = false;
        get_victory_screen_data();
        grabbedmonopolyinfo = true;
    }
}

altBehaviors(alt_cur);
with(asset_get("result_screen_box")){
    if(player == true_player)altBehaviors(alt_cur);
}

#define get_victory_screen_data()
	with(asset_get("pHitBox"))if("kob_monopolyInfo" in self){
	    if("golden_skill_suit" in self)other.golden_skill_suit = golden_skill_suit;
	    break;
	}

#define altBehaviors(alt_cur)
	var detish_alt = alt_cur == 17 && string_lower(get_player_name(player)) == "don";
	var sketish_alt = alt_cur == 17 && string_lower(get_player_name(player)) == "sky";
	if(detish_alt){
	    set_character_color_slot(0, 113, 113, 113);set_article_color_slot(0, 113, 113, 113); //Hat rim
	    set_character_color_slot(1, 185, 218, 226);set_article_color_slot(1, 185, 218, 226); //Hat
	    set_character_color_slot(2, 46, 40, 91);set_article_color_slot(2, 46, 40, 91); //Shirt
	    set_character_color_slot(3, 254, 211, 166);set_article_color_slot(3, 254, 211, 166); //Skin
	    set_character_color_slot(4, 46, 40, 91);set_article_color_slot(4, 46, 40, 91); //Pants
	    set_character_color_slot(5, 168, 162, 216);set_article_color_slot(5, 168, 162, 216); //Shoes
	    set_character_color_slot(6, 50, 44, 39);set_article_color_slot(6, 50, 44, 39); //Hair
	    set_character_color_slot(7, 119, 107, 225);set_article_color_slot(7, 119, 107, 225); //Eyes    
	}else if(sketish_alt){
	    set_character_color_slot(0, 250, 252, 255);set_article_color_slot(0, 250, 252, 255); //Hat rim
	    set_character_color_slot(1, 135, 0, 2);set_article_color_slot(1, 135, 0, 2); //Hat
	    set_character_color_slot(2, 136, 0, 27);set_article_color_slot(2, 136, 0, 27); //Shirt
	    set_character_color_slot(3, 254, 211, 166);set_article_color_slot(3, 254, 211, 166); //Skin
	    set_character_color_slot(4, 26, 44, 66);set_article_color_slot(4, 26, 44, 66); //Pants
	    set_character_color_slot(5, 250, 252, 255);set_article_color_slot(5, 250, 252, 255); //Shoes
	    set_character_color_slot(6, 132, 74, 152);set_article_color_slot(6, 132, 74, 152); //Hair
	    set_character_color_slot(7, 4, 83, 27);set_article_color_slot(7, 4, 83, 27); //Eyes
	}
	//skill
	if ("golden_skill_suit" not in self)golden_skill_suit = false;
	if (golden_skill_suit){
	    if(alt_cur == 12 || alt_cur == 13 || alt_cur == 17 || alt_cur == 18 || alt_cur == 21 || alt_cur == 23 || alt_cur == 25 || alt_cur == 27){
	        set_character_color_slot(0, 255, 220, 44);set_article_color_slot(0, 255, 220, 44);
	    }
	    if(alt_cur <= 2 || alt_cur == 16 || alt_cur == 22 || alt_cur == 24){
	        set_character_color_slot(1, 255, 189, 44);set_article_color_slot(1, 255, 189, 44);
	    }
		set_character_color_slot(2, 255, 189, 44);set_article_color_slot(2, 255, 189, 44);
		set_character_color_slot(4, 255, 163, 44);set_article_color_slot(4, 255, 163, 44);
	    set_character_color_slot(5, 255, 189, 44);set_article_color_slot(5, 255, 189, 44);
	}