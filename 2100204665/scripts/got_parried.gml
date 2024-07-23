if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1){
    with bone_trap{
        state = 3;
        state_timer = 0;
        image_index = 4;
    }
    move_cooldown[AT_DSPECIAL] = 90;
}