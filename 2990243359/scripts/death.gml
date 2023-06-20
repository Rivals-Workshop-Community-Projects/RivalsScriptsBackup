if (instance_exists(trident)){
    spawn_hit_fx( trident.x, trident.y, vfx_collect);
    sound_play(sound_get("tp_item_equip"));
    instance_destroy(trident);
}

if (hit_player_obj == trident_opponent && trident_opponent.trident_stuck == true){
    trident_opponent.trident_stuck = false;
    instance_destroy(trident);
}
