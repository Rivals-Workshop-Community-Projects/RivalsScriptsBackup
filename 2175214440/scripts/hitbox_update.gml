// destroy knives when they stop
if (attack == AT_JAB || attack == AT_NAIR) {
    if (hsp == 0) {
        destroyed = true;
    }
} else if (attack == AT_DAIR || attack == AT_USPECIAL) {
    if (vsp == 0) {
        destroyed = true;
    }
}

// jab knives' knockback decays over time
if (attack == AT_JAB || attack == AT_NAIR) {
    // wish i didn't have to hardcode this 4 here but doing get_hitbox_value here hangs the game :         )
    kb_value = 4 * ease_linear(1, 0, hitbox_timer, player_id.jab_knockback_decay_frames);
    kb_value = max(kb_value, 0);
}

// knives dropped from uspecial
if (attack == AT_USPECIAL) {
    if (hbox_num == 1 || hbox_num == 2) {
        rotation_speed += rotation_acc;
        proj_angle += rotation_speed;

        // after 25 frames, these become DEADLY
        if (hitbox_timer > 25) {
            damage = 6;
            hitpause = 60;
            kb_value = 10;
            kb_scale = 1;
        }
    } 
}

// visual effects for fspecial
if (attack == AT_FSPECIAL) {
    if (hitbox_timer % 5 == 0) {
        spawn_hit_fx(x, y - 40 + 20*sin(hitbox_timer), player_id.zap_sprite);
    }
}
