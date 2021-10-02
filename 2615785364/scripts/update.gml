has_airdodge = false;
can_shield = false;
can_tech = false;
can_wall_tech = false;
clear_button_buffer(PC_SHIELD_PRESSED);
parry_cooldown = 5;
if(state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD)
{
    set_state(PS_IDLE);
    sound_stop(asset_get("sfx_roll"));
}

old_spr_dir = spr_dir;

if (state == PS_WALK && hsp >= 7 && right_down) {
	state = PS_DASH;
}

if (state == PS_WALK && hsp <= -7 && left_down) {
	state = PS_DASH;
}

if (attack == AT_DTILT && window == 1 || attack == AT_DAIR && window == 1){
	sonicSpinSpeed = 0;
}

if (jump_pressed && can_jump == true){
	sonicSpinSpeed = 0;
}

if (attack == AT_EXTRA_1 && window == 1){
	can_jump = false;
}

if (attack == AT_DTILT){
	can_move = false;
}

if (attack == AT_EXTRA_1){
	can_move = false;
	clear_button_buffer( PC_ATTACK_PRESSED );
	clear_button_buffer( PC_SPECIAL_PRESSED );
}