sound_play(sound_get("RI"))

if get_player_color(player) == 14{
     sound_play(sound_get("drip")) 
}
if !isyellow {
  inkshield = 300
  inkshield_buildup = 0
  sound_play(sound_get("RI"))	
  spawn_hit_fx (x, y - 32, 304)   
}