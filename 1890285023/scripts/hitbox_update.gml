//hitbox_update

if (attack == AT_NSPECIAL && hbox_num == 2) {
    proj_angle += (5 * spr_dir);
    if (!free) {
        destroyed = true;
    }
}