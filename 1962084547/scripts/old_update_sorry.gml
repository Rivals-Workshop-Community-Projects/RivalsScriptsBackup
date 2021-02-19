// TODO:
// - Make `their_dmg` an array, updated by each enemy object.
//   I can then iterate through the values and calculate an average.

/*
 * Boulder Toss
*/
// if (!free && USPECIAL_VERTICAL_COUNT > 0) {
//     // Reset the number of jumps once we're grounded
//     USPECIAL_VERTICAL_COUNT = 0;
// }

// if (boulder_alive) {
//     move_cooldown[AT_USPECIAL] = 2;
// }

/*
 * Defeatist Passive
*/

// Calculate the damage values
// their_dmg = 0;
// enemy_count = 0;

// for (i = 0; i <= 3; i++) {
//     if (i == player)
//         continue;

//     if (!instance_exists(i.id))
//         continue;

//     if (!instance_find(i.id, 0).ARCHEN_IS_VALID)
//         continue;

//     their_dmg += get_player_damage(i);
//     enemy_count++;
// }

// their_dmg = their_dmg / enemy_count;
our_dmg = get_player_damage(player);

var other_id = player == 1 ? 2 : 1;
their_dmg = get_player_damage(other_id);

var dmg_difference = our_dmg - their_dmg;
power_within_range = abs(dmg_difference) >= power_range;

// Calculate the number of dots in the HUD bar
power_dots = floor(abs(dmg_difference) / (power_range / 6));
power_dot_type = dmg_difference > 0 ? POWER_STATE_DOWN : POWER_STATE_UP;

if (power_dots > 6) {
    power_dots = 6;
}

// Handle states
if (power_keep) {
    // If we're in a fixed power mode, check if we need to reset it
    var reset_state_up = (power_state == POWER_STATE_UP) && (our_dmg > their_dmg);
    var reset_state_down = (power_state == POWER_STATE_DOWN) && (our_dmg < their_dmg);

    if (power_dots == 0 || reset_state_up || reset_state_down) {
        power_state = POWER_STATE_OFF;
        power_keep = false;
    }

    return;
}

switch (power_state) {
    case 0:  // POWER_STATE_OFF
        if (power_within_range) {
            // If the difference between our damage is within the activation range
            if (our_dmg < their_dmg) {
                // If we're ahead, passive state goes to UP
                power_state = POWER_STATE_UP;
            } else {
                // Otherwise, passive state goes to DOWN
                power_state = POWER_STATE_DOWN;
            }
        }

        break;

    default:
        var keep_state_up = (power_state == POWER_STATE_UP) && (our_dmg < their_dmg);
        var keep_state_down = (power_state == POWER_STATE_DOWN) && (our_dmg > their_dmg);

        if (power_within_range && (keep_state_up || keep_state_down)) {
            power_keep = true;
        }

        break;
}
