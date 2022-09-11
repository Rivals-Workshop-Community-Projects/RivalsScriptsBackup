//colors
if(instance_exists(oPlayer)){
    
            if (!electrified && !is_nana){
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



if(instance_exists(oPlayer)){
    

if (is_nana){

        var color_offset = (get_player_color(player) == 10) ? -1 : 1;

        var nana_r = get_color_profile_slot_r( get_player_color(player) + color_offset, 0);
        var nana_g = get_color_profile_slot_g( get_player_color(player) + color_offset, 0);
        var nana_b = get_color_profile_slot_b( get_player_color(player) + color_offset, 0);

        var nana_r_2 = get_color_profile_slot_r( get_player_color(player) + color_offset, 1);
        var nana_g_2 = get_color_profile_slot_g( get_player_color(player) + color_offset, 1);
        var nana_b_2 = get_color_profile_slot_b( get_player_color(player) + color_offset, 1);

        var nana_r_3 = get_color_profile_slot_r( get_player_color(player) + color_offset, 2);
        var nana_g_3 = get_color_profile_slot_g( get_player_color(player) + color_offset, 2);
        var nana_b_3 = get_color_profile_slot_b( get_player_color(player) + color_offset, 2);

        var nana_r_4 = get_color_profile_slot_r( get_player_color(player) + color_offset, 3);
        var nana_g_4 = get_color_profile_slot_g( get_player_color(player) + color_offset, 3);
        var nana_b_4 = get_color_profile_slot_b( get_player_color(player) + color_offset, 3);

        set_character_color_slot(0, nana_r, nana_g, nana_b, 1);
        set_character_color_slot(1, nana_r_2, nana_g_2, nana_b_2, 1);
        set_character_color_slot(2, nana_r_3, nana_g_3, nana_b_3, 2);
        set_character_color_slot(3, nana_r_4, nana_g_4, nana_b_4, 3);


            if (!electrified){
                
                if (get_player_color( player ) == 7) {
                    outline_color = [26, 16, 16];
                    set_character_color_shading( 2, 0 );
                    set_character_color_shading( 4, 0 );
                    set_character_color_shading( 5, 0 );
                }
                
                if (get_player_color( player ) == 8) {
                    outline_color = [35, 67, 49];
                    set_character_color_shading( 2, 0 );
                    set_character_color_shading( 4, 0 );
                    set_character_color_shading( 5, 0 );
                }

                if (get_player_color( player ) == 9) {
                    outline_color = [207, 207, 207];
                     set_character_color_shading( 2, 0 );
                     set_character_color_shading( 4, 0 );
                     set_character_color_shading( 5, 0 );
                }

                
            }
    }


}
