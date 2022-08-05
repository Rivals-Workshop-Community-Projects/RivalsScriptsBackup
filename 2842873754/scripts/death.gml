if (instance_exists(sucked_player_obj)) {
    sucked_player_obj.visible = true;
    sucked_player_obj = noone; 
}

with (obj_article3) {
    if (player_id == other.id) {
        state = 3;
        state_timer = 0;
    }
}
drum_cooldown = 0;