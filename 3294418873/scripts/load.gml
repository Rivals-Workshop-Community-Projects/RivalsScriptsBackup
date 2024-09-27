//Sprites
sprite_change_offset("cleric_far", 21, 34)
sprite_change_offset("cleric_close", 130, 130)
sprite_change_offset("cleric_shadow", 37, 11)
sprite_change_offset("lantern", 13, 24)
sprite_change_offset("lamp_close", 6, 7)
sprite_change_offset("lamp_far", 6, 9)
sprite_change_offset("viceral_vfx", 129, 129)

//Random on start
spawn_1 = (random_func(1, 4, true));
spawn_2 = (random_func(2, 4, true));
spawn_3 = (random_func(3, 4, true));
spawn_4 = (random_func(4, 4, true));
spawn_5 = (random_func(5, 4, true));
spawn_6 = (random_func(6, 4, true));
spawn_7 = (random_func(7, 4, true));
spawn_8 = (random_func(8, 4, true));
spawn_9 = (random_func(9, 4, true));
spawn_10 = (random_func(10, 4, true));
spawn_11 = (random_func(11, 4, true));
spawn_12 = (random_func(12, 4, true));

viceral_vfx = hit_fx_create(sprite_get("viceral_vfx"), 32)