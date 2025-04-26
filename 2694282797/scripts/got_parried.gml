//a

if (my_hitboxID.attack == AT_FSPECIAL) {
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.spr_dir *= -1;
    my_hitboxID.draw_xscale *= -1;
}
if ((my_hitboxID.attack == AT_DSPECIAL or my_hitboxID.attack == AT_DSPECIAL_AIR) && my_hitboxID.hbox_num == 1) {
    if instance_exists(tree_id) {
        tree_id.state = 3;
        tree_id.state_timer = 0;
    }
}