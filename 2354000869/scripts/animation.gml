if state == PS_ATTACK_AIR and state_timer = 0 {
	if attack = AT_JAB hurtboxID.sprite_index = sprite_get("jab_hurt")
	if attack = AT_FTILT hurtboxID.sprite_index = sprite_get("ftilt_hurt")
	if attack = AT_UTILT hurtboxID.sprite_index = sprite_get("utilt_hurt")
	if attack = AT_DTILT hurtboxID.sprite_index = sprite_get("dtilt_hurt")
	if attack = AT_FSTRONG hurtboxID.sprite_index = sprite_get("fstrong_hurt")
	if attack = AT_USTRONG hurtboxID.sprite_index = sprite_get("ustrong_hurt")
	if attack = AT_DSTRONG hurtboxID.sprite_index = sprite_get("dstrong_hurt")
	if attack = AT_FSPECIAL hurtboxID.sprite_index = sprite_get("fspecial_ground_hurt")
	if attack = AT_USPECIAL hurtboxID.sprite_index = sprite_get("uspecial_hurt")
	if attack = AT_DSPECIAL hurtboxID.sprite_index = sprite_get("dspecial_ground_air_hurt")
	if attack = AT_NSPECIAL hurtboxID.sprite_index = sprite_get("nspecial_ground_hurt")
}

if state = PS_ATTACK_AIR and attack = AT_DSPECIAL and free {
hurtboxID.sprite_index = sprite_get("dspecial_ground_air_hurt")
}