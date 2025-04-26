//pre_update.gml

//graze range increase
if (graze_alpha_bigger > 0) graze_alpha_bigger -= graze_disable_redc_alpha;

if (graze_state == 0 && (dark_owner == noone || dark_owner == self) &&
    state != PS_DEAD && state != PS_RESPAWN &&
    (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR || attack != AT_INTRO))
{
    if (down_down) down_held_time ++;
    else down_held_time = 0;

    if (down_down)
    {
        if (down_held_time >= graze_size_change_delay)
        {
            graze_dist_cur = lerp(graze_dist_cur, graze_size[1], graze_size_change_speed);
            graze_alpha_bigger = graze_hold_alpha;

            hud_offset = floor(lerp(0, graze_size[1]-graze_size[0]+16, (graze_dist_cur-graze_size[0])/(graze_size[1]-graze_size[0]) ));
        }
    }
    else if (graze_dist_cur > graze_size[0])
    {
        graze_dist_cur = lerp(graze_dist_cur, graze_size[0], graze_size_change_speed);
        if (graze_dist_cur > graze_size[0]+1) graze_alpha_bigger = graze_hold_alpha;
    }
}