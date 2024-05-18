move_cooldown[AT_USPECIAL] = 0;

sound_stop(sound_get("wft_nspecial"));
sound_stop(sound_get("wft_dspecial"));

if ((state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && attack == AT_NSPECIAL && got_hit){
	wft_nspcharge = 0;
}