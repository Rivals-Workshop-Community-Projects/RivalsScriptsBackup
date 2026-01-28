if "can_air_parry" not in self exit;
if (prev_state = PS_RESPAWN || state == PS_RESPAWN) && respawn_anim < 149{
	do_a_fast_fall = 0;
	clear_button_buffer(PC_TAUNT_PRESSED);
}

if can_air_parry && free && !taichi_cooldown && joy_pad_idle && (state_cat == SC_AIR_NEUTRAL || state == PS_WALL_JUMP || (state == PS_RESPAWN && visible) || state == PS_WALL_TECH) && shield_pressed{
	set_attack(AT_EXTRA_2);
	parry_hit = 0;
	shield_pressed = 0;
	parry_hit = 0;
	invincible = 0;
	invince_time = 0;
	can_air_parry = 0;
	array_copy(can_be_hit, 0, array_create(array_length(can_be_hit)), 0, array_length(can_be_hit));
}