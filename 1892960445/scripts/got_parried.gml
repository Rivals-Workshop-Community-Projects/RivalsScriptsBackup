//parried
if (my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 2){
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.hsp = my_hitboxID.hsp + 5*my_hitboxID.spr_dir;
}