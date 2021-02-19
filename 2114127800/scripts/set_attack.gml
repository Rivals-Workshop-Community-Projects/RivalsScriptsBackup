if (attack == AT_TAUNT && (down_down || up_down)){
	attack = AT_TAUNT_2;
}

if (attack == AT_NSPECIAL && free){
    attack = AT_NSPECIAL_AIR;
}

if (attack == AT_NSPECIAL_AIR && state == PS_ATTACK_AIR){
    hurtboxID.sprite_index = sprite_get("nspecial_air_hurt");
}

if (attack == AT_FSPECIAL_AIR && state == PS_ATTACK_AIR){
    hurtboxID.sprite_index = sprite_get("fspecial_air_hurt");
}

if attack == AT_NSPECIAL {
	weak_charge = 1;
	normal_charge = 1;
	strong_charge = 1;
	clear_button_buffer(PC_SPECIAL_PRESSED);
}

if (attack == AT_FSPECIAL){
	if(free){
		attack = AT_FSPECIAL_AIR;
	}
	reset_window_value(attack, 1, AG_WINDOW_HSPEED_TYPE);
	clear_button_buffer(PC_SPECIAL_PRESSED);
	clear_button_buffer(PC_JUMP_PRESSED);
}

user_event(13);