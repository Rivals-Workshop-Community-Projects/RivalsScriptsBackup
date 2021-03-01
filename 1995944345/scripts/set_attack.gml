

if attack == AT_NSPECIAL && selfstab && !selfstab_target {
attack = AT_NSPECIAL_2
}
if attack == AT_NSPECIAL && selfstab_target && selfstab{
	move_cooldown[attack] = 1;
}

if attack == AT_DSPECIAL && instance_exists(mushins) {
	attack = AT_DSPECIAL_2;
	
	set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, floor(mushins.damage/2));
}

if attack == AT_DTILT {
normal_charge = 1
}
if attack == AT_FSPECIAL_2 {
sound_play(asset_get("mfx_player_ready"))
hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE)
}

if attack == AT_DAIR && (attack_down or down_stick_down) {
attack = AT_DTHROW;
}