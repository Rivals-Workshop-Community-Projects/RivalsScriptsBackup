if (get_training_cpu_action() == CPU_FIGHT) {
    var target_dist_x = abs(ai_target.x - x);
    var target_dist_y = abs(ai_target.y - y);
    
    
	//Do not attempt to throw Tanuki whent here are already 2 out.
    var num_fellas = 0;
    with (obj_article2) {
    	if (player == other.player && player_id == other.id) {
    		num_fellas++;
    	}
    }
    
    if (num_fellas >= follower_max) {
        move_cooldown[AT_FSPECIAL] += 2;
    }
    
     //Marked handler
    if (ready_to_attack && state_cat != SC_HITSTUN && state_cat != SC_GROUND_COMMITTED && state_cat != SC_AIR_COMMITTED) {
        var mamizou_marked = noone
		with (oPlayer) {
		    if (("mamizou_mark_id" in self) && mamizou_mark_id == other.id) {
	        	mamizou_marked = id;
	        }
	    }
	    with (obj_article2) {
	        if (("mamizou_mark_id" in self) && mamizou_mark_id == other.id) {	
	        	mamizou_marked = id;
	        }
	    }
	    
	    if (instance_exists(mamizou_marked)) {
            var followup_chance = get_gameplay_time() % (11 - temp_level);
            
            if (followup_chance == 0) {
                if (mamizou_marked.hitstun > 0) {
                    var mamizou_mark_choice = random_func(0, 100, true);
                    if (mamizou_mark_choice <= 50) {
                        set_attack(AT_NSPECIAL)
                    }
                    else {
                        set_attack(AT_USPECIAL)
                    }
                }
            }
	    }
    }
}