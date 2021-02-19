// Stage list
if (transform_menu) {
    var rect_start = [x + 314, y - 141];
    var rect_size = [299, 406];
    draw_set_alpha(0.75);
    draw_rectangle_colour(rect_start[0], rect_start[1], rect_start[0] + rect_size[0], rect_start[1] + rect_size[1], c_black, c_black, c_black, c_black, 0);
    draw_line_width_colour(rect_start[0] - 1, rect_start[1] + 50, rect_start[0] + rect_size[0], rect_start[1] + 50, 2, c_white, c_white);
    draw_line_width_colour(rect_start[0] - 1, rect_start[1] + 384, rect_start[0] + rect_size[0], rect_start[1] + 384, 2, c_white, c_white);
    draw_set_alpha(1);
    
    // Draw text
    // Title
    draw_debug_text(rect_start[0] + 102, rect_start[1] + 10, "Stage Playlist");
    // Legend
    draw_debug_text(rect_start[0] + 6, rect_start[1] + 32 + index_size, "Enabled            Title");
    
    // Playlist options
    if (!paused) {
        cursor_img += cursor_anim_speed;
    }
    var text_buffer = [rect_start[0] + 32, rect_start[1] + 32];
    var horiz_cursor_buffer = 40;
    var mid_horiz_cursor_buffer = 88;
    var end_horiz_cursor_buffer = 90;
    if (!cursor_selected) {
        if (actual_index == 11) {
            var horiz_buffer = mid_horiz_cursor_buffer * horiz_index;
        } else if (actual_index == 13) {
            var horiz_buffer = end_horiz_cursor_buffer * horiz_index;
        } else {
            var horiz_buffer = horiz_cursor_buffer * horiz_index;
        }
        draw_sprite(sprite_get("cursor"), cursor_img, text_buffer[0] - 16 + horiz_buffer, text_buffer[1] + index_size * index);
    } else {
        draw_sprite_ext(sprite_get("cursor"), cursor_img, text_buffer[0] + (actual_index == 11 ? 215 : 95), text_buffer[1] + index_size * index, -1, 1, 0, c_white, 1);
        draw_sprite(sprite_get("cursor"), cursor_img, (rect_start[0] + rect_size[0]) - (actual_index == 11 ? 16 : 26), text_buffer[1] + index_size * index);
    }
    // Base stage
    var cur_index = 0;
    index_value[cur_index] = stage_playlist[0];
    draw_debug_text(text_buffer[0], text_buffer[1] + index_size * indices[cur_index], "BASE STAGE:");
    draw_debug_text(text_buffer[0] + 98, text_buffer[1] + index_size * indices[cur_index], stage_names[index_value[cur_index]]);
    // Rest of the stages
    for (cur_index = 1; cur_index < array_length(stages_enabled); cur_index++) {
        draw_stage_text(cur_index, text_buffer);
    }
    
    // Transformation enable/disable + Transformation time
    draw_debug_text(text_buffer[0], text_buffer[1] + index_size * indices[cur_index], transform_enabled_temp ? "Disable All" : "Enable All");
    draw_debug_text(text_buffer[0] + 84, text_buffer[1] + index_size * indices[cur_index], "Transform Time:");
    draw_debug_text(text_buffer[0] + 218, text_buffer[1] + index_size * indices[cur_index], string(full_transform_time));
    cur_index++;
    
    // Graphics settings
    index_value[cur_index] = graphics_override;
    draw_debug_text(text_buffer[0], text_buffer[1] + index_size * indices[cur_index], "GRAPHICS:");
    draw_debug_text(text_buffer[0] + 98, text_buffer[1] + index_size * indices[cur_index], graphics_levels[index_value[cur_index]]);
    if (actual_index == cur_index && cursor_selected) {
        draw_set_alpha(0.75);
        draw_rectangle_colour(rect_start[0] + rect_size[0] + 1, text_buffer[1] + (index_size * indices[cur_index - 1]) + index_size - 2, rect_start[0] + rect_size[0] + 72, text_buffer[1] + (index_size * indices[cur_index]) + index_size/2 + 2, c_black, c_black, c_black, c_black, 0);
        draw_set_alpha(1);
        draw_debug_text(rect_start[0] + rect_size[0] + 13, text_buffer[1] + index_size * indices[cur_index] + 2, "FPS: " + string(min(fps_real, 60)));
    }
    cur_index++;
    
    draw_debug_text(text_buffer[0], text_buffer[1] + index_size * indices[cur_index], "Default");
    draw_debug_text(text_buffer[0] + 90, text_buffer[1] + index_size * indices[cur_index], "Randomize");
    draw_debug_text(text_buffer[0] + 180, text_buffer[1] + index_size * indices[cur_index], "Save/Close");
}

paused = true;

#define draw_stage_text(cur_index, text_buffer)
    index_value[cur_index] = stage_playlist[cur_index];
    draw_sprite_ext(sprite_get("checkbox"), stages_enabled[cur_index], text_buffer[0], text_buffer[1] + index_size * indices[cur_index] - 4, 1, 1, 0, transform_enabled_temp ? c_white : c_black, 1);
    draw_debug_text(text_buffer[0] + 52, text_buffer[1] + index_size * indices[cur_index], string(cur_index) + ":");
    draw_debug_text(text_buffer[0] + 98, text_buffer[1] + index_size * indices[cur_index], stage_names[index_value[cur_index]]);