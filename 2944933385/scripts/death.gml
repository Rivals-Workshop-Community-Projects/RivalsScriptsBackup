if (instance_exists(pellet)){
    pellet.state = 2;
    pellet.state_timer = 0;
}
fruit_num = 1;
times_collected = 0;
sound_play(sound_get("death"));