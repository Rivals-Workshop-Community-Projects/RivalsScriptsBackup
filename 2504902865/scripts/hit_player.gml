if (my_hitboxID.attack == AT_NTHROW or my_hitboxID.attack == AT_FTHROW or my_hitboxID.attack == AT_UTHROW or my_hitboxID.attack == AT_DTHROW){
    with(obj_article1) {
        if player_id == other.id && other.my_hitboxID == thrown_hitbox_id {
            hsp *= -0.3
            vsp = -8;
            if house_level < 3 {
                house_level += 1
            } else {
            	//waga bobo	
            	if minions_spawn_rn < minions_spawn_max {
            		sound_play(asset_get("mfx_player_found"))
	    			var spawn_minion = instance_create(x, y - 10,"obj_article2");
	    			spawn_minion.minion_house = self
	    			minions_spawn_rn += 1
            	}
    			//these WILL towards the cap
            }
        }
    }
}

//uspecial enemy hit
if my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 1 {
    destroy_hitboxes();
    set_attack_value(AT_USPECIAL,AG_NUM_WINDOWS,8)
    window = 7;
    window_timer = -1;
}

//GRABLE
if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1) {
	
	//Before grabbing the opponent, first make sure that:
	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false) {
		
		//transition to the 'throw' part of the attack.
		destroy_hitboxes();
		attack_end();
		window = 4;
		window_timer = 0;
		set_attack_value(AT_FSPECIAL,AG_NUM_WINDOWS,8)
		
		//if this attack hasn't grabbed a player yet, grab the player we just hit.
		if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
		
		//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
		else {
			var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
			var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
			if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
		}
	}
}

//minion targeting
with(obj_article2) {
	if player_id == other.id && get_player_team(player_id.player) != get_player_team(other.hit_player) {
		target_player = other.hit_player_obj;
	}
}