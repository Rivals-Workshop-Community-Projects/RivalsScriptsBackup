
minion_heals_do = false;
minion_heals_house = noone;
if (my_hitboxID.attack == AT_NTHROW or my_hitboxID.attack == AT_FTHROW or my_hitboxID.attack == AT_UTHROW or my_hitboxID.attack == AT_DTHROW) && my_hitboxID.orig_player == player{
    with(obj_article1) {
        if player_id == other.id && other.my_hitboxID == thrown_hitbox_id {
            hsp *= -0.3
            vsp = -8;
            other.minion_heals_do = true;
            other.minion_heals_house = self;
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
            //heal a bit
            hp_rn += hp_rn < hp_max ? 2 : 0;
            if hp_rn > hp_max {
            	hp_rn = hp_max;
            }
        }
    }
}
if minion_heals_do { //heals minions on house hit
	with(obj_article2) {
		if player_id == other.id {
			if minion_house == other.minion_heals_house {
				hp_rn += hp_rn < hp_max ? 3 : 0;
	            if hp_rn > hp_max {
	            	hp_rn = hp_max;
	            }
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

//jab special
if my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 3 {
	boosting_minions = true;
	boosting_timer_rn = 0;
}


//minion targeting
with(obj_article2) {
	if player_id == other.id && get_player_team(player_id.player) != get_player_team(other.hit_player) {
		target_player = other.hit_player_obj;
	}
}

//layering attacks sounds for more gamefeel & stuff
if (my_hitboxID.orig_player == player) {
	switch(my_hitboxID.attack){
		case AT_JAB:
			if my_hitboxID.hbox_num == 3 {
				sound_play(asset_get("sfx_ice_back_air"),false,0,0.35,1.55);
				//sound_play(asset_get("sfx_waterhit_medium"),false,0,0.9,0.9);
			}
			break;
		case AT_FTILT:
			sound_play(asset_get("sfx_icehit_weak1"),false,0,0.25,0.76);
			sound_play(asset_get("sfx_blow_weak2"),false,0,0.85,0.55);
			break;
		case AT_DTILT:
			sound_play(asset_get("sfx_ice_back_air"),false,0,0.15,1.55);
			sound_play(asset_get("sfx_waterhit_medium"),false,0,0.9,0.9);
			break;
		case AT_UTILT:
			sound_play(asset_get("sfx_icehit_weak2"),false,0,0.25,0.76);
			sound_play(asset_get("sfx_waterhit_medium"),false,0,1,1.1);
			break;
		case AT_DATTACK:
			sound_play(asset_get("sfx_icehit_weak2"),false,0,0.85,0.76);
			break;
		case AT_NAIR:
			sound_play(asset_get("sfx_watergun_splash"),false,0,0.45,1.45);
			sound_play(asset_get("sfx_waterhit_medium"),false,0,1,1.1);
			break;
		case AT_UAIR:
			if my_hitboxID.hbox_num == 1 {
				sound_play(asset_get("sfx_watergun_splash"),false,0,0.45,0.5);
				sound_play(asset_get("sfx_waterhit_medium"),false,0,0.96,1.1);
				sound_play(asset_get("sfx_icehit_heavy2"),false,0,0.65,1.45);
			}
			if my_hitboxID.hbox_num == 2 {
				sound_play(asset_get("sfx_icehit_weak2"),false,0,0.85,0.76);
			}
			break;
		case AT_FAIR:
			if my_hitboxID.hbox_num == 1 { //sourspot
				sound_play(asset_get("sfx_icehit_weak1"),false,0,0.35,0.76);
				sound_play(asset_get("sfx_waterhit_medium"),false,0,1.2,1);
			} else if my_hitboxID.hbox_num == 2 { //spike
				sound_play(asset_get("sfx_icehit_weak2"),false,0,0.45,0.5);
				sound_play(asset_get("sfx_waterhit_medium"),false,0,1.3,1.2);
			}
			break;
		case AT_BAIR:
			if my_hitboxID.hbox_num == 1 {
				sound_play(asset_get("sfx_icehit_weak2"),false,0,0.85,0.76);
			}
			if my_hitboxID.hbox_num == 2 {
				sound_play(asset_get("sfx_watergun_splash"),false,0,0.45,0.8);
				sound_play(asset_get("sfx_waterhit_medium"),false,0,0.75,1.25);
			}
			break;
		case AT_DAIR:
			if my_hitboxID.hbox_num == 1 {
				sound_play(asset_get("sfx_icehit_weak2"),false,0,0.85,0.76);
			}
			if my_hitboxID.hbox_num == 2 {
				sound_play(asset_get("sfx_watergun_splash"),false,0,0.45,0.8);
				sound_play(asset_get("sfx_waterhit_medium"),false,0,0.75,1.25);
			}
			break;
		case AT_USTRONG:
			sound_play(asset_get("sfx_icehit_weak2"),false,0,0.35,0.35);
			sound_play(asset_get("sfx_waterhit_medium"),false,0,1.3,1.15);
			break;
		case AT_FSTRONG:
			sound_play(asset_get("sfx_icehit_weak2"),false,0,0.35,0.5);
			sound_play(asset_get("sfx_waterhit_medium"),false,0,1.3,1.15);
			break;
		case AT_DSTRONG:
			sound_play(asset_get("sfx_watergun_splash"),false,0,0.45,0.5);
			sound_play(asset_get("sfx_waterhit_medium"),false,0,0.96,1.1);
			sound_play(asset_get("sfx_icehit_heavy2"),false,0,0.65,1.45);
			break;
		case AT_USPECIAL:
			if my_hitboxID.hbox_num == 1 {
				sound_play(asset_get("sfx_waterhit_medium"),false,0,0.9,0.9);
				sound_play(asset_get("sfx_icehit_weak2"),false,0,0.85,0.76);
			}
			if my_hitboxID.hbox_num == 2 {
				sound_play(asset_get("sfx_icehit_weak2"),false,0,0.45,0.35);
				sound_play(asset_get("sfx_waterhit_heavy2"),false,0,1.3,0.95);
			}
			break;
		case AT_FSPECIAL:
			if my_hitboxID.hbox_num == 1 {
				sound_play(asset_get("sfx_waterhit_weak"),false,0,0.65,0.9);
				sound_play(asset_get("sfx_icehit_weak2"),false,0,0.35,0.75);
			}
			if (my_hitboxID.hbox_num == 2) or (my_hitboxID.hbox_num == 3) {
				sound_play(asset_get("sfx_icehit_weak2"),false,0,0.45,0.35);
				sound_play(asset_get("sfx_waterhit_heavy2"),false,0,1.3,0.95);
			}
			break;
		case AT_DSPECIAL:
			sound_play(asset_get("sfx_icehit_weak2"),false,0,0.25,0.76);
			sound_play(asset_get("sfx_ice_back_air"),false,0,0.45,1.85);
			sound_play(asset_get("sfx_waterhit_medium"),false,0,0.65,1.1);
			break;
		case AT_NTHROW:
			sound_play(asset_get("sfx_icehit_weak2"),false,0,0.65,0.85);
			break;
		case AT_FTHROW:
			sound_play(asset_get("sfx_icehit_weak2"),false,0,0.65,0.85);
			break;
		case AT_DTHROW:
			sound_play(asset_get("sfx_icehit_weak2"),false,0,0.65,0.85);
			break;
		case AT_UTHROW:
			sound_play(asset_get("sfx_icehit_weak2"),false,0,0.65,0.85);
			break;
	}
}


