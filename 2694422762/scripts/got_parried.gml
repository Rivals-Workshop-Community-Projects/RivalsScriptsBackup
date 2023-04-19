with (obj_article1) {
    if (player_id == other.id) {
        state = 4;
        state_timer = 0;
        window = 1;
        window_timer = 0;
    }
}

if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR)) {
    if (window >= 4 && window < 7) {
        window = 7;
        window_timer = 0;
    }
}

card_charge = 0;