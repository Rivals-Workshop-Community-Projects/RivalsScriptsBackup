if hurt_img != 1 && flowey_last_grunt < 0{
    sound_play(sound_get("hurt"), 0, 0, 0.5);
    flowey_last_grunt = 180;
}