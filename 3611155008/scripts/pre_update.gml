user_event(0);

if (prev_state == PS_RESPAWN || state == PS_RESPAWN) && visible && get_match_setting(SET_PRACTICE){
	state = PS_IDLE_AIR;
	sound_stop(sound_get("CharSFX_Lotus_Revive"));
}