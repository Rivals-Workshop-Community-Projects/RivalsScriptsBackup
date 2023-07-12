wario_css_impatience = wario_css_impatience+1;

if wario_css_impatience == 1800+(3*player){
    sound_play( sound_get("VFX_Impatience_1") );
}

//Blues become Purples
if (get_player_color( player ) == 17)
|| (get_player_color( player ) == 23)
|| (get_player_color( player ) == 24){
    
    init_shader();
    
}

if (get_player_color( player ) != 17)
&& (get_player_color( player ) != 23)
&& (get_player_color( player ) != 24){
    
    init_shader();
    
}