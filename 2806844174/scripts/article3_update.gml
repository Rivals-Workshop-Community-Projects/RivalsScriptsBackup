// Article Update is ran for every frame that the article object is in-game.

if time_alive == 47 {
    image_alpha = 1;
    is_hittable = true;
}

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
// if top is covered
if position_meeting(x, y - 45, asset_get("par_block")) {
    terrain_timer--;
    if terrain_timer % 30 == 1 && terrain_timer != 1 {
        draw_circle2 = 25;
        circle_x2 = x;
        circle_y2 = y;
    }
}
if terrain_timer == 0 {
    should_die = true;
    with player_id {
        spawn_hit_fx(other.x, other.y, bubble_fx);
        sound_play(asset_get("sfx_ori_energyhit_medium"));
    }
}

time_alive++;

//if time_alive > 180 should_die = true;

if y > room_height + 100 || x < -100 || x > room_width + 100 should_die = true;

if draw_circle > 0 draw_circle--;
if draw_circle2 > 0 draw_circle2--;

if should_die instance_destroy(self);