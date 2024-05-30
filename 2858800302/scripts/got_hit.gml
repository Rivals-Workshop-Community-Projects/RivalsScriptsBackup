if (boosted){
    boosted = false;
}

if (attack == AT_DATTACK){
    sound_stop(sound_get("annoy"));
}

move_cooldown[AT_FSPECIAL] = 0;
move_cooldown[AT_NSPECIAL] = 0;

//remove fspecial charge if hit out of the move
if ((prev_state == PS_ATTACK_AIR || prev_state == PS_ATTACK_GROUND) && (state == PS_HITSTUN || state == PS_HITSTUN_LAND) && attack == AT_FSPECIAL) {
	fspecial_charge = 0;
}