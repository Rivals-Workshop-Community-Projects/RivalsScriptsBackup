
draw_sprite_ext( sprite_get("record_" + string(blook_record+1)), 0, temp_x+12, temp_y - 12, 1, 1, 0, c_white, 1 );

draw_debug_text(temp_x+12, temp_y-14, record_names[blook_record]);

draw_sprite_ext( sprite_get("hudbar_table"), 0, temp_x+196, temp_y, -1, 1, 0, move_cooldown[AT_DSPECIAL] == 0 ? c_white : c_dkgray, 1 );

//draw_debug_text(temp_x+12, temp_y-44, string(taunt_timer));
