if (attack == AT_DSPECIAL) {
    //if (free) set_state(PS_IDLE_AIR);
    //if (!free) set_state(PS_IDLE);
    //attack_end();
    //if (free) attack = AT_JAB;
    //else attack = AT_NAIR;
    //set_attack( noone );
    //exit;
}
if (attack == AT_FSPECIAL && free) {
    attack = AT_FSPECIAL_AIR;
}

switch (attack) {
    case AT_JAB:
    case AT_FTILT:
    case AT_NSPECIAL:
    case AT_FSPECIAL:
        if (attack_down && special_down && bigiron) {
            attack = AT_NSPECIAL_2;
        }
        break;
    case AT_DSPECIAL:
        if window == 1 && window_timer == 0 {
            sound_play(asset_get("mfx_coin"));
            }
        break
}