sound_play(sound_get("RI"))
sound_play(sound_get("hith2"))


if !timebreak {
shock += 5
shocktimer = 300
inactive = 150
}

if my_hitboxID.attack == AT_NSPECIAL {
    state_timer = 7
}