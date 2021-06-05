//hitbox_update

if attack == AT_NSPECIAL && hbox_num == 1 {
    var randx = random_func(0, 16, true) - 8;
    var randy = random_func(1, 16, true) - 8;
    if hitbox_timer mod 4 == 0 spawn_hit_fx(x + randx, y + randy, player_id.nspec_vfx);
}

if attack == AT_FSPECIAL && hbox_num == 3 {
    if !instance_exists(owner) {
        instance_destroy();
        exit;
    }
    x = owner.x + owner.hsp;
    y = owner.y + owner.vsp;
}