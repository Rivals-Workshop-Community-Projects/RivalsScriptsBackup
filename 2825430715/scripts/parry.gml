sound_play(sound_get("parried"))

if get_player_color(player) == 16{
     sound_play(sound_get("drip")) 
}

window_timer = floor(window_timer)
noparryedit = 15