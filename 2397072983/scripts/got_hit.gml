///

if has_rune("A") take_damage(player,-1, floor(enemy_hitboxID.damage * -0.1))
if has_rune("B") take_damage(player,-1, floor(enemy_hitboxID.damage * -0.1))
if has_rune("C") take_damage(player,-1, floor(enemy_hitboxID.damage * -0.1))
if has_rune("D") take_damage(player,-1, floor(enemy_hitboxID.damage * -0.1))
if has_rune("E") take_damage(player,-1, floor(enemy_hitboxID.damage * -0.1))
if has_rune("F") take_damage(player,-1, floor(enemy_hitboxID.damage * -0.1))

if enemy_hitboxID.damage >= 1 {
sound_play(sound_get("gothit2"),false,noone,0.5 + enemy_hitboxID.damage/10);

if enemy_hitboxID.damage >= 7 {
sound_play(sound_get("gothit"),false,noone,0.5 + enemy_hitboxID.damage/10);
}
}

if para {
move_cooldown[AT_FSPECIAL_2] = 120
}


