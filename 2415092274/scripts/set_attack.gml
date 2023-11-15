//set_attack

dsp_modeii_buffer = false;
utilt_hit = false;
ftilt_hit = false;
nsp_hit = false;

set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 6);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 8);

if (attack==AT_DSPECIAL){
	clear_button_buffer( PC_SPECIAL_PRESSED )
	reset_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS);
	dsp_free = free;
	dsp_override = false;
	if ((free&&!dsp_done)||dsp_override){
		window=2;
		window_timer=0;
		dsp_done = true;
	}
}
if (attack==AT_FSPECIAL){
	fsp_jc_confirm = false;
	if (fsp_buffer == 0){
		fsp_level = 0;
	}else{
		fsp_level++;
	}
	reset_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING);
}
if (attack==AT_TAUNT){
	if (attack_down){
		attack = AT_TAUNT_4
	}
	if (up_down){
		attack = AT_TAUNT_3
	}
}
if (attack==AT_USPECIAL){
	reset_attack_value(AT_USPECIAL, AG_NUM_WINDOWS);
	usp_d_able = false;
	usp_d_done = false;
}
if (attack==35 && mode=="B" && down_down){
	attack = 36
}