if(get_player_color(player) % 2 == 0 || get_player_color(player) == 0 ) //Every other color has no arm
{
    set_character_color_slot(4, 255, 255, 255, 0);
    set_character_color_slot(5, 255, 255, 255, 0);
    diag_portrait=sprite_get("portrait")
    set_victory_portrait(sprite_get("portrait"));
}
else
{
    diag_portrait=sprite_get("portrait_alt")
    set_victory_portrait(sprite_get("portrait_alt"));
}   

switch (get_player_color(player)) //Remove Eye Shading.
{
    case 0:
        // set_character_color_slot(0,  151, 187, 1, 1); //Skin
        // set_character_color_slot(1,  76, 76, 76, 1); //Sword
        set_character_color_slot(2,  255, 255, 255, 1); //Bandage
        set_character_color_slot(3,  191, 191, 191, 1); //BandageWraps
        // set_character_color_slot(6,  0, 255, 0, 1);//Flame
        set_character_color_slot(7,  54, 0, 112, 1); //Eyes
        break;
    case 1:
    case 5: 
        set_character_color_shading(7, 0);
        break;
}