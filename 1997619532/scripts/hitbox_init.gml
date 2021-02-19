if AT_FSPECIAL && hbox_num == 8 {
    player_id.fp = self
}

if attack = AT_NSPECIAL && hbox_num == 5 {
    player_id.fp2 = self
}

if attack = AT_FSTRONG && hbox_num == 8 {
    player_id.fp3 = self
}


if attack = AT_TAUNT && hbox_num == 11 {
    player_id.tb = self
}

if attack = AT_FSPECIAL && hbox_num == 1 {
    player_id.az = self
}