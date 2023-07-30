if(get_player_color(player) == 0) //og color
{
    var color_slot = 29;
    var shade_slot = 0;
    set_character_color_slot(0, get_color_profile_slot_r(color_slot, shade_slot), get_color_profile_slot_g(color_slot, shade_slot), get_color_profile_slot_b(color_slot, shade_slot)); //Fur
    set_article_color_slot(0, get_color_profile_slot_r(color_slot, shade_slot), get_color_profile_slot_g(color_slot, shade_slot), get_color_profile_slot_b(color_slot, shade_slot)); //Fur
    shade_slot ++;
    set_character_color_slot(1, get_color_profile_slot_r(color_slot, shade_slot), get_color_profile_slot_g(color_slot, shade_slot), get_color_profile_slot_b(color_slot, shade_slot)); //Fur 2
    set_article_color_slot(1, get_color_profile_slot_r(color_slot, shade_slot), get_color_profile_slot_g(color_slot, shade_slot), get_color_profile_slot_b(color_slot, shade_slot)); //Fur 2
    shade_slot ++;
    set_character_color_slot(2, get_color_profile_slot_r(color_slot, shade_slot), get_color_profile_slot_g(color_slot, shade_slot), get_color_profile_slot_b(color_slot, shade_slot)); //Hair
    set_article_color_slot(2, get_color_profile_slot_r(color_slot, shade_slot), get_color_profile_slot_g(color_slot, shade_slot), get_color_profile_slot_b(color_slot, shade_slot)); //Hair
    shade_slot ++;
    set_character_color_slot(3, get_color_profile_slot_r(color_slot, shade_slot), get_color_profile_slot_g(color_slot, shade_slot), get_color_profile_slot_b(color_slot, shade_slot)); //Paws
    set_article_color_slot(3, get_color_profile_slot_r(color_slot, shade_slot), get_color_profile_slot_g(color_slot, shade_slot), get_color_profile_slot_b(color_slot, shade_slot)); //Paws
    shade_slot ++;
    set_character_color_slot(4, get_color_profile_slot_r(color_slot, shade_slot), get_color_profile_slot_g(color_slot, shade_slot), get_color_profile_slot_b(color_slot, shade_slot)); //Cloth
    set_article_color_slot(4, get_color_profile_slot_r(color_slot, shade_slot), get_color_profile_slot_g(color_slot, shade_slot), get_color_profile_slot_b(color_slot, shade_slot)); //Cloth
    shade_slot ++;
    set_character_color_slot(5, get_color_profile_slot_r(color_slot, shade_slot), get_color_profile_slot_g(color_slot, shade_slot), get_color_profile_slot_b(color_slot, shade_slot)); //Shirt
    set_article_color_slot(5, get_color_profile_slot_r(color_slot, shade_slot), get_color_profile_slot_g(color_slot, shade_slot), get_color_profile_slot_b(color_slot, shade_slot)); //Shirt
    shade_slot ++;
    set_character_color_slot(6, get_color_profile_slot_r(color_slot, shade_slot), get_color_profile_slot_g(color_slot, shade_slot), get_color_profile_slot_b(color_slot, shade_slot)); //Pants
    set_article_color_slot(6, get_color_profile_slot_r(color_slot, shade_slot), get_color_profile_slot_g(color_slot, shade_slot), get_color_profile_slot_b(color_slot, shade_slot)); //Pants
    shade_slot ++;
    set_character_color_slot(7, get_color_profile_slot_r(color_slot, shade_slot), get_color_profile_slot_g(color_slot, shade_slot), get_color_profile_slot_b(color_slot, shade_slot)); //Eye Color
    set_article_color_slot(7, get_color_profile_slot_r(color_slot, shade_slot), get_color_profile_slot_g(color_slot, shade_slot), get_color_profile_slot_b(color_slot, shade_slot)); //Eye Color
}