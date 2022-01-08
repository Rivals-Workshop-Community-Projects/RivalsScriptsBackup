if (orig_knock > 21) {
    sound_play(sfx_mimiga);
}
else if (orig_knock > 14) {
    sound_play(sfx_damage);
}
else if (orig_knock > 7) {
    sound_play(sfx_enemyhurt);
}
else {
    sound_play(sfx_hurt);
}
