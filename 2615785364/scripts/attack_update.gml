//B - Reversals

switch(attack) {
case AT_UTILT:
can_fast_fall = false
move_cooldown[AT_UTILT] = 12
break;
case AT_UAIR:
if window == 3 {
	can_wall_jump = true
}
break;
case AT_JAB:
move_cooldown[AT_JAB] = 75;
break;


break;

}

if (sonicSpinSpeed >= 12){
	sonicSpinSpeed = 12;
}

if (attack == AT_UTILT && window == 1 && !(up_down or up_strong_down) || attack == AT_UTILT && window == 2 && !(up_down or up_strong_down)){
	hsp = 4*spr_dir;
	state = PS_WALK;
}

if (attack == AT_UTILT && window == 3 && !(up_down or up_strong_down) || attack == AT_UTILT && window == 4 && !(up_down or up_strong_down) || attack == AT_UTILT && window == 5 && !(up_down or up_strong_down) || attack == AT_UTILT && window == 6 && !(up_down or up_strong_down)){
	hsp = 8*spr_dir;
	state = PS_DASH;
}

if (attack == AT_UTILT && window == 7 && !(up_down or up_strong_down)){
	window = 8;
	window_timer = 0;
}

if (attack == AT_DTILT && window == 3 && !(down_down or down_strong_down) || attack == AT_DAIR && window == 2 && !free){
	attack = AT_EXTRA_1;
	window = 1;
	window_timer = 0;
}

if (attack == AT_DTILT && window == 1 && window_timer == 1){
	clear_button_buffer( PC_ATTACK_PRESSED );
	clear_button_buffer( PC_SPECIAL_PRESSED );
}

if (attack == AT_DTILT && (window == 3 && attack_pressed or window == 3 && special_pressed or window == 3 && strong_pressed or window == 3 && window_timer == 10 && down_strong_down)){
	window = 2;
	window_timer = 0;
	clear_button_buffer( PC_ATTACK_PRESSED );
	clear_button_buffer( PC_SPECIAL_PRESSED );
}

if (attack == AT_DTILT && window == 2 && window_timer == 1){
	sonicSpinSpeed = sonicSpinSpeed+2;
}

if (attack == AT_DAIR && window == 1 && window_timer == 1){
	clear_button_buffer( PC_JUMP_PRESSED );
}

if (attack == AT_DAIR && window == 2 && window_timer == 2){
	sonicSpinSpeed = sonicSpinSpeed+1.5;
}

if (attack == AT_EXTRA_1 && jump_pressed){
	//state = PS_FIRST_JUMP;
	clear_button_buffer( PC_JUMP_PRESSED );
	sound_play( sound_get( "sonicjump" ) );
	vsp = -10;
}

if (attack == AT_UTILT && jump_pressed || attack == AT_EXTRA_1 && window >= 2 && jump_pressed){
	state = PS_FIRST_JUMP;
	vsp = -7;
	clear_button_buffer( PC_JUMP_PRESSED );
	sound_play( sound_get( "sonicjump" ) );
}

if (attack == AT_EXTRA_1 && window == 1){
	hsp = (3+(sonicSpinSpeed))*spr_dir;
}

if(attack == AT_EXTRA_1) {
	if(window == 1 && window_timer == 0 || window == 1 && window_timer == 4 || window == 2 && window_timer == 0 || window == 2 && window_timer == 4 || window == 3 && window_timer == 0 || window == 3 && window_timer == 4 || window == 4 && window_timer == 0 || window == 4 && window_timer == 4){
		create_hitbox( AT_EXTRA_1, 1, x, y);
	}
}

if (attack == AT_DAIR){
	can_wall_jump = true;
}

if (attack == AT_DAIR && djumps == 0){
	can_jump = true;
}

if (attack == AT_FAIR){
	if (window == 2 && window_timer == 1 || window == 2 && window_timer == 4 || window == 3 && window_timer == 0){
	create_hitbox( AT_FAIR, 2, x, y);
	}
}

switch(attack){
	case AT_JAB:
		trigger_wavebounce();
		trigger_b_reverse();
		break;
	case AT_UAIR:
		trigger_b_reverse(); //put this on any attacks you would like to b reverse
		//remove the above it you dont want it, most recovery moves have this though!
		//up air code goes here
		break;
}

//This code lets you add a smash 4 styled wavebouce to your attacks
//Just write "trigger_wavebounce();" under the case statement for the attack you want to wavebounce
#define trigger_wavebounce() 
{
	if ((left_down and state_timer <= 5 and spr_dir == 1) or (right_down and state_timer <= 5 and spr_dir == -1) and (b_reversed == false)) {
    	hsp *= -1;
    	spr_dir *= -1;
    	b_reversed = true;
	} else if (state_timer == 6) {
    	b_reversed = false;
	}
}