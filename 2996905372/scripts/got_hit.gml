// got_hit.gml

if (state == PS_HITSTUN || state == PS_HITSTUN_LAND){
	if (sprite_index == sprite_get("nspecial") || sprite_index == sprite_get("nspecial_air")){
		//print("true...");
		sound_stop(asset_get("sfx_abyss_capturing"));
		sound_stop(asset_get("sfx_abyss_hex_curse"));
	}
	fspecTeleToOpponent = false;
}

if (strongsArmorCounterRune){
	if (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG){
		if (super_armor && window < 3){//>
			strongArmorRuneHasBeenHit = true;
		}
	}
}