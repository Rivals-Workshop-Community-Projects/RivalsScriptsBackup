//hitbox_update
if (attack == AT_NSPECIAL){
    if (window == 2 || window == 3 && !hitpause) {
        grabbed = hit_player_obj;
        grabbedx = hit_player_obj.x
        grabbedy = hit_player_obj.y
        window = 4;
        window_timer = 0;
    }
    if (window == 4) {
        if (my_hitboxID.hbox_num == 3 && hit_player_obj == grabbed) {
            dingdong = 1;
        }
    }
}
if (attack == AT_UTHROW || attack == AT_DTHROW || attack == AT_FTHROW || attack == AT_NTHROW){
    if (window == 1 || window == 2 && !hitpause) {
        grabbed = hit_player_obj;
        grabbedx = hit_player_obj.x;
        grabbedy = hit_player_obj.y;
        window = 3;
        window_timer = 0;
    }
    if (window == 3) {
        if (my_hitboxID.hbox_num == 3 && hit_player_obj == grabbed) {
            dingdong = 1;
        }
    }
}