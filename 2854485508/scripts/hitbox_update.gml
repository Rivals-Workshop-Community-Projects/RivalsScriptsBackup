if (attack == AT_NSPECIAL && hbox_num == 1) {
    proj_angle = point_direction(0,0,hsp,vsp)
    if (!free) destroyed = true;
}

if (attack == AT_NSPECIAL_2 && hbox_num == 1) {
    if (instance_exists(mamizou_enemy)) {
        x = mamizou_enemy.x;
        y = mamizou_enemy.y;
    }
}