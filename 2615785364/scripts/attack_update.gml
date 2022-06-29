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

if (attack == AT_UTILT && window == 1 && !up_down || attack == AT_UTILT && window == 2 && !up_down){
	hsp = 4*spr_dir;
	state = PS_WALK;
}

if (attack == AT_UTILT && window == 3 && !up_down || attack == AT_UTILT && window == 4 && !up_down || attack == AT_UTILT && window == 5 && !up_down || attack == AT_UTILT && window == 6 && !up_down){
	hsp = 8*spr_dir;
	state = PS_DASH;
}

if (attack == AT_UTILT && window == 7 && !up_down){
	window = 8;
	window_timer = 0;
}

if (attack == AT_DTILT && window == 3 && !down_down || attack == AT_DAIR && window == 2 && !free){
	attack = AT_EXTRA_1;
	window = 1;
	window_timer = 0;
}

if (attack == AT_DTILT && window == 1 && window_timer == 1){
	clear_button_buffer( PC_ATTACK_PRESSED );
	clear_button_buffer( PC_SPECIAL_PRESSED );
}

if (attack == AT_DTILT && window == 3 && attack_pressed || attack == AT_DTILT && window == 3 && special_pressed){
	window = 2;
	window_timer = 0;
	clear_button_buffer( PC_ATTACK_PRESSED );
	clear_button_buffer( PC_SPECIAL_PRESSED );
}

if (attack == AT_DTILT && window == 2 && window_timer == 1){
	sonicSpinSpeed = sonicSpinSpeed+2;
}

if (attack == AT_DAIR && window == 2 && window_timer == 2){
	sonicSpinSpeed = sonicSpinSpeed+1.5;
}

if (attack == AT_DTILT && jump_pressed || attack == AT_UTILT && jump_pressed || attack == AT_EXTRA_1 && window >= 2 && jump_pressed){
	state = PS_FIRST_JUMP;
}

if (attack == AT_EXTRA_1 && window == 1){
	hsp = (3+(sonicSpinSpeed))*spr_dir;
}

if (attack == AT_EXTRA_1 && window == 3 && hsp == 0){
	state = PS_IDLE;
	state_timer = 0;
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