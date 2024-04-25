

//reset number of windows in case of a grab
reset_attack_value(attack,AG_NUM_WINDOWS);



// Air strong handling (rune O)
if ((has_rune("O") && gh_state >= 4)) {
    var st_side_pressed = is_strong_really_pressed(DIR_SIDE) || is_strong_really_pressed(DIR_NONE) || left_strong_pressed || right_strong_pressed;
    var st_up_pressed = is_strong_really_pressed(DIR_UP) || up_strong_pressed;
    var st_down_pressed = is_strong_really_pressed(DIR_DOWN) || down_strong_pressed;
    
    if (st_side_pressed) attack = AT_FSTRONG;
    else if (st_up_pressed) attack = AT_USTRONG;
    else if (st_down_pressed) attack = AT_DSTRONG;
    
    if (attack == clamp(attack, AT_FSTRONG, AT_USTRONG)) set_attack_value(attack, AG_CATEGORY, 2);
}
// Note: UStrong immediately resets this to 2 for its own use
else if (attack == clamp(attack, AT_FSTRONG, AT_USTRONG)) set_attack_value(attack, AG_CATEGORY, 0);



if (attack == AT_DSPECIAL && free) attack = AT_DSPECIAL_AIR

if (attack == AT_TAUNT && down_down) attack = AT_TAUNT_2;

// Block NSpec if all drone cds are active
if (attack == AT_NSPECIAL && nspec_drone_cd >= nspec_max_drones*nspec_drone_cd_max) {
    move_cooldown[AT_NSPECIAL] = 2;
}

// Air attack limits
if (attack == AT_USPECIAL && uspec_used) move_cooldown[AT_USPECIAL] = 2;
if (attack == AT_FSPECIAL && (fspec_used || gh_state != 0)) move_cooldown[AT_FSPECIAL] = 2;
if (attack == AT_DSPECIAL_AIR && dspec_used) move_cooldown[AT_DSPECIAL_AIR] = 2;




if (attack == AT_DSPECIAL && free) attack = AT_DSPECIAL_AIR;




// this should not be necessary :|
#define is_strong_really_pressed(_dir)
    return is_strong_pressed(_dir) && !is_attack_pressed(_dir);