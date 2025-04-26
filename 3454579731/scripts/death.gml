
if (voice_on /*&& voice_chance >= 4*/){
    sound_play(sound_get("sfx_ko" + string(1 + round(random_func_2(3, 1, false)))));
}

has_mech = true;
sound_stop(car_start);
sound_stop(car_loop);
floating = 0;
cannonball_charge = 0;