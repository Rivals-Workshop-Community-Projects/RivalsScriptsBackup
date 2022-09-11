if (turnabout_timer > 0 && turnabout)
{ 
    if !(hit_player = player && enemy_hitboxID.attack == AT_USTRONG)
    {
        if (turnabout_timer_pause) turnabout_timer_pause = 0;
        else turnabout_timer-= 20;
    }
    else if (turnabout_timer_pause) turnabout_timer_pause = 1;
}