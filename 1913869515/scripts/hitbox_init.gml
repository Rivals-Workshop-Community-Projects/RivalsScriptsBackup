

if attack = AT_TAUNT && hbox_num == 11 {
    player_id.tb = self
}

if attack = AT_FSPECIAL && hbox_num == 1 {
    player_id.az = self
}

cangle = 0
SC2 = hit_fx_create( sprite_get( "SC" ), 6 );
shit6 = hit_fx_create( sprite_get( "shit6" ), 30 );