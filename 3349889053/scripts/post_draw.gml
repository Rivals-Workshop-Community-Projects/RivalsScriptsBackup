if minion_spawn_position.active {
    shader_start()
    draw_sprite_ext(sprite_get("tombstone_travel"), get_gameplay_time() / 5, minion_spawn_position.current_distance,minion_spawn_position.y_pos, minion_spawn_position.x_scale, 1, 0, c_white, 1);
    shader_end();
}


if instance_exists(minion_obj) {
    if minion_obj.incubation == minion_obj.incubation_max and minion_obj.state == PS_BURIED {
        gpu_push_state();
        gpu_set_fog(1, decay_color_rbg, 0, 1)
        gpu_set_blendmode(bm_add)
        draw_sprite_ext(minion_obj.minion_sprite_index, minion_obj.minion_image_index, minion_obj.x, minion_obj.y, minion_obj.spr_dir, 1, 0, 1, sin(get_gameplay_time()/16) )
        gpu_pop_state();
    }
    
    if minion_obj.heal_effect != -1 {
        gpu_push_state();
        gpu_set_fog(1, decay_color_rbg, 0, 1)
        gpu_set_blendmode(bm_add)
        draw_sprite_ext(minion_obj.minion_sprite_index, minion_obj.minion_image_index, minion_obj.x, minion_obj.y + minion_obj.minion_offset_y, minion_obj.spr_dir, 1, 0, 1, minion_obj.heal_effect * 0.7)
        gpu_pop_state();
    }
}


//draw_circle_colour(minion_spawn_position.current_distance,minion_spawn_position.y_pos, 7, c_red, c_red, false)x