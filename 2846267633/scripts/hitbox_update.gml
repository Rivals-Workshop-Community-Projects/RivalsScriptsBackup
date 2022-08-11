//hitbox_init
if (attack == AT_USPECIAL) {
    proj_angle = point_direction(0, 0, hsp, vsp) + 90;
    if (image_index >= 3 && vsp < 12) {
        image_index = 0;
    }
    if (image_index >= 9) image_index = 3;
    if (!free) {
        spawn_hit_fx(x, y, 0);
        instance_destroy();
    }
}