//draw_hud.gml
//temp_x / temp_y

if("SL_damage_timer" not in self){exit;}
// SL Above Meter
if(SL_damage_timer > 0){
    var temp_SL_damage_buffer = SL_damage_timer / SL_num_of_frames_per_damage;
    var bar_length_in_px = 128;
    var bar_height_in_px = 128;
    var max_displayed_damage = 10;
    var top_left_x = 0 //1 * (bar_length_in_px / 2);
    var top_left_y = 0;
    var start_x = temp_x;
    var start_y = temp_y - 5 - (bar_height_in_px / 2); // Offset original
    var SL_percent_to_display = (temp_SL_damage_buffer/ max_displayed_damage) * bar_length_in_px; // Determine percentage
    SL_percent_to_display = clamp(SL_percent_to_display,0,bar_length_in_px); // CLamp to prevent large number
    
    shader_start();
    //draw_sprite(sprite_get("sl_hud_bar"),get_gameplay_time()/6,x,y - char_height - 22);
    draw_sprite_part(sprite_get("sl_hud_bar"),get_gameplay_time()/6,top_left_x,0,SL_percent_to_display,bar_height_in_px,start_x,start_y);
    shader_end();
}

// SL Debug Toggle in training mode on taunt + Down
if(get_training_cpu_action() != CPU_FIGHT){
    switch(SL_mode_active){
        case true:
        draw_debug_text(temp_x,temp_y - 10,"Down + Taunt: Turn off SL");
        break;
        case false:
        draw_debug_text(temp_x,temp_y - 10,"Down + Taunt: Activate SL");
        break;
    }
}