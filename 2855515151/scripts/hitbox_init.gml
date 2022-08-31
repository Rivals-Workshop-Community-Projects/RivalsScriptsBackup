//a
// // fstrong hitbox code
if attack == AT_FSTRONG && hbox_num == 1 {
    hitstate = 0; //states of clyde animation/behaviour
    prev_hitstate = 0;
    temp_timer = 0; //temp timer for startup animation
    anim_timer = 0; //timer for animation purposes
    //bite_timer = 38; //how many frames it takes until clyde finishes biting
    with(player_id){other.clydespeed = get_hitbox_value(AT_FSTRONG,1,HG_PROJECTILE_HSPEED)}; //the speed that it's set to, change in the fstrong.gml's hitbox hspeed
    clydehit = false; //if clyde has hit someone
}

otto_hitpause = 0;
hitpause_frames = 18;