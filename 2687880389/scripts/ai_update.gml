var currently_attacking = (state == PS_ATTACK_GROUND) || (state == PS_ATTACK_AIR);

// Recover gracefully
if (ai_recovering) {
    if ((attack == AT_USPECIAL)
        && (window < 3)
        && (rocket_fuel > 0))
    {
        special_down = true;
    }
}

// Angle fstrong
if (currently_attacking
    && (attack == AT_FSTRONG)
    && ((window == 3) || (window == 7) || (window == 11)))
{
    // Aim up if they're high enough
    if (ai_target.y < y) {
        up_down = true;
    } else if (ai_target.y > y) {
        down_down = true;
    }
}

// Charge dstrong if opponent is far
if (currently_attacking
    && (attack == AT_DSPECIAL)
    && ((window == 2) || (window == 3)))
{
    if ((sign(ai_target.x - x) == sign(spr_dir))
        && (abs(ai_target.x - x) > dspecial_charge_hold_threshold))
    {
        special_down = true;
    }
}

// Pick a direction to throw
if (currently_attacking
    && (attack == AT_NSPECIAL)
    && (holding_someone))
{
    // Randomly pick a direction
    var throw_choice = random_func(0, 3, true);
    switch (throw_choice) {
        case 0 :
            left_down = true;
            right_down = false;
            up_down = false;
            down_down = false;
            break;
        case 1 :
            left_down = false;
            right_down = true;
            up_down = false;
            down_down = false;
            break;
        case 2 :
            left_down = false;
            right_down = false;
            up_down = true;
            down_down = false;
            break;
        default :
            left_down = false;
            right_down = false;
            up_down = false;
            down_down = true;
            break;
    }
}

// TODO: teach ai how to drive
/*
if (temp_level >= 9) {
    if (!free && (ai_target.y == y)) {
        down_down = true;
    }
}
*/