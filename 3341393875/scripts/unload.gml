sound_stop(machswat_sfx);

if (instance_exists(active_minion)){
    instance_destroy(active_minion);
}

if (instance_exists(pizzaHeadTV)){
    instance_destroy(pizzaHeadTV);
}