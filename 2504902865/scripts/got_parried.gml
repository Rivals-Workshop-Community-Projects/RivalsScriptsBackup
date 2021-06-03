//minion die
if my_hitboxID.attack != AT_JAB {
	with(obj_article2) {
		if player_id == other.id {
			state = 8;
			state_timer = 0;
		}
	}
	
	//house die/level down
	with(obj_article1) {
		if player_id == other.id {
		    if house_level <= 1 {
			    state = 5;
			    state_timer = 0;
		    }
		    if house_level > 1 {
		        house_level -= 1;
		        minion_spawn_timer_rn = -20; //longer minion spawn cooldown
		    }
		}
	}
}