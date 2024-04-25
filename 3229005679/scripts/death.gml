if (get_player_stocks(player) <= 1){
    set_victory_sidebar(sprite_get("result_small_lose"));
}

if (instance_exists(vigiGhost) && vigiGhost.state != "fade"){
    vigiGhost.state = "fade";
    vigiGhost.state_timer = 0;
}

if (instance_exists(vigiCow)){
    instance_destroy(vigiCow);
}

if (instance_exists(vigiWeenie)){
    vigiWeenie.state = 6;
    vigiWeenie.state_timer = 0;
}

