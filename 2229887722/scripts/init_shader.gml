//Convert the fake black color slot to pure black
set_character_color_slot( 6, 0, 0, 0, 255 ); //Eyelashes

//Early Access and Retro color shading
if (get_player_color(player) == 12){
    for(i = 0; i < 6; i++){
        set_character_color_shading(i, 0);
    }
}

// set_character_color_shading(3, 1);
// set_character_color_shading(5, 1);