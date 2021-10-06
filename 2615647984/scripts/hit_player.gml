if my_hitboxID.attack == AT_NSPECIAL { //Grab and stuff
	if my_hitboxID.hbox_num == 1 {
		window = 3;
		window_timer = 0;
		hit_player_obj.grabbed = 1;
		hit_player_obj.should_make_shockwave = false;
		grabbedid = hit_player_obj;
		destroy_hitboxes();
		if get_player_team( hit_player_obj.player ) == get_player_team( player ) {
			take_damage(hit_player_obj.player, -1, -5)
		}
	}
	if my_hitboxID.hbox_num == 3 {
		current_ability = hit_player_obj.abilitygiven;
		if get_player_team( hit_player_obj.player ) == get_player_team( player ) {
			take_damage(hit_player_obj.player, -1, -5)
			hit_player_obj.state = PS_IDLE
		}
		hit_player_obj.current_ability = 0
		hit_player_obj.swallowed = 1
		hit_player_obj.enemykirby = self
	}
	if my_hitboxID.hbox_num == 2 {
		if get_player_team( hit_player_obj.player ) == get_player_team( player ) {
			take_damage(hit_player_obj.player, -1, -5)
			hit_player_obj.state = PS_IDLE
		}
	}
}