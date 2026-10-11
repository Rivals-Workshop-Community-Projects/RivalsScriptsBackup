//hitbox_init

switch (attack) {
    case AT_NSPECIAL:
        if (hbox_num != 4) {
            groundedTimer = 0;
                angle = 0;
                if (player_id.nspec_charge == true) {
                    explosion = true;
                } else {
                    explosion = false;
                }
        }
    break;
    case AT_DATTACK:
        groundedTimer = 0;
        angle = 0;
    break;
    case AT_FAIR:
    case AT_BAIR:
        groundedTimer = 0;
        angle = 0;
    break;
}