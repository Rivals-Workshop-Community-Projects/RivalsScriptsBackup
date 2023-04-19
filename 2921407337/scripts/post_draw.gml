// post_draw.gml

#macro UP_DIRECTION 8
#macro UP_RIGHT_DIRECTION 9
#macro RIGHT_DIRECTION 6
#macro DOWN_RIGHT_DIRECTION 3
#macro DOWN_DIRECTION 2
#macro DOWN_LEFT_DIRECTION 1
#macro LEFT_DIRECTION 4
#macro UP_LEFT_DIRECTION 7
#macro NEUTRAL_DIRECTION 5

// SL Debug Meter
/*
if(SL_damage_timer  > 0){
    var temp_SL_damage_buffer = SL_damage_timer / SL_num_of_frames_per_damage;
    draw_debug_text(x - 60, y - floor(char_height - 85),"SL Damage: " + string(temp_SL_damage_buffer));
}
*/
// SL Above Meter
if(SL_damage_timer > 0){
    var temp_SL_damage_buffer = SL_damage_timer / SL_num_of_frames_per_damage;
    var bar_length_in_px = 128;
    var bar_height_in_px = 128;
    var max_displayed_damage = 10;
    var top_left_x = 0 //1 * (bar_length_in_px / 2);
    var top_left_y = 0;
    var start_x = x - (bar_length_in_px / 2);
    var start_y = y - char_height - 22 - (bar_height_in_px / 2); // Offset original
    var SL_percent_to_display = (temp_SL_damage_buffer/ max_displayed_damage) * bar_length_in_px; // Determine percentage
    SL_percent_to_display = clamp(SL_percent_to_display,0,bar_length_in_px); // CLamp to prevent large number
    
    shader_start();
    //draw_sprite(sprite_get("sl_hud_bar"),get_gameplay_time()/6,x,y - char_height - 22);
    draw_sprite_part(sprite_get("sl_hud_bar"),get_gameplay_time()/6,top_left_x,0,SL_percent_to_display,bar_height_in_px,start_x,start_y);
    shader_end();
}

//SL Chain Grab Above Sprite on Opponent
if(instance_exists(grabbed_player_obj)){
    if(attack == AT_FTHROW || attack == AT_DTHROW || attack == AT_UTHROW){
        var temp_y = grabbed_player_obj.y - grabbed_player_obj.char_height / 2;
        shader_start();
        draw_sprite_ext(sprite_get("sl_chain_grab"),get_gameplay_time()/3,grabbed_player_obj.x,temp_y ,spr_dir,1,0,c_white,1);
        shader_end();
    }
}


/*
draw_debug_text( x -20, y - 20, "X: " + string(x) + "Y: " + string(y));
*/