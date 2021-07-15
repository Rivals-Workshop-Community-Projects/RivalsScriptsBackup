//If gets hit while charging the Punch
if (turbine_counting == true){
    turbine_cont = 0;
    turbine_counting = false;
}

//Resets the Grab Variables
cargo_hit_right = false;
cargo_hit_left = false;
cargo_grab = false;

//If you get hit while charging the Punch (again)
if ((prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR) && attack == AT_FSPECIAL){
    turbine_cont = 0;
    turbine_counting = false;
}

//Resets the Whirlwind Effect on the enemy
whirlwind_player.whirlwind_effect = false;
whirlwind_punch_active = false;
whirlwind_punch_effect = false;