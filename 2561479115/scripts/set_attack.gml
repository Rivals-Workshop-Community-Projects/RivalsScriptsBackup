///#args attack
if attack == AT_USPECIAL attack_charged = false;
bullet_fired = false;

if (attack == AT_USPECIAL) {
    reset_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE);
    uspec_airdodge_pratfall = false;
}
if attack == AT_NSPECIAL {
    roke_nspecial_charge = 0;
    /*if (bullets == 0) {
        if (!free) attack = AT_NSPECIAL_2;
        else attack = AT_NSPECIAL_AIR;
    }*/
}


if attack == AT_USTRONG && free attack = AT_UAIR;

if attack == AT_JAB {
    buffering_reverse = false;
    jab_was_parried = false;
}