///


if batt < 4 {
   batt += 1
    sound_play(sound_get("shockready"),false,noone,0.8);
 spawn_hit_fx(x,y,sw)
 shake_camera(6,4)
 battfade = 90
}