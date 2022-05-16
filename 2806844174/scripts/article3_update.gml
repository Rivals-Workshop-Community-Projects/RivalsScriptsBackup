// Article Update is ran for every frame that the article object is in-game.

image_index += .3;

if !frozen vsp += .15;

if frozen {
    vsp = lerp(vsp, 0, .25);
    hsp = lerp(hsp, 0, .25);
    //if vsp > 0 && vsp < .5 vsp = 0;
}

if should_draw && abs(vsp) < 1.5 {
    should_draw = false;
    draw_circle = 25;
    circle_x = x;
    circle_y = y;
}

time_alive++;

//if time_alive > 180 should_die = true;

if y > room_height + 100 || x < -100 || x > room_width + 100 should_die = true;

if draw_circle > 0 draw_circle--;

if should_die instance_destroy(self);