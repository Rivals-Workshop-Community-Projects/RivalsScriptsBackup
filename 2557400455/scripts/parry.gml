//parry.gml

//sound_play(sound_get("bathit"));
shake_camera(4, 12)

sound_play(sound_get("vineboom"))

if gun == 0 {
redP += 100
} else {
  sound_play(sound_get("gunload"))  
}

if gun = 1 {
    bulletnum = 6
}

if gun = 2 {
    bulletnum = 12
}

if gun = 3 {
    bulletnum = 3
}