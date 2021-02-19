if (attack == AT_NSPECIAL && hbox_num == 2 && orig_player_id.balanced_falco) {
    if (hitbox_timer > 10) {
        damage = 1;
    }
}

if (attack == AT_DSPECIAL && hbox_num >= 5) {
    hsp = ease_expoIn(2, 9, hitbox_timer, 25) * -spr_dir;
} 

if (player_id.btt) {
    // temporary fix for hit_player.gml not running
    if (attack == AT_NSPECIAL && player_id.has_hit) {
        player_id.hit_laser_air = true;
        with (player_id) {
            set_num_hitboxes(AT_NSPECIAL, 1);
        }
    }
    // Double check to make sure
    if (attack == AT_NSPECIAL && hbox_num == 2) {
        if (player_id.hit_laser_air) {
            destroyed = true;
        }
    }
    if (attack == AT_EXTRA_1 && (hbox_num == 2 || hbox_num == 3)) {
        player = 5;
        visible = false;
    }
}