css_intro_timer = 0;
css_intro_state = 0;

//kill victory screen audio
for(var i = 1; i < 12; i++){
  sound_stop(sound_get("vic_d"+string(i)));
}

//i should have named these ones with numbers too ngl
sound_stop(sound_get("vic_hjam_char"));
sound_stop(sound_get("vic_mal"));
sound_stop(sound_get("vic_pasta"));
sound_stop(sound_get("vic_celeste"));
sound_stop(sound_get("vic_another_twenny"));
sound_stop(sound_get("vic_cute_char"));
sound_stop(sound_get("vic_--"));
sound_stop(sound_get("vic_despy"));
sound_stop(sound_get("vic_deracine"));
sound_stop(sound_get("vic_spooky"));
sound_stop(sound_get("vic_lexi"));
sound_stop(sound_get("vic_patty"));
sound_stop(sound_get("vic_allstars"));
sound_stop(sound_get("vic_luminance"));
sound_stop(sound_get("vic_robots"));
sound_stop(sound_get("vic_tamat"));
sound_stop(sound_get("vic_truck"));