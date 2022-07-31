


draw_debug_text(temp_x+104, temp_y-58, string("Business Suit"));
draw_sprite_ext( sprite_get("suit_power_base"), 0, temp_x - 14, temp_y - 50, 1, 1, 0, c_white, 1 );
draw_sprite_ext( sprite_get("bar_back"), 0, temp_x + 10, temp_y - 34, 160*.6, 1, 0, c_white, 1 );
draw_sprite_ext( sprite_get("bar_back2"), 0, temp_x + 10, temp_y - 34, back_bar*.6, 1, 0, c_white, 1 );
draw_sprite_ext( sprite_get("suit_power_bar"), power_index, temp_x + 10, temp_y - 34, suit_power*.6, 1, 0, c_white, 1 );

//draw_debug_text(temp_x+104, temp_y-88, string(temp_blockdetection));
//draw_debug_text(temp_x+104, temp_y-88, string(voice_chance));
/*draw_debug_text(temp_x+104, temp_y-88, string(image_index));
draw_debug_text(temp_x+124, temp_y-88, string(state));
draw_debug_text(temp_x+144, temp_y-88, string(state_timer));*/
