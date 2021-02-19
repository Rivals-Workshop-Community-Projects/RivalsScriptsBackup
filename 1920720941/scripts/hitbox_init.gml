

if (attack == AT_FSPECIAL) {
    if (player_id.badeline != noone) {
        if (player_id.badeline[4] != player_id.spr_dir) {
            kb_angle = 120;
        }
    }
}

if (attack == AT_EXTRA_1) {
    effect = 6;
    /*
    if (player_id.dash_count_at_dash == 2) {
        effect = 0;
    }
    */
}