//hitbox_update


if attack == AT_NSPECIAL && hbox_num == 3 {
    if !instance_exists(owner) {
        instance_destroy();
        exit;
    }
    x = owner.x + owner.hsp;
    y = owner.y + owner.vsp;
}