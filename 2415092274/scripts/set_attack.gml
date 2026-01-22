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

//if (attack==AT_NSPECIAL){
//	attack = AT_FINAL;
//}
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
	if (down_down){
		attack = AT_TAUNT_3
	}
	if (up_down){
		attack = AT_TAUNT_4
	}
}else{
	dsp_qualified = 0;
}
if (attack==AT_USPECIAL){
	reset_attack_value(AT_USPECIAL, AG_NUM_WINDOWS);
	usp_d_able = false;
	usp_d_done = false;
}
if (attack==35 && mode=="B" && shield_down){
	attack = 36
}
var whatsthis_testytest = 0;
if (whatsthis_testytest == 1){
	if (attack==AT_FTILT){
		attack = AT_FTHROW;
	}
	if (attack==AT_JAB){
		attack = AT_NTHROW; //(bthrow)
	}
	if (attack==AT_UTILT){
		attack = AT_UTHROW;
	}
	if (attack==AT_DTILT){
		attack = AT_DTHROW;
	}
}
if (whatsthis_testytest == 2){
	if (attack==AT_JAB){
		attack = AT_NSPECIAL_2; //workbench
	}
}