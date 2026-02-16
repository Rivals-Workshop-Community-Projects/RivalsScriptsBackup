var dspecial_charge_sound = sound_get("dspecial_charge");
var ea_dspecial_charge_sound = sound_get("EA_dspecial_charge");
sound_stop(dspecial_charge_sound);
sound_stop(ea_dspecial_charge_sound);

has_hit_id = noone;

if (SuperMecha == true){
hitpause = false;
}

if (state == PS_AIR_DODGE && state_timer < 5){
	state = PS_ATTACK_AIR;
	attack = AT_EXTRA_1;
	window = 1;
	window_timer = 0;
}

if (SuperMecha == true){
if ( attack == AT_DATTACK || attack == AT_JAB || attack == AT_UTILT || attack == AT_FTILT || attack == AT_DTILT
|| attack == AT_UAIR || attack == AT_FAIR || attack == AT_DAIR || attack == AT_BAIR || attack == AT_NAIR){
	window_timer -= 2;
}
if (attack == AT_DTILT){
	window = 1;
	window_timer = 2;
	}
}

if (shield_pressed && (state == PS_HITSTUN || state == PS_TUMBLE) ){
	//attack = AT_EXTRA_1;
	//window = 1;
	//window_timer = 0;
}

move_cooldown[AT_FSPECIAL] = 5;
move_cooldown[AT_USPECIAL] = 5;
move_cooldown[AT_DSPECIAL] = 5;

retaliate_id = hit_player_obj.id;

random_mecha = random_func(0, 5, true);