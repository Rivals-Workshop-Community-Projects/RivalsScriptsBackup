//online player is actually player 0, alt_fix communicates with the css, and changes the player based on that
var alt_cur = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player);

if("aware" in self){
switch(aware){
    case 0:
    if(alt_cur == 13){
        set_character_color_slot( 5, 199, 199, 199 ); //eye 1
        set_article_color_slot( 5, 199, 199, 199 ); //eye 1
        set_character_color_slot( 6, 255, 255, 255 ); //eye 2
        set_article_color_slot( 6, 255, 255, 255 ); //eye 2
        }else if(alt_cur == 15 || alt_cur == 19 || alt_cur == 20 || alt_cur == 21){
        set_character_color_slot( 5, 15, 181, 0 ); //eye 1
        set_article_color_slot( 5, 15, 181, 0 ); //eye 1
        set_character_color_slot( 6, 90, 240, 77 ); //eye 2
        set_article_color_slot( 6, 90, 240, 77 ); //eye 2
        }else if(alt_cur == 24){
        set_character_color_slot( 5, 15, 56, 15 ); //eye 1
        set_article_color_slot( 5, 15, 56, 15 ); //eye 1
        set_character_color_slot( 6, 155, 188, 15 ); //eye 2
        set_article_color_slot( 6, 155, 188, 15 ); //eye 2
        }else if(alt_cur == 25){
        set_character_color_slot( 5, 145, 60, 207 ); //eye 1
        set_article_color_slot( 5, 145, 60, 207 ); //eye 1
        set_character_color_slot( 6, 220, 113, 251 ); //eye 2
        set_article_color_slot( 6, 220, 113, 251 ); //eye 2
        }else if(alt_cur == 27){
        set_character_color_slot( 5, 199, 199, 199 ); //eye 1
        set_article_color_slot( 5, 199, 199, 199 ); //eye 1
        set_character_color_slot( 6, 255, 255, 255 ); //eye 2
        set_article_color_slot( 6, 255, 255, 255 ); //eye 2
        }else if(alt_cur == 22){
        set_character_color_slot( 22, 5, 99, 199, 77 ); //eye 1
        set_article_color_slot( 22, 5, 99, 199, 77 ); //eye 1
        set_character_color_slot( 22, 6, 127, 250, 116 ); //eye 2
        set_article_color_slot( 22, 6, 127, 250, 116 ); //eye 2
        }else if get_player_color(player) != 23 && get_player_color(player) != 26{
        set_character_color_slot( 5, 11, 186, 255 ); //eye 1
        set_article_color_slot( 5, 11, 186, 255 ); //eye 1
        set_character_color_slot( 6, 69, 255, 243 ); //eye 2
        set_article_color_slot( 6, 69, 255, 243 ); //eye 2
    }
    break;
    case 1:
    if(alt_cur == 24){
        set_character_color_slot( 5, 139, 172, 15 ); //eye 1
        set_article_color_slot( 5, 139, 172, 15 ); //eye 1
        set_character_color_slot( 6, 155, 188, 15 ); //eye 2
        set_article_color_slot( 6, 155, 188, 15 ); //eye 2
        }else if get_player_color(player) != 23 && get_player_color(player) != 26{
        set_character_color_slot( 5, 255, 195, 0 ); //eye 1
        set_article_color_slot( 5, 255, 195, 0 ); //eye 1
        set_character_color_slot( 6, 255, 230, 130 ); //eye 2
        set_article_color_slot( 6, 255, 230, 130 ); //eye 2
    }
    break;
    case 2:
    if(alt_cur == 14){
        set_character_color_slot( 5, 11, 186, 255 ); //eye 1
        set_article_color_slot( 5, 11, 186, 255 ); //eye 1
        set_character_color_slot( 6, 69, 255, 243 ); //eye 2
        set_article_color_slot( 6, 69, 255, 243 ); //eye 2
        }else if(alt_cur == 24){
        set_character_color_slot( 5, 15, 56, 15 ); //eye 1
        set_article_color_slot( 5, 15, 56, 15 ); //eye 1
        set_character_color_slot( 6, 48, 98, 48 ); //eye 2
        set_article_color_slot( 6, 48, 98, 48 ); //eye 2
        }else if get_player_color(player) != 23 && get_player_color(player) != 26{
        set_character_color_slot( 5, 255, 11, 11 ); //eye 1
        set_article_color_slot( 5, 255, 11, 11 ); //eye 1
        set_character_color_slot( 6, 255, 155, 69 ); //eye 2
        set_article_color_slot( 6, 255, 155, 69 ); //eye 2
    }
    break;
}
if state == PS_ATTACK_GROUND && attack == AT_TAUNT_2 && shut_light{
    set_character_color_slot( 5, 0, 0, 0 ); //eye 1
    set_article_color_slot( 5, 0, 0, 0 ); //eye 1
    set_character_color_slot( 6, 0, 0, 0 ); //eye 2
    set_article_color_slot( 6, 0, 0, 0 ); //eye 2
}
}

if(alt_cur == 24){
    set_character_color_shading(0, 0);
    set_character_color_shading(1, 0);
    set_character_color_shading(2, 0);
    set_character_color_shading(3, 0);
    set_character_color_shading(4, 0);
    set_character_color_shading(5, 0);
    set_character_color_shading(6, 0);
    set_character_color_shading(7, 0);
}else{
    set_character_color_shading(0, 1);
    set_character_color_shading(1, 1);
    set_character_color_shading(2, 1);
    set_character_color_shading(3, 1);
    set_character_color_shading(4, 1);
    set_character_color_shading(5, 1);
    set_character_color_shading(6, 1);
    set_character_color_shading(7, 1);
}

if alt_cur == 23{
if(get_color_profile_slot_r(23, 6) == 0 && get_color_profile_slot_g(23, 6) == 255 && get_color_profile_slot_b(23, 6) < 255){
    set_article_color_slot( 5, 0, 255, get_color_profile_slot_b(23, 6) + 5 );
    set_color_profile_slot( 23, 5, 0, 255, get_color_profile_slot_b(23, 6) + 5 );
    set_article_color_slot( 6, 0, 255, get_color_profile_slot_b(23, 6) + 5 );
    set_color_profile_slot( 23, 6, 0, 255, get_color_profile_slot_b(23, 6) + 5 );
}else if(get_color_profile_slot_r(23, 6) == 0 && get_color_profile_slot_g(23, 6) > 0 && get_color_profile_slot_b(23, 6) == 255){
    set_article_color_slot( 5, 0, get_color_profile_slot_g(23, 6) - 5, 255 );
    set_color_profile_slot( 23, 5, 0, get_color_profile_slot_g(23, 6) - 5, 255 );
    set_article_color_slot( 6, 0, get_color_profile_slot_g(23, 6) - 5, 255 );
    set_color_profile_slot( 23, 6, 0, get_color_profile_slot_g(23, 6) - 5, 255 );
}else if(get_color_profile_slot_r(23,6) < 255 && get_color_profile_slot_g(23, 6) == 0 && get_color_profile_slot_b(23, 6) == 255){
    set_article_color_slot( 5, get_color_profile_slot_r(23, 6) + 5, 0, 255 );
    set_color_profile_slot( 23, 5, get_color_profile_slot_r(23, 6) + 5, 0, 255 );
    set_article_color_slot( 6, get_color_profile_slot_r(23, 6) + 5, 0, 255 );
    set_color_profile_slot( 23, 6, get_color_profile_slot_r(23, 6) + 5, 0, 255 );
}else if(get_color_profile_slot_r(23,6) == 255 && get_color_profile_slot_g(23, 6) == 0 && get_color_profile_slot_b(23, 6) > 0){
    set_article_color_slot( 5, 255, 0, get_color_profile_slot_b(23, 6) - 5 );
    set_color_profile_slot( 23, 5, 255, 0, get_color_profile_slot_b(23, 6) - 5 );
    set_article_color_slot( 6, 255, 0, get_color_profile_slot_b(23, 6) - 5 );
    set_color_profile_slot( 23, 6, 255, 0, get_color_profile_slot_b(23, 6) - 5 );
}else if(get_color_profile_slot_r(23,6) == 255 && get_color_profile_slot_g(23, 6) < 255 && get_color_profile_slot_b(23, 6) == 0){
    set_article_color_slot( 5, 255, get_color_profile_slot_g(23, 6) + 5, 0 );
    set_color_profile_slot( 23, 5, 255, get_color_profile_slot_g(23, 6) + 5, 0 );
    set_article_color_slot( 6, 255, get_color_profile_slot_g(23, 6) + 5, 0 );
    set_color_profile_slot( 23, 6, 255, get_color_profile_slot_g(23, 6) + 5, 0 );
}else if(get_color_profile_slot_r(23,6) > 0 && get_color_profile_slot_g(23, 6) == 255 && get_color_profile_slot_b(23, 6) == 0){
    set_article_color_slot( 5, get_color_profile_slot_r(23, 6) - 5, 255, 0 );
    set_color_profile_slot( 23, 5, get_color_profile_slot_r(23, 6) - 5, 255, 0 );
    set_article_color_slot( 6, get_color_profile_slot_r(23, 6) - 5, 255, 0 );
    set_color_profile_slot( 23, 6, get_color_profile_slot_r(23, 6) - 5, 255, 0 );
}
}

if "aware" in self{
if alt_cur == 26{
    for(var i = 0; i <= 6; i++){
        set_character_color_slot(i, 0, 0, 0, 0);
    }
    switch aware{
        case 0:
        set_color_profile_slot( 26, 5, 204, 184, 224 ); //eye 1
        set_article_color_slot( 5, 204, 184, 224 ); //eye 1
        set_color_profile_slot( 26, 6, 204, 184, 224 ); //eye 2
        set_article_color_slot( 6, 204, 184, 224 ); //eye 2
        set_color_profile_slot( 26, 7, 204, 184, 224 );
        set_article_color_slot( 7, 204, 184, 224 );
        break;
        case 1:
        set_color_profile_slot( 26, 5, 168, 115, 221 ); //eye 1
        set_article_color_slot( 5, 168, 115, 221 ); //eye 1
        set_color_profile_slot( 26, 6, 168, 115, 221 ); //eye 2
        set_article_color_slot( 6, 168, 115, 221 ); //eye 2
        set_color_profile_slot( 26, 7, 168, 115, 221 );
        set_article_color_slot( 7, 168, 115, 221 );
        break;
        case 2:
        set_color_profile_slot( 26, 5, 110, 0, 221 ); //eye 1
        set_article_color_slot( 5, 110, 0, 221 ); //eye 1
        set_color_profile_slot( 26, 6, 110, 0, 221 ); //eye 2
        set_article_color_slot( 6, 110, 0, 221 ); //eye 2
        set_color_profile_slot( 26, 7, 110, 0, 221 );
        set_article_color_slot( 7, 110, 0, 221 );
        break;
    }
}
}