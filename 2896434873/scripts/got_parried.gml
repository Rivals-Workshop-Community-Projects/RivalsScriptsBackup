hit_player_obj.fspecial_curse_player = noone;
hit_player_obj.fspecial_curse_timer = 0;

if steady_anim
{
    steady_anim = false;
    reticule_show_steady_aim = false;
}

if (instance_exists(quick_shot_hitbox)) {
    if (gun and (my_hitboxID == quick_shot_hitbox)) {
        parry_lag = 45 + (sqr(parry_distance) / 600)
    }
}

if (gun)
{
    gun = 0;
    if reticule_state != -1
    {
    	reticule_state = 2;
    	reticule_frame = 16;
    }
    has_airdodge = has_airdodge_buffer;
}

if my_hitboxID.attack == AT_FSPECIAL
{
    my_hitboxID.draw_xscale *= -1;
}