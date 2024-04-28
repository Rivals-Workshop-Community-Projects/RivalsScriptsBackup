var dspecial_charge_sound = sound_get("dspecial_charge");
sound_stop(dspecial_charge_sound);

has_hit_id = noone;

if (state == PS_AIR_DODGE && state_timer < 5){
	state = PS_ATTACK_AIR;
	attack = AT_EXTRA_1;
	window = 1;
	window_timer = 0;
}