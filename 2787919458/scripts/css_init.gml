voice_hover = false;

css_draw_time = 0;
alt_cur = 0;
alt_prev = 0;
portrait = 0;

voice = get_synced_var(player);
voicebutton = 0;

voice_button_pos = [
    74,
    178,
    74 + sprite_get_width(sprite_get("cssvoice_button"))+10,
    178 + sprite_get_height(sprite_get("cssvoice_button"))+10
];

if(player == 0){
    voice_button_pos[0] = 42;
    voice_button_pos[1] = 148;
    voice_button_pos[2] = 42 + sprite_get_width(sprite_get("cssvoice_button"))+10;
    voice_button_pos[3] = 148 + sprite_get_height(sprite_get("cssvoice_button"))+10;    
}