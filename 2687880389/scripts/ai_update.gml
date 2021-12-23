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
if (((state == PS_ATTACK_GROUND) || (state == PS_ATTACK_GROUND))
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

// Pick a direction to throw
if (((state == PS_ATTACK_GROUND) || (state == PS_ATTACK_GROUND))
    && (attack == AT_NSPECIAL)
    && (holding_someone))
{
    // Randomly pick a direction
    var throw_choice = random_func(0, 3, true);
    switch (throw_choice) {
        case 0 :
            left_down = true;
            break;
        case 1 :
            right_down = true;
            break;
        case 2 :
            up_down = true;
            break;
        default :
            down_down = true;
            break;
    }
}

// TODO: teach ai how to drive