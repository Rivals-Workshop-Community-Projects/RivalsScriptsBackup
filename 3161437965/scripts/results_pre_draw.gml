if("initialized_data" not in self){
    with (asset_get("pHitBox"))
    {
        if("smuggled_data" in self){
            other.chacha_dance = smuggled_data[0];
        }
    }
}
// if(get_synced_var(player) == 420) chacha_dance = 1;
// if(get_synced_var(player) == 69) chacha_dance = 0;
if ("chacha_dance" in self && chacha_dance){
    if("my_timer" not in self) my_timer = 0; //for some reason the timers used in the results screen run twice
    else
    {
        my_timer += 0.5;
        if("chacha_dance" in self){
            var cur_time = my_timer;
            var rainbow_color = make_colour_hsv(5*((cur_time)%52), 225, 225);
            draw_set_alpha(.2);
            draw_rectangle_color(0, 0, room_width, room_height, rainbow_color, rainbow_color, rainbow_color, rainbow_color, false);
            draw_set_alpha(1);
        }
    }
}