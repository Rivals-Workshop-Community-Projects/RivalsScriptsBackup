//hitbox_init
if (attack == AT_FSPECIAL){
has_landed = 0
}

if (attack == AT_FSPECIAL_AIR){
sound_play(sound_get ("pianoman3"), false)
}

soundplaying = 0

if (attack == AT_NSPECIAL_2 && player_id.moonout == 0){
player_id.moonout = 1
}


