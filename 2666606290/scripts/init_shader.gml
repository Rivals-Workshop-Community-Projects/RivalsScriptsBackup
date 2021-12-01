//colors
if(instance_exists(oPlayer)){
    


    
    
            if (!electrified){
                if (get_player_color( player ) == 9) {
                    outline_color = [35, 67, 49];
                    set_character_color_shading( 2, 0 );
                    set_character_color_shading( 4, 0 );
                    set_character_color_shading( 5, 0 );
                }
                
                if (get_player_color( player ) == 8) {
                    outline_color = [26, 16, 16];
                    set_character_color_shading( 2, 0 );
                    set_character_color_shading( 4, 0 );
                    set_character_color_shading( 5, 0 );
                }
                
                if (get_player_color( player ) == 10) {
                    outline_color = [207, 207, 207];
                     set_character_color_shading( 2, 0 );
                     set_character_color_shading( 4, 0 );
                     set_character_color_shading( 5, 0 );
                }

                
            }
}else {

if (get_player_color( player ) == 9) {
 outline_color = [35, 67, 49];
 set_character_color_shading( 2, 0 );
 set_character_color_shading( 4, 0 );
 set_character_color_shading( 5, 0 );
}

if (get_player_color( player ) == 8) {
 outline_color = [26, 16, 16];
 set_character_color_shading( 2, 0 );
 set_character_color_shading( 4, 0 );
 set_character_color_shading( 5, 0 );
}

if (get_player_color( player ) == 10) {
 outline_color = [207, 207, 207];
 set_character_color_shading( 2, 0 );
 set_character_color_shading( 4, 0 );
 set_character_color_shading( 5, 0 );
}


}