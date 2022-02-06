if swift_mode = true{
	swift_timer = 699;
}

if training{
	move_cooldown[AT_TAUNT] = 0;
}

if(get_player_damage( player ) <= 75 && radio == 1){
	sound_play( sound_get( "pain1" ) );
}
else if(get_player_damage( player ) >= 76 && radio == 1){
	sound_play( sound_get( "pain7" ) );
}