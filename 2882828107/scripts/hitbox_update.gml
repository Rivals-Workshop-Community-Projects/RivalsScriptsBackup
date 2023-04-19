if (attack == AT_NSPECIAL) && (position_meeting(x, y, asset_get("oPlayer"))){
	with (asset_get("oPlayer")){
		set_state( PS_PRATFALL );
	}
}