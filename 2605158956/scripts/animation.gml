if (state == PS_WALK || state == PS_DASH) {
    if (state_timer == 0) {
        step_sound = false;
    }
    if (floor(image_index) % image_number == 1 && !step_sound) {
        step_sound = !step_sound;
        sound_play(sound_get("TB_step1"));
    }
    if (floor(image_index) % image_number == 3 && step_sound) {
        step_sound = !step_sound;
        sound_play(sound_get("TB_step2"));
    }
}