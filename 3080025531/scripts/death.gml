if (voiced){
    if (!dust_mode) {
        var rand = random_func(6, 2, true);
        if (rand == 0) sound_play(vc_dust_death1);
        if (rand == 1) sound_play(vc_dust_death2);
    }
    else sound_play(vc_dust_dust);
}

stamina = max_stamina;
exhausted = false;
exhausted_time = 0;
outline_color = [0, 0, 0];
init_shader();
