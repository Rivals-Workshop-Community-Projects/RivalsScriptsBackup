if (get_player_stocks(player) <= 1){
    set_victory_sidebar(sprite_get("result_small_lose"));
}

if (instance_exists(vigiGhost)){
    instance_destroy(vigiGhost);
    move_cooldown[AT_NSPECIAL] = 0;
}

if (instance_exists(vigiCow)){
    instance_destroy(vigiCow);
    move_cooldown[AT_DSPECIAL] = 0;
}

if (instance_exists(vigiWeenie)){
    instance_destroy(vigiWeenie);
    move_cooldown[AT_FSPECIAL] = 0;
}

