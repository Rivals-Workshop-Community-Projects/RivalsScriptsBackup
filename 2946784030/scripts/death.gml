//Insert Death Sound Here Later

if wario_voiced == true && get_player_stocks(player) > 1{
    if death_voice = 0{sound_play(sound_get("VFX_Death_1"));}
    if death_voice = 1{sound_play(sound_get("VFX_Death_2"));}
    if death_voice = 2{sound_play(sound_get("VFX_Death_3"));}
    if death_voice = 3{sound_play(sound_get("VFX_Death_4"));}
}

if wario_voiced == true && get_player_stocks(player) == 1{
    if death_voice = 0{sound_play(sound_get("VFX_DeathFinal_1"));}
    if death_voice = 1{sound_play(sound_get("VFX_DeathFinal_2"));}
    if death_voice = 2{sound_play(sound_get("VFX_DeathFinal_3"));}
    if death_voice = 3{sound_play(sound_get("VFX_DeathFinal_4"));}
}