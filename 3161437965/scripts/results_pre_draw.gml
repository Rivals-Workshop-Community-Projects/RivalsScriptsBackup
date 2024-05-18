if("saved_sync_var" in self){
    var cur_time = get_gameplay_time();
    var rainbow_color = make_colour_hsv(5*((cur_time)%52), 225, 225);
    draw_set_alpha(.2);
    draw_rectangle_color(0, 0, room_width, room_height, rainbow_color, rainbow_color, rainbow_color, rainbow_color, false);
    draw_set_alpha(1);
}