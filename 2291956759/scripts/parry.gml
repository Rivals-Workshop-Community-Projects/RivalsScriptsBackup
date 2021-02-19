sound_play(sound_get("RI"))


if !isyellow {
  inkshield = 300
  inkshield_buildup = 0
  sound_play(sound_get("RI"))	
  spawn_hit_fx (x, y - 32, 304)   
}