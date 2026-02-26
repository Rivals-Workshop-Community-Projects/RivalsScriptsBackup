if (get_player_stocks(player) <= 1){
    set_victory_sidebar(sprite_get("result_small2"));
}

if (instance_exists(active_minion)){
    active_minion.state = "DEATH";
}

if (instance_exists(pizzaHeadTV)){
    instance_destroy(pizzaHeadTV);
}