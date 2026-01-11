if state == PS_RESPAWN && respawn_anim < 149{
	up_hard_pressed = 0;
	left_hard_pressed = 0;
	right_hard_pressed = 0;
	down_hard_pressed = 0;
	up_pressed = 0;
	left_pressed = 0;
	right_pressed = 0;
	down_pressed = 0;
	up_hard_down = 0;
	left_hard_down = 0;
	right_hard_down = 0;
	down_hard_down = 0;
	up_down = 0;
	left_down = 0;
	right_down = 0;
	down_down = 0;
	jump_pressed = 0;
	shield_pressed = 0;
	attack_pressed = 0;
	special_pressed = 0;
	up_strong_pressed = 0;
	down_strong_pressed = 0;
	right_strong_pressed = 0;
	left_strong_pressed = 0;
	jump_down = 0;
	shield_down = 0;
	attack_down = 0;
	special_down = 0;
	up_strong_down = 0;
	down_strong_down = 0;
	right_strong_down = 0;
	left_strong_down = 0;
	strong_down = 0;
}

if free && !taichi_cooldown &&joy_pad_idle && (state_cat == SC_AIR_NEUTRAL || state == PS_WALL_JUMP || (state == PS_RESPAWN && visible) || state == PS_WALL_TECH) && shield_pressed{
	set_attack(AT_EXTRA_2);
	parry_hit = 0;
	shield_pressed = 0;
	parry_hit = 0;
	invincible = 0;
	invince_time = 0;
	array_copy(can_be_hit, 0, array_create(array_length(can_be_hit)), 0, array_length(can_be_hit));
}