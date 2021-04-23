//handles players taking damage from attacks
var trigger_oof = false;
with oPlayer {
	if !custom_clone && !clone && !is_dead /*&& !((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && state_timer < 20)*/ {
		if got_hit && !is_intangible {
			intang_timer = 60;
			is_intangible = true;
			take_damage(player, -1, 4);
			hp_current -= 4;
			damageTaken += 4;
			with other {
				sound_play(sound_get("take_damage"), false, 0);
			}
			if heartID != undefined {
				heartID.got_hit = true;
			}
			trigger_oof = true;
			boast_boost = false;
			
			//standard getting hit boost (violence boost)
			if other.act_index != 1 {
				other.ratings_id.rating_level += 15;
				other.ratings_id.display_text = ["Violence", 15];
			}
		}
		
		if intang_timer > 0 {
			intang_timer--;
		}
		
		if intang_timer == 0 && is_intangible {
			is_intangible = false;
			if heartID != undefined {
				heartID.got_hit = false;
			}
		}
	}
	got_hit = false;
}

/*
-----------------------
rating boosters
-----------------------
*/
if phase == 2 && state != 0 {
	if state_timer == 1 {
		has_dissapointed = false;
	}
	switch act_index { //ratings boost depending on how you acted
		case 0: //check
		
		break;
		
		case 1: //boast
		if attack_index != 4 { //essay
			if boast_boost {
				ratings_id.rating_level += 1;
			}
	    	if trigger_oof && !has_dissapointed {
				ratings_id.rating_level -= 100;
				ratings_id.display_text = ["Disappointment", -100];
				boast_boost = false;
				has_dissapointed = true;
	    	}
		}
		break;
		
		case 2: //pose
		if state_timer == 1 {
			
		}
		break;
		
		case 3: //heel turn
		if trigger_oof {
			ratings_id.rating_level += 100;
			ratings_id.display_text = ["Justice", 100];
		}
		break;
	}
}