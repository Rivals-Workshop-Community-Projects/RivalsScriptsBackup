
//set_attack

/*if (attack == AT_NSPECIAL) {
    attack = AT_NSPECIAL_AIR;
}*/
reset_attack_value(attack, AG_NUM_WINDOWS);

// if (attack == AT_USPECIAL) {
//     attack = AT_USPECIAL_2;
// }

if (attack == AT_DSPECIAL) {
    attack = AT_DSPECIAL_2;
}

// If one or more nspecials exists, detonate
if (attack == AT_NSPECIAL) {
    // Detonate future sight if it exists
    with (asset_get("obj_article1")) {
        if (player_id == other.id) {
            other.attack = AT_NSPECIAL_2;
        }
    }
}