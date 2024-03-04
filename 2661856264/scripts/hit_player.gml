//hit_player.gml
if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 5) {
    sound_play(sound_get("hit_finish"));
}
if (my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num == 3) {
    sound_play(sound_get("hit_finish"));
}
if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 5) {
    sound_play(sound_get("super"));
}
if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 3) {
    sound_play(sound_get("geodude"));
}