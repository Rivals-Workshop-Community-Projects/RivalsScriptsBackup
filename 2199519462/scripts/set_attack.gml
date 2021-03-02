bake_strong = bake_mode

prox_used = 0;
if attack == AT_DSPECIAL {
clear_button_buffer(PC_SPECIAL_PRESSED);
use_effect = 0;
}
if attack == AT_DSPECIAL && free{
	attack = AT_DSPECIAL_AIR
}
if attack == AT_FSTRONG {
	set_attack_value(attack, AG_CATEGORY, 0)
}
print(attack)
if attack == AT_FSPECIAL_2 {
	hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
	print("what");
}

/*
if attack == AT_FSTRONG && (is_turning or ((spr_dir > 0 && left_strong_down) or (spr_dir < 0 && right_strong_down))) {
	attack = AT_FSTRONG_2
	sound_play(asset_get("mfx_star"))
}
*/
/*
if attack == AT_NSPECIAL {
	if self_effect > 0 {
		attack = AT_NSPECIAL_2
	}
}
*/

if attack == AT_USPECIAL {
set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
}

strong_charging_noise = 0;
//print_debug("Playin' the noise")
//sound_play(asset_get("mfx_player_ready"), 0, noone, 0.5, 0.1)
/*
if attack == AT_DSPECIAL && instance_exists(prox_ins) {
	attack = AT_DSPECIAL_2
}