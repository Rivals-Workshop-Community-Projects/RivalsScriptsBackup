//ouchie
if (orig_knock > 5) {
    //sound_play(sound_get("hurt"))
}

if (attack == AT_COPY_ESP){
	esp_parried = true;
	move_cooldown[AT_COPY_ESP] = 60;
}

sound_stop(sound_get("sfx_charge"));

sound_stop(sound_get("inhale"));

move_cooldown[AT_USPECIAL] = 0;
move_cooldown[AT_COPY_FIRE] = 0;
move_cooldown[AT_COPY_DRILL] = 0;

zoom = 2;