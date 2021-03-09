//set_attack

if (attack==AT_DSPECIAL){
	reset_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS);
	dsp_free = free;
	if (free&&!dsp_done){
		window=2;
		window_timer=0;
		dsp_done = true;
	}
}
if (attack==AT_FSPECIAL){
	attack = AT_NSPECIAL
}
if (attack==AT_NSPECIAL){
	nsp_level = 0;
	reset_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING);
}
if (attack==AT_USPECIAL){
	reset_attack_value(AT_USPECIAL, AG_NUM_WINDOWS);
	usp_d_able = false;
	usp_d_done = false;
}