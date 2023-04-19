// got_hit is a script that is called when you get hit.

// Isaac will scream if knocked back at high percent

if (orig_knock > 11) {
    sound_play(sound_get(hurtSound[random_func(1, 4, false)]));
}