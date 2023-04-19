if form{
    gauge_val = 0;
    form = 0;
}else{
    gauge_val -= 1000;
    if !gauge_val gauge_val = 0;
}

move_cooldown[AT_FSPECIAL] = 0;