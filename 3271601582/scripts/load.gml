//Sprites
sprite_change_offset("bonfire", 11, 34);
sprite_change_offset("anastacia", 8, 20);
sprite_change_offset("crestfallen", 12, 24);
sprite_change_offset("siegmeyer", 26, 41);
sprite_change_offset("crow", 4, 12);
sprite_change_offset("solaire", 10, 46);
sprite_change_offset("chosen", 20, 25);

sprite_change_offset("frampt_head", 11, 0);
sprite_change_offset("well", 1, 4)

//Random on start
spawn_anastacia = (random_func(1, 100, true));
spawn_crow = (random_func(2, 60, true));
spawn_crestfallen = (random_func(3, 3, true));
spawn_siegmeyer = (random_func(4, 3, true));
spawn_solaire = (random_func(5, 2, true));
spawn_chosen = (random_func(6, 10, true));