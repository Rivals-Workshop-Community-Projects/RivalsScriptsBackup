//
if (my_hitboxID.attack == AT_NSPECIAL){
    window = 4;
    was_parried = true;
    if (instance_exists(trident)){
        instance_destroy(trident);
        move_cooldown[AT_NSPECIAL] = 120;
        move_cooldown[AT_DSPECIAL] = 120;
        move_cooldown[AT_DSPECIAL_2] = 120;
    }
}

if (hit_player_obj == trident_opponent && trident_opponent.trident_stuck == true){
    trident_opponent.trident_stuck = false;
    instance_destroy(trident);
    move_cooldown[AT_NSPECIAL] = 120;
    move_cooldown[AT_DSPECIAL] = 120;
    move_cooldown[AT_DSPECIAL_2] = 120;
}

if (my_hitboxID.attack == AT_DSPECIAL || my_hitboxID.attack == AT_DSPECIAL_2){
    was_parried = true;
}

if (my_hitboxID.attack == AT_USPECIAL){
    was_parried = true;
    state_timer = 151;
}