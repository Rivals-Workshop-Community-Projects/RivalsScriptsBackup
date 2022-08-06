if (get_player_color(player) == 11)
{
    set_color_profile_slot( 0, 7, 145, 187, 255 );
}
else if (get_player_color(player) != 11)
{
    set_color_profile_slot( 0, 7, 230, 239, 255 );
    if (get_player_color(player) == 0)
    {
        set_character_color_slot( 0, 15, 64, 138); //fix dress color
        set_character_color_slot( 7, 251, 253, 255);
    }
}
//rgb(251, 253, 255)