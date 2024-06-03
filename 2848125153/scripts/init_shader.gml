//init_shader - changing the local color profiles

var alt_cur = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player);

if(alt_cur == 0){
    set_character_color_slot(1, 47, 54, 82); //Hat
    set_character_color_slot(4, 47, 54, 82); //Pants
}else if (alt_cur == 1 || alt_cur == 2) {
    for (var slot_num = 0; slot_num < 8; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
}


if ("detish_alt" not in self)detish_alt = false;
if ("sketish_alt" not in self)sketish_alt = false;
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


//change w ability if on default 
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

if("state" in self){
    if(state == PS_DEAD){
        //set_victory_sidebar(sprite_get("very unskillful"));
    }
}