//flower die if you die
if instance_exists(dros_flower) {
    if dros_flower.state == 0 { //if idle, then die
        dros_flower.state = 1;
        dros_flower.state_timer = 0;
    }
    if dros_flower.state == 5 { // if holding player, release them
        dros_flower.fly_grabbed_player_obj = noone;
    }
}