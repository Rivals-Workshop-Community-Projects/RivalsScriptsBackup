if ( my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num > 2 && hit_player_obj.invincible == true && invince_time == 60){
    hit_player_obj.invincible = false;
}
if (instance_exists(pellet)){
    pellet.should_die = true;
}

if (my_hitboxID.attack == AT_NSPECIAL){
    if (instance_exists(fruit)){
        fruit.owner = hit_player;
        fruit.parried = true;
        fruit.state = 0;
        fruit.state_timer = 0;
        fruit.looped = false;
        fruit.airtime = 0;
        fruit.bounces = 0;
        fruit.spr_dir *= -1;
        with (fruit){
            sound_stop(galaxian_sound);
        }
    }
}