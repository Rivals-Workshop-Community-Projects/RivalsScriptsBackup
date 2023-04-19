draw_sprite_ext(sprite_get("lights_1"), 0, midpoint - tile*3, room_height - 5*tile, 0.3, 1, rotate, c_white, 0.1);
draw_sprite_ext(sprite_get("lights_1"), 0, midpoint + tile*3, room_height - 5*tile, 0.3, 1, -rotate, c_white, 0.1);


rotate = 18 * sin(get_gameplay_time()/70)