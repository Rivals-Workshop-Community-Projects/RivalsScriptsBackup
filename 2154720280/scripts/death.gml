///


if batt < 4 {
   batt += 1
    sound_play(sound_get("shockready"));
 spawn_hit_fx(x,y,sw)
 shake_camera(6,4)
 battfade = 90
}