//successful parry

/*
if (hit_player_obj.can_be_turret_parried && turret_parry){
    sound_play(sound_get("parry_walkie_success" + string(random_func(0, 3, true) + 1 ) ), false, noone, 0.8, 1);
}*/

if (enemy_hitboxID.orig_player == player){
    invince_time = 0;
    if (enemy_hitboxID.attack == AT_DSPECIAL_2 && enemy_hitboxID.hbox_num == 4){
        if (instance_exists(not_the_bees)) not_the_bees.hitbox_timer = not_the_bees.length - 1;
    }
}