move_cooldown[AT_USPECIAL] = 0;

wft_nspcharge = 0;
wft_dscharge = 0;
sound_stop(sound_get("wft_nspecial"));
sound_stop(sound_get("wft_dspecial"));

if (voice_toggle == 1){
	sound_play(sound_get("wft_ko"));
}