if attack == AT_FTILT{
    move_cooldown [AT_FTILT] = 60;
}

if attack == AT_FSPECIAL{
    move_cooldown [AT_FSPECIAL] = 50;
}

if attack == AT_NSPECIAL{
    move_cooldown [AT_NSPECIAL] = 20;
}

if attack == AT_DSPECIAL{
    move_cooldown [AT_DSPECIAL] = 120;
}

if (attack == AT_DSPECIAL){
    if (window == 2 && window_timer == 1){
        rain = instance_create(x + (15 * spr_dir), y - 180, "obj_article1");
    }
}
