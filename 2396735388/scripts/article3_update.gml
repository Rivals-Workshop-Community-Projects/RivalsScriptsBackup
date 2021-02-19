//article3_update

live_timer++;

if live_timer < time_to_active {
    state = 0;
    image_yscale = live_timer / time_to_active;
} else if live_timer < max_lifetime {
    state = 1;
    image_yscale = 1;
} else if live_timer < die_time + max_lifetime {
    state = 2;
    image_yscale = ( die_time - (live_timer - max_lifetime) ) / die_time;
} else {
    instance_destroy();
    exit;
}