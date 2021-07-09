//Extended shade ranges
if (get_player_color( player ) >= 26) //activate for whichever alt needs it
{
    // W range increased to capture eyeliner color
    set_color_profile_slot_range( 1, 23, 27, 2 );
}
else
{
    // Color range resets
    set_color_profile_slot_range( 1, 1, 1, 1 );
}


//Shirt become red
if (get_player_color( player ) == 0) {
    set_character_color_slot(2, 255, 219, 56, 1);
}

//Early Access colorless
if (get_player_color(player) == 30){
    for(i = 0; i < 8; i++){
        set_character_color_shading(i, 0);
    }
}