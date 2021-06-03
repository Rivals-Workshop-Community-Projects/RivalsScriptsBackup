if fakedie = true {
   set_player_stocks(player, get_player_stocks(player) + 1)
}

platform_number = random_func(0, 17, true);

	usedfspecial = false;

    reverse = false;

    sound_stop( sound_get( "hacking" ));    
    sound_stop( sound_get( "monkemode" ));    

	for (var i = 0; i < AT_NSPECIAL; i++){
    if get_num_hitboxes(i){
        for (var j = 1; j <= get_num_hitboxes(i); j++){
	reset_hitbox_value(i, j, HG_ANGLE);}}}
	
	courage_active = false;