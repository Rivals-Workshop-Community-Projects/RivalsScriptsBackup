if (boosted){
    boosted = false;
}

if (attack == AT_DATTACK){
    sound_stop(sound_get("annoy"));
}

move_cooldown[AT_FSPECIAL] = 0;
move_cooldown[AT_NSPECIAL] = 0;