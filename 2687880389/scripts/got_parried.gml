enum BOOMERANG_STATE {
	BOOMERANG_OUT_CONSTANT,
	BOOMERANG_OUT_SLOWING,
	BOOMERANG_RETURN_RAMPING,
	BOOMERANG_RETURN_CONSTANT,
	BOOMERANG_FREEDOM
}

// Release anyone we may have grabbed
with (asset_get("oPlayer")) {
    if (RETROBLAST_HOLDER_ID == other.id) {
        RETROBLAST_HOLDER_ID = noone;
    }
    if (RETROBLAST_TARGETTING_ME == other.id) {
        RETROBLAST_TARGETTING_ME = noone;
        RETROBLAST_TARGET_STACKS = 0;
    }
}

// If it's the boomerang, return in the opposite direction
// Check for applicable hitboxes
// Set state to "Freedom"
if ((my_hitboxID.attack == AT_NSPECIAL_2) && (my_hitboxID.hbox_num == 1)) {
    //sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));
    my_hitboxID.hsp *= -1;
    my_hitboxID.orig_hsp *= -1;
    my_hitboxID.current_boomerang_state = BOOMERANG_STATE.BOOMERANG_FREEDOM;
}