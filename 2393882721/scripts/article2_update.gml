var marker_start, marker_end, time;
marker_start = [floor(get_marker_x(start)), floor(get_marker_y(start))]
marker_end = [floor(get_marker_x(start+1)), floor(get_marker_y(start+1))]

time = floor(point_distance(marker_start[0], marker_start[1], marker_end[0], marker_end[1]) / spd);

image_index = get_gameplay_time()/2 mod 5

if despawnCounter < 3
{
    x = ease_linear(marker_start[0],marker_end[0], state_timer, time);
    y = ease_linear(marker_start[1],marker_end[1], state_timer, time);
    state_timer++;
    if point_distance(x,y,marker_end[0],marker_end[1]) < 1
    {
        state_timer = 0;
        despawnCounter++;
        start++;
        
        x = marker_end[0];
        y = marker_end[1];
    }
    
    if (instance_exists(my_hitbox))
    {
        my_hitbox.x = x+(4*image_xscale);
        my_hitbox.y = y-(sprite_get_height(sprite_index)  / 2) + 6;
    }
}
else
{
    if (instance_exists(my_hitbox)) instance_destroy(my_hitbox);
    x = -190
    y = -90
}