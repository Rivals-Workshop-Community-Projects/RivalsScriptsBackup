// JAB Pity = AT_NTHROW
// FTILT Pity = AT_FSPECIAL_2
// DTILT Pity = Just DTilt, dont spawn treasure
// UTILT Pity = AT_USPECIAL_2
// DATTACK Pity = AT_UTHROW

// NAIR Pity = AT_FTHROW
// FAIR Pity = AT_FSPECIAL_AIR
// BAIR Pity = AT_NSPECIAL_AIR
// DAIR Pity = AT_DSPECIAL_AIR
// UAIR Pity = AT_USPECIAL_GROUND

// FSTRONG Pity = AT_FSTRONG_2
// DSTRONG Pity = AT_DSTRONG_2
// USTRONG Pity = AT_USTRONG_2

switch (attack) {
    // Item 0 Chest
    case AT_DAIR:
        if (items_held[0] == false) attack = AT_DSPECIAL_AIR;
        break;
    case AT_DSTRONG:
        if (items_held[0] == false) attack = AT_DSTRONG_2;
        break;
    // Item 1 Gun
    case AT_UTILT:
        if (items_held[1] == false) attack = AT_USPECIAL_2;
        break;
    case AT_UAIR:
        if (items_held[1] == false) attack = AT_USPECIAL_GROUND;
        break;
    case AT_USTRONG:
        if (items_held[1] == false) attack = AT_USTRONG_2;
        break;
    // Item 2 Sword
    case AT_FTILT:
        if (items_held[2] == false) attack = AT_FSPECIAL_2;
        break;
    case AT_FSTRONG:
        if (items_held[2] == false) attack = AT_FSTRONG_2;
        break;
    case AT_FAIR:
        if (items_held[2] == false) attack = AT_FSPECIAL_AIR;
        break;
    case AT_BAIR:
        if (items_held[2] == false) attack = AT_NSPECIAL_AIR;
        break;
    // Item 3 Trumpet
    case AT_JAB:
        if (items_held[3] == false) attack = AT_NTHROW;
        break;
    case AT_DATTACK:
        if (items_held[3] == false) attack = AT_UTHROW;
        break;
    case AT_NAIR:
        if (items_held[3] == false) attack = AT_FTHROW;
        break;

    case AT_DSPECIAL:
        rattle_count = 0;
        rattle_loop = 2;
        break;
    case AT_FSPECIAL:
        // Mental note, might need to assign DSPECIAL_2, look into another timer
        if (move_cooldown[AT_FSPECIAL] > 0 && move_cooldown[AT_DSPECIAL_2] == 0) {
            move_cooldown[AT_DSPECIAL_2] = 10;
            sound_play(sfx_wrong);
        }
        break;
    case AT_TAUNT:
        if (items_held[0] == false) attack = AT_TAUNT_2;
        else if (shield_down) attack = AT_EXTRA_1;
        break;
}

//if (attack == AT_DSPECIAL) {
//    rattle_count = 0;
//    rattle_loop = 2;
//}

//if (attack == AT_FSPECIAL) {
//    if (move_cooldown[AT_FSPECIAL] > 0 && move_cooldown[AT_DSPECIAL_2] == 0) {
//        move_cooldown[AT_DSPECIAL_2] = 10;
//        sound_play(sfx_wrong);
//    }
//}

//if (attack == AT_TAUNT) {
//    if (items_held[0] == false) {
//        attack = AT_TAUNT_2;
//    }
//    else if (shield_down) {
//        attack = AT_EXTRA_1;
//    }
//    else if (down_down) {
//        //attack = AT_EXTRA_2;
//    }
//}

// Big Iron code
switch (attack) {
    case AT_JAB:
    case AT_FTILT:
    case AT_NSPECIAL:
    case AT_FSPECIAL:
        if (attack_down && special_down && rem) {
            attack = AT_NSPECIAL_2;
        }
        break;
}