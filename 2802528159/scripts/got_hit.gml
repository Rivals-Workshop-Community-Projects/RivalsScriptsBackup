if(plate_state == 1){
    wall = 0;
    climbing = false;
}

on_cooldown = 0;
pratcancel = 1;

if(hit_turret <= 0 && sound_effect == 1){
    sound_play(sound_get(hurt_turret[random_func(190, 4, true)]), false, false, 1);
    hit_turret = 90;
}