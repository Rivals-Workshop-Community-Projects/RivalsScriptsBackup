//other_post_draw.gml
//similarly to post_draw.gml, this script draws over other players


if (instance_exists(other_player_id)) {
    with (other_player_id) shader_start();

    // Draw remaining marks
    for (var i = 0; i < ds_list_size(other_player_id.marked_players); i++) {
        var entry = other_player_id.marked_players[| i];
        var marked_player = entry[0];
        var marks = entry[1];
        if (marked_player == id && marks > 0) {
            var radius = 60;
            for (var j = 0; j < marks; j++) {
                var mark_x = x + (dcos(other_player_id.mark_angle + (360 / marks) * j) * radius);
                var mark_y = y - char_height / 2 + (dsin(other_player_id.mark_angle + (360 / marks) * j) * radius);
                draw_sprite_ext(
                    other_player_id.mark_sprite,
                    floor(other_player_id.mark_anim),
                    mark_x,
                    mark_y,
                    1,
                    1,
                    other_player_id.mark_angle + (360 / marks) * j,
                    c_white,
                    1
                );
            }
        }
    }
    // Draw detonating marks
    for (var i = ds_list_size(other_player_id.detonating_marks) - 1; i >= 0; i--) {
        var detonation = other_player_id.detonating_marks[| i];
        var det_x = detonation[0];
        var det_y = detonation[1];
        var det_frame = detonation[2];

        // Draw the detonation sprite
        draw_sprite_ext(
            other_player_id.detonation_sprite, 
            floor(det_frame),
            det_x,
            det_y,
            1,
            1,
            0, 
            c_white,
            1
        );
        det_frame += 0.2; // Adjust speed as needed
        if (det_frame >= sprite_get_number(other_player_id.detonation_sprite)) {
            // Remove entry if animation is complete
            ds_list_delete(other_player_id.detonating_marks, i);
        } else {
            // Update frame in the list
            detonation[2] = det_frame;
            other_player_id.detonating_marks[| i] = detonation;
        }
    }

    with (other_player_id) shader_end();
}