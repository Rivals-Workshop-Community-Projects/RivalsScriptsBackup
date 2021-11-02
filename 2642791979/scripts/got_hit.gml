///  enemy_hitboxID.

randomhurt += 1

invincible = true
invince_time = 5
move_cooldown[AT_TAUNT] = 999

if enemy_hitboxID.damage < 4 {
    sound_stop(sound_get("hweak"))
    sound_play(sound_get("hweak"),false,noone, 1)
}

if enemy_hitboxID.damage >= 4 && enemy_hitboxID.damage < 8  {
    sound_stop(sound_get("hmed"))
    sound_play(sound_get("hmed"),false,noone, 1)

}

if enemy_hitboxID.damage >= 8 {
    sound_stop(sound_get("hstrong"))
    sound_play(sound_get("hstrong"),false,noone, 1)
}

            

if hit_player_obj == self {
    move_cooldown[AT_TAUNT] = 0
}

move_cooldown[AT_EXTRA_2] -= enemy_hitboxID.damage*2
move_cooldown[AT_EXTRA_3] -= enemy_hitboxID.damage*2

