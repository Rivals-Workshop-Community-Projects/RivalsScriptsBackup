if (state == PS_HITSTUN || state == PS_HITSTUN_LAND) {
	eust_drawCacophony = false;
	eust_drawLocust = false;
	eust_cacoTimer = 0;
	eust_locoTimer = 0;
	sound_stop(sound_get("oogaboogabooga"));
	sound_stop(sound_get("oogaboogamuta"));
	sound_stop(sound_get("oogarummaging"));
	sound_stop(sound_get("LaughTaunt"));
	eust_gettingChair = false;	//for failsafe mechanic
	if(eust_windowLastLast = 1){sound_stop(sound_get("doorSlam"));}
	eust_chaosTimer = 0;
	eust_chaosPresent = false;
	eust_runeKSpins = false;
	eust_bobStop = true;
}

if (eust_gChairInvuln) {
	spr_dir = eust_chairFace;
	with (oPlayer) {
		orig_knock *= 0.5;
		should_make_shockwave = false;
		other.dumb_di_mult = 0;
		can_tech = 2;
		if(orig_knock > other.eust_chairKBLim){orig_knock = other.eust_chairKBLim;}	
	}
}

//Fail-safe chair health reset if not successfully resummoned if hit during recall window

if(!instance_exists(obj_article1) && !eust_gChairInvuln){	//if you get hit, the chair is not present on the battlefield, and you are not in the invulnerable state, it should reset some core chair values
	eust_chairHBar = 0;
	eust_chairWarp = false;
}