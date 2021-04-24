if (attack == AT_USPECIAL) {
    if (hbox_num == 1) {
        spr_dir *= -1;
        rotation_acc = 0.05 + random_func(0, 1, false);
        rotation_speed = 0;
    } else if (hbox_num == 2) {
        rotation_acc = 0.05 + random_func(1, 1, false);
        rotation_acc *= -1;
        rotation_speed = 0;
    }
}

if (attack == AT_DAIR) {
    proj_angle = -spr_dir*45;
}