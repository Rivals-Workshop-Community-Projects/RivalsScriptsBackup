wall = 0;
victim = noone;
sound_stop(sound_get("beep"));
if(sound_effect == 1){
    sound_play(sound_get(dead_turret[random_func(90, 5, true)]), false, false, 1);
}
plate_damage = 0;
radar_posx = x;
radar_posy = y - 20;