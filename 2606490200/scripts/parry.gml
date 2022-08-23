///

sound_play(sound_get("parried"));
shake_camera(4, 12)

if btrain < 100 {
spawn_hit_fx(x,y - 120,bup)
    btrain += 25
}

if get_player_color(player) == 11 {
sound_play(sound_get("drip"))
}

window_timer = floor(window_timer)
noparryedit = 15