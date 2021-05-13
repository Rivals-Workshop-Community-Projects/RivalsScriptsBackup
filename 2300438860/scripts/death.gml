///
  esave = 0
dmgmul = 0
attackbar = 0
heartbroke = 0
move_cooldown [AT_NSPECIAL] = 2

 sound_play(sound_get("fstrong1"),false,noone,1)
if get_player_stocks(player) != 1 { 
 create_hitbox(AT_EXTRA_3, 2, x, y)
}