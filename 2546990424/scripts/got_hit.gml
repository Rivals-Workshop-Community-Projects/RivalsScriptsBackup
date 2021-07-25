//Resets the Grab Variables
if ((enemy_hitboxID.player == player) || (enemy_hitboxID.damage > 0 && enemy_hitboxID.kb_value > 0)){
    cargo_hit_right = false;
    cargo_hit_left = false;
    cargo_grab = false;
}

if (enemy_hitboxID.damage > 0 && enemy_hitboxID.kb_value > 0){

//If gets hit while charging the Punch
if (turbine_counting == true){
    turbine_cont = 0;
    turbine_counting = false;
}



//If you get hit while charging the Punch (again)
if ((prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR) && attack == AT_FSPECIAL){
    turbine_cont = 0;
    turbine_counting = false;
}

if (enemy_hitboxID.type == 1){

//Resets the Whirlwind Effect on the enemy
whirlwind_player.whirlwind_effect = false;
whirlwind_punch_active = false;
whirlwind_punch_effect = false;

}

whirlwind_myself = false;

}



//Whirlwind doesn't give you Walljump
if (enemy_hitboxID.player != player) {
    whirlWallJump = 1
}