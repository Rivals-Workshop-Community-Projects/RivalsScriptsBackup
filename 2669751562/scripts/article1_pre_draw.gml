/// Article draw

// draw_rectangle_colour(x - width/2, y, x + width/2, y - height, c_red, c_red, c_red, c_red, true);

with(player_id) {
    shader_start();
}

if(!init) {
    for(var i = 0; i < 4; i++) {
        var tile_x = x + tile_width * (i - 2);

        if(position_meeting(tile_x, y+1, asset_get("par_block")) || position_meeting(tile_x, y+1, asset_get("par_jumpthrough"))) {
            intersect_array[i] = true;
            // print_debug("touching stage " + string(i));
        }
    }
    // print_debug(intersect_array);
}

if(state == 0) {
    for(var i = 0; i < 4; i++) {
        var tile_x = x + tile_width * (i - 2);

        if(intersect_array[i])
            draw_sprite_ext(web_spawn_sprite, state_timer div 3, tile_x, y, 1, 1, 0,  c_white, 1);
        // print_debug(state_timer div 3);
    }
}

if(state == 1) {
    for(var i = 0; i < 4; i++) {
        var tile_x = x + tile_width * (i - 2);

        switch(i) {
            case 0:
                if(intersect_array[i]) {
                    if(!intersect_array[i+1])
                        draw_sprite_ext(web_sprite, 3, tile_x, y, 1, 1, 0,  c_white, 1);  //No stage right
                    else
                        draw_sprite_ext(web_sprite, 0, tile_x, y, 1, 1, 0,  c_white, 1);  //Stage right
                }
                // print_debug("draw left");
                break;

            case 1:
            case 2:
                if(intersect_array[i]) {
                    if(!intersect_array[i-1])
                        if(intersect_array[i+1])
                            draw_sprite_ext(web_sprite, 0, tile_x, y, 1, 1, 0,  c_white, 1);  //No stage left, stage right
                        else
                            draw_sprite_ext(web_sprite, 3, tile_x, y, 1, 1, 0,  c_white, 1);  //No stage left, no stage right
                    else
                        if(intersect_array[i+1])
                            draw_sprite_ext(web_sprite, 1, tile_x, y, 1, 1, 0,  c_white, 1);  //Stage left, stage right
                        else
                            draw_sprite_ext(web_sprite, 2, tile_x, y, 1, 1, 0,  c_white, 1);  //Stage left, no stage right
                }
                // print_debug("draw middle");
                break;

            case 3:
                if(intersect_array[i]) {
                    if(!intersect_array[i-1])
                        draw_sprite_ext(web_sprite, 3, tile_x, y, 1, 1, 0,  c_white, 1);  //No stage left
                    else
                        draw_sprite_ext(web_sprite, 2, tile_x, y, 1, 1, 0,  c_white, 1);  //Stage left
                }
                // print_debug("draw right");
                break;
        }
    }
}

if(state == 2) {
    for(var i = 0; i < 4; i++) {
        var tile_x = x + tile_width * (i - 2);

        if(intersect_array[i])
            draw_sprite_ext(web_spawn_sprite, 5 - state_timer div 3, tile_x, y, 1, 1, 0,  c_white, 1);
    }
}

with(player_id) {
    shader_end();
}

// var stage_x = get_instance_x(nearest_stage_obj);
// var stage_y = get_instance_y(nearest_stage_obj);
// draw_rectangle_colour(stage_x, stage_y, stage_x + 32, stage_y + 32, c_red, c_red, c_red, c_red, true);

// draw_point_color(x, y, c_yellow);