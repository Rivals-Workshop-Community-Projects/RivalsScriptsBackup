//post-draw

if (ds_list_size(edge_statics) > 0) {
    for (i = 0; i < ds_list_size(edge_statics); i++) {
        if (ds_list_find_value(edge_static_labels, i) == "dead") {
            ds_list_find_value(edge_statics, i).cd = static_death;
        }
        if (ds_list_find_value(edge_statics, i).cd == static_death) {
            ds_list_set(edge_static_labels, i, "dying");
        }
        var static_frame = (edge_static_timer - ds_list_find_value(edge_statics, i).cd) % (static_active_frames/static_image_speed) * static_image_speed + static_startup_anim_frames;
        var static_index = ds_list_find_value(edge_statics, i).cd <= edge_static_timer - static_startup ? static_frame : (static_startup_anim_frames/static_startup) * (edge_static_timer - ds_list_find_value(edge_statics, i).cd);
        var static_index = ds_list_find_value(edge_statics, i).cd <= static_death ? static_startup_anim_frames + static_active_frames + (static_death_anim_frames/static_death) * (static_death - ds_list_find_value(edge_statics, i).cd) : static_index;
        var static = sprite_get("staticedge");
        var static_x = ds_list_find_value(edge_statics, i).x;
        var static_y = ds_list_find_value(edge_statics, i).y;
        // Adjusts it to be on the borders of the screen
        if (static_x == min_edge_pos[0]) {
            static_x = 0;
        } else if (static_x == max_edge_pos[0]) {
            static_x = 960;
        }
        
        if (static_y == min_edge_pos[1]) {
            static_y = 0;
        } else if (static_y == max_edge_pos[1]) {
            static_y = 540;
        }
        var x_val = round((static_x - (sprite_get_width(static)/2)) + view_get_xview()) + 1;
        var y_val = round((static_y - (sprite_get_height(static)/2)) + view_get_yview()) + 1;
        draw_sprite(static, static_index, x_val, y_val);
        if (!post_paused) {
            ds_list_find_value(edge_statics, i).cd--;
            if (ds_list_find_value(edge_statics, i).cd <= 0) {
                ds_list_delete(edge_static_labels, i);
                ds_list_delete(edge_statics, i);
            }
        }
    }
}

post_paused = true;