//button stuff
var cur_x = get_instance_x(cursor_id);
var cur_y = get_instance_y(cursor_id);

if (cur_x > x+voice_button_pos[0] && cur_x < x+voice_button_pos[2] && cur_y > y+voice_button_pos[1] && cur_y < y+voice_button_pos[3] && !instance_exists(oTestPlayer)){
    if(!voice_hover){
        voice_hover = true;  
        voicebutton = (voice == 0)?1:4;
    }
    if (menu_a_pressed){
        voice = (voice==0);
        set_synced_var(player, voice);
        voicebutton = (voice == 0)?2:5;
        sound_play(asset_get((voice==0)?"mfx_forward":"mfx_input_back"));
        voice_hover = false;
    }    
}else{
    voicebutton = (voice == 0)?0:3; 
    voice_hover = false;
}suppress_cursor = voice_hover;

css_draw_time++;
alt_fix = player;