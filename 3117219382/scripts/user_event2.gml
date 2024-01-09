// gold sigil update
if(gs[GS_EXISTS]){
	gs[GS_TIMER] += 1
	gs[GS_STATE_TIMER] += 1;
	
	if(gs[GS_TIMER] == gs_state_th[gs[GS_STATE]]){
		gs[GS_STATE] += 1;
		gs[GS_STATE_TIMER] = 0;
	}
	if(gs[GS_TIMER] == gs_state_th[1]){
		create_hitbox(AT_USPECIAL, 6, gs[GS_X], gs[GS_Y]);
		sound_play(asset_get("sfx_ice_shieldup"));
	}
	if(gs[GS_TIMER] >= gs_state_th[3]){
		gs[GS_STATE] = 0;
		gs[GS_STATE_TIMER] = 0;
		gs[GS_EXISTS] = false;
	}
}