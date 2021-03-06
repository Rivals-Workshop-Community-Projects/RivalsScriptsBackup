//set_attack
if (move_cooldown[attack] > 0) exit;
switch (attack) {
    case AT_JAB:
        //use jab3 instead if an earlier move in the chain has already been used
        if (peacock_consecutive_cancelled_attacks > 0) {
            attack = AT_FTHROW; //window = 7;
        }
    break;
    case AT_FTILT:
        //skip a large amount of startup if this move was cancelled into
        if (peacock_consecutive_cancelled_attacks > 0) {
            window = 2;
            if (peacock_consecutive_cancelled_attacks > 2) window_timer = get_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH) - 1;
        }
    break;
    case AT_UTILT:
    case AT_DTILT:
        //skip a small amount of startup if this move was cancelled into
        if (peacock_consecutive_cancelled_attacks > 0) {
            window_timer = 1;
        }
    break;
    case AT_NAIR:
        //perform nair2 instead if nair1 has been used
        if (peacock_used_nair > 0) {
            attack = AT_NTHROW;
        }
    break;
    case AT_DAIR:
        //reset grid index
        set_attack_value(AT_DAIR, AG_CATEGORY, 1);
    break;
    case AT_USPECIAL:
        if (!free) {
            attack = AT_USPECIAL_GROUND;
            //skip some of the teleport's startup if this move is used as an attack cancel
            if (has_hit_player && peacock_consecutive_cancelled_attacks > 0) { window = 2; }
        }
    break;
}

user_event(13);