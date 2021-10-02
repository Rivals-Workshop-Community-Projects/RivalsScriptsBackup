has_airdodge = false;
can_shield = false;
can_tech = false;
clear_button_buffer(PC_SHIELD_PRESSED);
parry_cooldown = 5;
if(state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD)
{
    set_state(PS_IDLE);
    sound_stop(asset_get("sfx_roll"));
}

old_spr_dir = spr_dir;


if (state_cat = (SC_GROUND_NEUTRAL or SC_GROUND_COMMITTED)) {
	groundswitch = 1
}

abilitygiven = current_ability

//Double jump turns kirb around
if (state_timer == 5 and (state == PS_DOUBLE_JUMP) and (prev_djumps != djumps)) {
    if (right_down and -spr_dir) {
        spr_dir = 1;
        prev_djump = djumps;
        
    } else if (left_down and spr_dir) {
        spr_dir = -1;
        prev_djumps = djumps;
    }
}