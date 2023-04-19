for(var e = -2; e < room_width/64; e++){
    draw_sprite_ext(sprite_get("acid"), get_gameplay_time()/8, x + 64*e, y - 60, 2, 2, 0, c_white, 1);
}