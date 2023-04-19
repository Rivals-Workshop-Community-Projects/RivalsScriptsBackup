
draw_sprite_ext(sprite_get("lights_1"), 0, midpoint - tile*14, room_height + 0.5*tile, 1, 1, rotate, c_white, 0.3);
draw_sprite_ext(sprite_get("lights_1"), 0, midpoint + tile*14, room_height + 0.5*tile, 1, 1, -rotate, c_white, 0.3);

rotate = 18 * sin(get_gameplay_time()/70)