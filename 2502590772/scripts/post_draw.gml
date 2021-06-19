//post_draw.gml


//draw_debug_text(article_charge_zone.x, article_charge_zone.y, article_charge_zone.state);

if (is_master_player) exit;
if (!custom_clone && has_been_buffed_by_helping_hand && visual_hh_powerup_counter < 35) {
    shader_start();
    draw_sprite(spr_hh_buff_powerup_front_effect, visual_hh_powerup_counter / 6, x, y);
    shader_end();
    //draw_debug_text(x, y - 128, string(check_fast_fall) + " | ");
    //draw_sprite(mask_index, 0, buffer_x_position[buffer_counter], buffer_y_position[buffer_counter])
    //draw_sprite(sprite_get("debug_cursor"), 0, buffer_x_position[buffer_counter], buffer_y_position[buffer_counter] );
    
    //draw_debug_text(x, y - 200, "solid ground: " + string(ground_type) );
}


