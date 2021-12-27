//a
if attack == AT_NSPECIAL {
    if instance_exists(present_id) {
        attack = AT_NSPECIAL_2;
    }
}
if ((attack == AT_USPECIAL) or (attack == AT_DSPECIAL) or (attack == AT_FSPECIAL)) && (holding_present) {
    attack = AT_NSPECIAL_2;
}

if attack == AT_NSPECIAL_2 {
    if holding_present {
        set_attack_value(AT_NSPECIAL_2,AG_NUM_WINDOWS,6);
        window = 4;
    } else {
        set_attack_value(AT_NSPECIAL_2,AG_NUM_WINDOWS,3);
    }
    hurtboxID.dodging = false;
}

if (attack == AT_DSPECIAL && ((free) or (instance_exists(tree_id)))) {
    attack = AT_DSPECIAL_AIR;
}