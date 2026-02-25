// set_attack is a script that runs before an attack is ran. Essentially in-game frame 0 of any attack.
//user_event(13);
wallSlide = false;
if !has_rune("D") incrementDspecial = 2;
else incrementDspecial = 5;

if has_rune("G"){
    if ((right_strong_pressed && spr_dir = 1) || (left_strong_pressed && spr_dir = -1)) && (attack == AT_FAIR || attack == AT_NAIR) && free{
        attack = AT_FSTRONG;
    }
}

if has_rune("G"){
    if down_strong_pressed && (attack == AT_DAIR) && free{
        can_fast_fall = false;
        attack = AT_DSPECIAL_2;
        airDstrongTimer = 0;
    } 
}

if attack == AT_DSPECIAL_2{
    vsp = 0;
    can_fast_fall = false;
    airDstrongTimer = 0;
}

nspecialCycleTimer = 5*itemCycleFrequency;
ultimateTarget = [];
ultimateDarkness = 0;
ultimateLoop = clamp(ultimateLoops + (plus_active*2) + comboLevel, 0, ultimateMaxLoops);