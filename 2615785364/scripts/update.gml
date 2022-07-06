user_event(9);

if (state == PS_WALK && hsp >= 7 && right_down) {
	state = PS_DASH;
}

if (state == PS_WALK && hsp <= -7 && left_down) {
	state = PS_DASH;
}

if (attack == AT_DTILT && window == 1 || attack == AT_DAIR && window == 1){
	sonicSpinSpeed = 0;
}

if (attack == AT_DTILT){
	can_move = false;
}

if (attack == AT_EXTRA_1){
	can_move = false;
	clear_button_buffer( PC_ATTACK_PRESSED );
	clear_button_buffer( PC_SPECIAL_PRESSED );
}

if (attack == AT_EXTRA_1 && hsp == 0){
	window = 4;
	window_timer = 7;
}

if (sonicSpinSpeed == 2){
	set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 1);
	set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 90);
	set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 3);
	set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, .25);
	set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_LOCKOUT, 4);
}

if (sonicSpinSpeed == 6){
	set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 2);
	set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 80);
	set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, .45);
	set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_LOCKOUT, 4);
}

if (sonicSpinSpeed == 8){
	set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 2);
	set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 75);
	set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, .55);
	set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_LOCKOUT, 3);
}

if (sonicSpinSpeed == 10){
	set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 3);
	set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 70);
	set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, .65);
	set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_LOCKOUT, 3);
}

if (sonicSpinSpeed == 12){
	set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 5);
	set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 60);
	set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, .75);
	set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_LOCKOUT, 1);
}