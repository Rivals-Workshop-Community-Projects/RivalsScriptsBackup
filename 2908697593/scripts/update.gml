// update is a script that runs whatever code is in here every in-game frame.
user_event(14);

// Isaac intro voice lines


if (introTimer2 == 1) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}

if (introTimer < 31) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}

if (introTimer2 == 0 && introTimer == 2) {
        sound_play(sound_get(introSound[random_func(1, 3, false)]));
}