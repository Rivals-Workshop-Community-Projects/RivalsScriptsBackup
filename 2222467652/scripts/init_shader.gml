alt_seasonal = 6;
alt_custom = 7;
alt_mario = 8;
alt_wario = 9;
alt_waluigi = 10;
alt_gooigi = 11;
alt_builder = 12;
alt_abyss = 13;
alt_gb = 14;
alt_gold = 18;
alt_infamous = 16;
alt_goose = 17;
alt_nes = 15;
alt_archen = 19;
alt_pride1 = 20;
alt_loudbird = 21;
alt_negative = 22;
alt_garcello = 23;
alt_starwalker = 24;

switch (get_match_setting(SET_SEASON)){
    case 1: // valentines
        set_color_profile_slot( 6, 0, 255, 155, 211 ); //Feathers (Head) + Hat
        set_color_profile_slot( 6, 1, 225, 73, 73 ); //Feathers (Body)
        set_color_profile_slot( 6, 2, 255, 238, 247 ); //Legs
        set_color_profile_slot( 6, 3, 255, 238, 247 ); //Beak
        set_color_profile_slot( 6, 4, 178, 0, 108 ); //Shoes
        set_color_profile_slot( 6, 5, 255, 238, 247 ); //Hat Logo
        set_color_profile_slot( 6, 6, 255, 155, 211 ); //Egg
    break;

    case 2: // summer
        set_color_profile_slot( 6, 0, 255, 246, 140 ); //Feathers (Head) + Hat
        set_color_profile_slot( 6, 1, 89, 204, 233 ); //Feathers (Body)
        set_color_profile_slot( 6, 2, 255, 216, 161 ); //Legs
        set_color_profile_slot( 6, 3, 255, 216, 161 ); //Beak
        set_color_profile_slot( 6, 4, 255, 166, 40 ); //Shoes
        set_color_profile_slot( 6, 5, 247, 238, 130 ); //Hat Logo
        set_color_profile_slot( 6, 6, 255, 246, 140 ); //Egg
    break;

    case 3: // halloween
        set_color_profile_slot( 6, 0, 232, 116, 58 ); //Feathers (Head) + Hat
        set_color_profile_slot( 6, 1, 64, 69, 69 ); //Feathers (Body)
        set_color_profile_slot( 6, 2, 154, 113, 136 ); //Legs
        set_color_profile_slot( 6, 3, 203, 176, 188 ); //Beak
        set_color_profile_slot( 6, 4, 50, 54, 54 ); //Shoes
        set_color_profile_slot( 6, 5, 230, 233, 235 ); //Hat Logo
        set_color_profile_slot( 6, 6, 232, 116, 58 ); //Egg
    break;

    case 4: // christmas
        set_color_profile_slot( 6, 0, 141, 236, 130 ); //Feathers (Head) + Hat
        set_color_profile_slot( 6, 1, 222, 72, 72 ); //Feathers (Body)
        set_color_profile_slot( 6, 2, 255, 232, 232 ); //Legs
        set_color_profile_slot( 6, 3, 255, 232, 232 ); //Beak
        set_color_profile_slot( 6, 4, 12, 170, 0 ); //Shoes
        set_color_profile_slot( 6, 5, 255, 233, 233 ); //Hat Logo
        set_color_profile_slot( 6, 6, 255, 233, 233 ); //Egg
    break;
}

if (get_player_color(player) == 0){
    set_character_color_slot(2, 255, 232, 34, 1);
    set_character_color_slot(6, 19, 170, 80, 1);
}

if (get_player_color(player) == alt_mario){
    set_character_color_shading(0, 1.5);
    set_character_color_shading(1, 1.5);
    set_character_color_shading(5, 1.5);
}

if (get_player_color(player) == alt_nes){
    outline_color = [55, 56, 206];
    for (var slot_num = 0; slot_num < 8; slot_num++){
         set_character_color_shading(slot_num, 0);
    }
}

if (get_player_color(player) == alt_waluigi){
    set_character_color_shading(6, 0);
}

if (get_player_color(player) == alt_gooigi){
    outline_color = [20, 94, 56];
    for (var slot_num = 0; slot_num < 8; slot_num++){
         set_character_color_shading(slot_num, -1);
         set_character_color_slot(slot_num, 24, 242, 65, 0.8);
    }
}

if (get_player_color(player) == alt_builder){
    set_character_color_shading(6, 0.7);
}

if (get_player_color(player) == alt_gb){
    outline_color = [35, 67, 49];
    for (var slot_num = 0; slot_num < 8; slot_num++){
         set_character_color_shading(slot_num, 0);
    }
}

if (get_player_color(player) == alt_gold){
    outline_color = [76, 53, 0];
    set_character_color_shading(3, 0.5);
}

if (get_player_color(player) == alt_abyss){
    set_character_color_shading(3, 0.5);
}

if (get_player_color(player) == alt_archen){
    set_article_color_slot(2, 180, 27, 227, 1);
}

if (get_player_color(player) == alt_negative){
    var negativecolornum = 0;
    set_character_color_shading(6, -1);
    repeat(7){
        set_article_color_slot(negativecolornum, 255 - get_color_profile_slot_r(get_player_color(player), negativecolornum), 255 - get_color_profile_slot_g(get_player_color(player), negativecolornum), 255 - get_color_profile_slot_b(get_player_color(player), negativecolornum), 1);
        if (object_index != oPlayer){
            set_character_color_slot(negativecolornum, 255 - get_color_profile_slot_r(get_player_color(player), negativecolornum), 255 - get_color_profile_slot_g(get_player_color(player), negativecolornum), 255 - get_color_profile_slot_b(get_player_color(player), negativecolornum), 1);
            set_character_color_shading(negativecolornum, -1);
        }
        negativecolornum += 1;
    }
}

if (get_player_color(player) == alt_garcello){
    set_article_color_slot(0, 0, 255, 150, 0.8);
    set_article_color_slot(6, 245, 255, 250, 0.8);
    set_character_color_shading(6, 0.2);
}

if (get_player_color(player) == alt_starwalker){
    for (var slot_num = 0; slot_num < 6; slot_num++){
         set_character_color_shading(slot_num, 0);
    }
}

if object_index != oPlayer exit;

set_character_color_slot(0, color_get_red(rainbow_color), color_get_green(rainbow_color), color_get_blue(rainbow_color))

if (current_month == 4 && current_day == 1) && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack == AT_USPECIAL){
    set_character_color_slot(6, 255, 255, 255, 1);
}