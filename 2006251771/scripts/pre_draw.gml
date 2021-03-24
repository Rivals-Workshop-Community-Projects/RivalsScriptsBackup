if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
	if (attack == AT_DSPECIAL) {
		// Hurtboxes
		if (free) {
			if (balanced_falco) {
				hurtboxID.sprite_index = sprite_get("dspecial_balanced_air_hurt");
			} else {
				hurtboxID.sprite_index = sprite_get("dspecial_air_hurt");
			}
		} else {
			if (balanced_falco) {
				hurtboxID.sprite_index = sprite_get("dspecial_balanced_hurt");
			} else {
				hurtboxID.sprite_index = sprite_get("dspecial_hurt");
			}
		}
	}
}