sc_coin_lifetime = 0;

sprite_index = sprite_get("coin");
mask_index = sprite_get("coin");

depth = -10;

hsp = (random_func_2(get_gameplay_time() % 200, 2, 1) == 1? 1:-1) * (2 + random_func_2(get_gameplay_time() % 200, 7, true));
vsp = -3 - random_func_2(get_gameplay_time() % 200, 5, true);