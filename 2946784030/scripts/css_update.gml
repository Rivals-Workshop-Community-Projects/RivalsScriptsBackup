wario_css_impatience = wario_css_impatience+1;

var impatience_1 = 1800+(3*player); //Originally 1800
var impatience_2 = 3600+(3*player);

//Hurry Up!!
if wario_css_impatience == impatience_1{
    sound_play( sound_get("VFX_Impatience_1") );
}

//This Stinks!!
if wario_css_impatience == impatience_2{
    sound_play( sound_get("VFX_Impatience_2") );
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