if (is_aether_stage()){

	spawn_timer--;

	
	//randomizing positions and powerups

	if (spawn_timer == 60){
		with oPlayer {
			other.random_number_1 = other.random_number_1 + char_height + jump_start_time;
			other.random_number_2 = other.random_number_2 + dash_turn_time + prat_land_time + attack;
			other.players_x = other.players_x + x;
			other.players_damage = other.players_damage + get_player_damage(player);
		}
	}

	with oPlayer {
		if ((window_timer == 1) || (state_timer mod 154 = 0)){
			other.random_number_1 = other.random_number_1 + 1;
		}
	
		if ((state_timer == 1) || (state_timer mod 77 = 0)){
			other.random_number_2 = other.random_number_2 + 1;
		}
	}


	if (spawn_timer == 30){
		last_powerup = next_powerup;
		last_position = next_position;
		next_powerup = (get_gameplay_time() + random_number_1 + players_damage) mod 9 + 1;
		next_position = (get_gameplay_time() + random_number_2 + players_x) mod 19 + 1;

		//avoiding repeats

		if (next_position == last_position) {
			if (next_position < 19) {
				next_position = last_position + 1;
			} else next_position = 1;
		}

		if (next_powerup == last_powerup) {
			if (next_powerup < 9) {
				next_powerup = last_powerup + 1;
			} else next_powerup = 1;
		}
	}

	//setting positions

	switch (next_position) {

		case 1:
			x_spawn = x_1;
			y_spawn = y_1;
		break;

		case 2:
			x_spawn = x_2;
			y_spawn = y_2;
		break;

		case 3:
			x_spawn = x_3;
			y_spawn = y_3;
		break;

		case 4:
			x_spawn = x_4;
			y_spawn = y_4;
		break;

		case 5:
			x_spawn = x_5;
			y_spawn = y_5;
		break;

		case 6:
			x_spawn = x_6;
			y_spawn = y_6;
		break;

		case 7:
			x_spawn = x_7;
			y_spawn = y_7;
		break;

		case 8:
			x_spawn = x_8;
			y_spawn = y_8;
		break;

		case 9:
			x_spawn = x_9;
			y_spawn = y_9;
		break;

		case 10:
			x_spawn = x_10;
			y_spawn = y_10;
		break;

		case 11:
			x_spawn = x_11;
			y_spawn = y_11;
		break;

		case 12:
			x_spawn = x_12;
			y_spawn = y_12;
		break;

		case 13:
			x_spawn = x_13;
			y_spawn = y_13;
		break;

		case 14:
			x_spawn = x_14;
			y_spawn = y_14;
		break;

		case 15:
			x_spawn = x_15;
			y_spawn = y_15;
		break;

		case 16:
			x_spawn = x_16;
			y_spawn = y_16;
		break;

		case 17:
			x_spawn = x_17;
			y_spawn = y_17;
		break;

		case 18:
			x_spawn = x_18;
			y_spawn = y_18;
		break;

		case 19:
			x_spawn = x_19;
			y_spawn = y_19;
		break;
	}

	//spawning the darn thing

	if(spawn_timer == 0){	

		if (present_powerups < 5) { 
			instance_create(x_spawn, y_spawn, "obj_stage_article", 1)
			present_powerups = present_powerups + 1;
		}

		spawn_timer = spawn_timer_default;
	}

	//death sfx

	if (play_negative_sfx = true){
		sound_play(sound_get("patch_negative"));
		play_negative_sfx = false;
	}


	//setting up stat boosts

	with (oPlayer){

		//setting default stats (no it won't work on init)

		if (get_gameplay_time() = 2){

			//ct_boost
			default_walk_accel = walk_accel;
			default_dash_turn_accel = dash_turn_accel;
			default_initial_dash_speed = initial_dash_speed;
			default_initial_dash_time = initial_dash_time;

			//ct_defense
			default_prat_land_time = prat_land_time;
			default_knockback_adj = knockback_adj;
			default_techroll_speed = techroll_speed;
			default_air_dodge_speed = air_dodge_speed;

			//ct_glide
			default_air_accel = air_accel;
			default_jump_speed = jump_speed;
			default_djump_speed = djump_speed;
			default_air_friction = air_friction;
			default_walljump_vsp = walljump_vsp;
			default_jump_start_time = jump_start_time;

			//top speed
			default_dash_speed = dash_speed;
			default_air_max_speed = air_max_speed;

			//ct_turn
			default_ground_friction = ground_friction;
			default_walk_turn_time = walk_turn_time;
			default_dash_turn_time = dash_turn_time;
			default_dash_turn_accel = dash_turn_accel;
			default_wave_friction = wave_friction;
			default_dash_stop_percent = dash_stop_percent;

			//ct_weight
			default_max_fall = max_fall;
			default_fast_fall = fast_fall;
			default_gravity_speed = gravity_speed;
		}


		//which power up is whom's? (this is just for checking purposes)
		// switch (player){
		// 	case 1:
		// 		other.p1_ct_glide = ct_glide;
		// 		other.p1_ct_offense = ct_offense;
		// 		other.p1_ct_hp = ct_hp;
		// 		other.p1_ct_weight = ct_weight;
		// 		other.p1_ct_boost = ct_boost;
		// 		other.p1_ct_turn = ct_turn;
		// 		other.p1_ct_defense = ct_defense;
		// 		other.p1_ct_charge = ct_charge;
		// 		other.p1_ct_topspeed = ct_topspeed;
		// 	break;

		// 	case 2:
		// 		other.p2_ct_glide = ct_glide;
		// 		other.p2_ct_offense = ct_offense;
		// 		other.p2_ct_hp = ct_hp;
		// 		other.p2_ct_weight = ct_weight;
		// 		other.p2_ct_boost = ct_boost;
		// 		other.p2_ct_turn = ct_turn;
		// 		other.p2_ct_defense = ct_defense;
		// 		other.p2_ct_charge = ct_charge;
		// 		other.p2_ct_topspeed = ct_topspeed;
		// 	break;

		// 	case 3:
		// 		other.p3_ct_glide = ct_glide;
		// 		other.p3_ct_offense = ct_offense;
		// 		other.p3_ct_hp = ct_hp;
		// 		other.p3_ct_weight = ct_weight;
		// 		other.p3_ct_boost = ct_boost;
		// 		other.p3_ct_turn = ct_turn;
		// 		other.p3_ct_defense = ct_defense;
		// 		other.p3_ct_charge = ct_charge;
		// 		other.p3_ct_topspeed = ct_topspeed;
		// 	break;

		// 	case 4:
		// 		other.p4_ct_glide = ct_glide;
		// 		other.p4_ct_offense = ct_offense;
		// 		other.p4_ct_hp = ct_hp;
		// 		other.p4_ct_weight = ct_weight;
		// 		other.p4_ct_boost = ct_boost;
		// 		other.p4_ct_turn = ct_turn;
		// 		other.p4_ct_defense = ct_defense;
		// 		other.p4_ct_charge = ct_charge;
		// 		other.p4_ct_topspeed = ct_topspeed;
		// 	break;
		// }


		//adding variables to poor souls withoug it

		if ("ct_glide" in self){}else{
				ct_glide = 0;
				ct_offense = 0;
				ct_hp = 0;
				ct_weight = 0;
				ct_boost = 0;
				ct_turn = 0;
				ct_defense = 0;
				ct_charge= 0;
				ct_topspeed = 0;

				//i'm too lazy to use a function

				multiplayer_num = 0
				hud_number = 0
				
				//ct_boost
				default_walk_accel = walk_accel;
				default_dash_turn_accel = dash_turn_accel;
				default_initial_dash_speed = initial_dash_speed;
				default_initial_dash_time = initial_dash_time;

				//ct_defense
				default_prat_land_time = prat_land_time;
				default_knockback_adj = knockback_adj;
				default_techroll_speed = techroll_speed;
				default_air_dodge_speed = air_dodge_speed;
	
				//ct_glide
				default_air_accel = air_accel;
				default_jump_speed = jump_speed;
				default_djump_speed = djump_speed;
				default_air_friction = air_friction;
				default_walljump_vsp = walljump_vsp;
				default_jump_start_time = jump_start_time;

				//top speed
				default_dash_speed = dash_speed;
				default_air_max_speed = air_max_speed;

				//ct_turn
				default_ground_friction = ground_friction;
				default_walk_turn_time = walk_turn_time;
				default_dash_turn_time = dash_turn_time;
				default_dash_turn_accel = dash_turn_accel;
				default_wave_friction = wave_friction;
				default_dash_stop_percent = dash_stop_percent;

				//ct_weight
				default_max_fall = max_fall;
				default_fast_fall = fast_fall;
				default_gravity_speed = gravity_speed;
					
		}

		//what happens in each powerup?
		
		switch (ct_glide) {

			case 0:

				air_accel = default_air_accel;
				jump_speed = default_jump_speed;
				djump_speed = default_djump_speed;
				air_friction = default_air_friction;
				walljump_vsp = default_walljump_vsp;
				jump_start_time = 4;

			break;

			case 1:

				air_accel = default_air_accel + 0.1;
				jump_speed = default_jump_speed + 1;
				djump_speed = default_djump_speed + 1;

				if (air_friction >= 0.01) {
				air_friction = default_air_friction - 0.01;
				} else air_friction = 0;

				walljump_vsp = default_walljump_vsp + 1;
				jump_start_time = 3;

			break;

			case 2:

				air_accel = default_air_accel + 0.2;
				jump_speed = default_jump_speed + 2;
				djump_speed = default_djump_speed + 2;

				if (air_friction >= 0.02) {
				air_friction = default_air_friction - 0.02;
				} else air_friction = 0;

				walljump_vsp = default_walljump_vsp + 2;
				jump_start_time = 2;

			break;

			case 3:

				air_accel = default_air_accel + 0.3;
				jump_speed = default_jump_speed + 3;
				djump_speed = default_djump_speed + 3;

				if (air_friction >= 0.03) {
				air_friction = default_air_friction - 0.03;
				} else air_friction = 0;

				walljump_vsp = default_walljump_vsp + 3;
				jump_start_time = 1;
			break;
		}

		switch (ct_offense) {

			case 0:

				for(var i = 1; i <= get_num_hitboxes(attack); i++) {
					reset_hitbox_value(attack, i, HG_DAMAGE);
					reset_hitbox_value(attack, i, HG_BASE_HITPAUSE);
					reset_hitbox_value(attack, i, HG_HITPAUSE_SCALING);
					set_hitbox_value(attack, i, HG_DAMAGE, get_hitbox_value(attack, i, HG_DAMAGE));
					set_hitbox_value(attack, i, HG_BASE_HITPAUSE, get_hitbox_value(attack, i, HG_BASE_HITPAUSE));
					set_hitbox_value(attack, i, HG_HITPAUSE_SCALING, get_hitbox_value(attack, i, HG_HITPAUSE_SCALING));
					}
			break;

			case 1:

				for(var i = 1; i <= get_num_hitboxes(attack); i++) {
					reset_hitbox_value(attack, i, HG_DAMAGE);
					reset_hitbox_value(attack, i, HG_BASE_HITPAUSE);
					reset_hitbox_value(attack, i, HG_HITPAUSE_SCALING);
					set_hitbox_value(attack, i, HG_DAMAGE, get_hitbox_value(attack, i, HG_DAMAGE) * 1.2);
					set_hitbox_value(attack, i, HG_BASE_HITPAUSE, get_hitbox_value(attack, i, HG_BASE_HITPAUSE) + 1);
					set_hitbox_value(attack, i, HG_HITPAUSE_SCALING, get_hitbox_value(attack, i, HG_HITPAUSE_SCALING) + 0.05);
				}

			break;

			case 2:

				for(var i = 1; i <= get_num_hitboxes(attack); i++) {
					reset_hitbox_value(attack, i, HG_DAMAGE);
					reset_hitbox_value(attack, i, HG_BASE_HITPAUSE);
					reset_hitbox_value(attack, i, HG_HITPAUSE_SCALING);
					set_hitbox_value(attack, i, HG_DAMAGE, get_hitbox_value(attack, i, HG_DAMAGE) * 1.35);
					set_hitbox_value(attack, i, HG_BASE_HITPAUSE, get_hitbox_value(attack, i, HG_BASE_HITPAUSE) + 2);
					set_hitbox_value(attack, i, HG_HITPAUSE_SCALING, get_hitbox_value(attack, i, HG_HITPAUSE_SCALING) + 0.1);
				}

			break;

			case 3:

				for(var i = 1; i <= get_num_hitboxes(attack); i++) {
					reset_hitbox_value(attack, i, HG_DAMAGE);
					reset_hitbox_value(attack, i, HG_BASE_HITPAUSE);
					reset_hitbox_value(attack, i, HG_HITPAUSE_SCALING);
					set_hitbox_value(attack, i, HG_DAMAGE, get_hitbox_value(attack, i, HG_DAMAGE) * 1.5);
					set_hitbox_value(attack, i, HG_BASE_HITPAUSE, get_hitbox_value(attack, i, HG_BASE_HITPAUSE) + 3);
					set_hitbox_value(attack, i, HG_HITPAUSE_SCALING, get_hitbox_value(attack, i, HG_HITPAUSE_SCALING) + 0.15);
				}

			break;
		}

		switch (ct_hp) {

			case 0:

			break;

			case 1:

			break;

			case 2:

			break;

			case 3:

			break;
		}

		switch (ct_weight) {

			case 0:

				max_fall = default_max_fall;
				fast_fall = default_fast_fall;
				gravity_speed = default_gravity_speed;

			break;

			case 1:

				max_fall = default_max_fall + 1;
				fast_fall = default_fast_fall + 1;
				gravity_speed = default_gravity_speed + 0.1;

			break;

			case 2:

				max_fall = default_max_fall + 2;
				fast_fall = default_fast_fall + 2;
				gravity_speed = default_gravity_speed + 0.2;

			break;

			case 3:

				max_fall = default_max_fall + 3;
				fast_fall = default_fast_fall + 3;
				gravity_speed = default_gravity_speed + 0.3;

			break;
		}

		switch (ct_boost) {

			case 0:

				walk_accel = default_walk_accel;
				dash_turn_accel = default_dash_turn_accel;
				initial_dash_speed = default_initial_dash_speed;
				initial_dash_time = default_initial_dash_time;

			break;

			case 1:

				walk_accel = default_walk_accel + 0.1;
				dash_turn_accel = default_dash_turn_accel + 0.1;
				initial_dash_speed = default_initial_dash_speed + 1;
				initial_dash_time = default_initial_dash_time + 1;

			break;

			case 2:

				walk_accel = default_walk_accel + 0.2;
				dash_turn_accel = default_dash_turn_accel + 0.2;
				initial_dash_speed = default_initial_dash_speed + 2;
				initial_dash_time = default_initial_dash_time + 2;

			break;

			case 3:

				walk_accel = default_walk_accel + 0.3;
				dash_turn_accel = default_dash_turn_accel + 0.3;
				initial_dash_speed = default_initial_dash_speed + 3;
				initial_dash_time = default_initial_dash_time + 3;

			break;
		}

		switch (ct_turn) {

			case 0:

				ground_friction = default_ground_friction;
				walk_turn_time = default_walk_turn_time;
				dash_turn_time = default_dash_turn_time;
				dash_turn_accel = default_dash_turn_accel;
				wave_friction = default_wave_friction;
				dash_stop_percent = default_dash_stop_percent;

			break;

			case 1:

				if (ground_friction >= 0.1){
					ground_friction = default_ground_friction - 0.1;
				} else ground_friction = 0;

				if (walk_turn_time >= 1){ 
					walk_turn_time = default_walk_turn_time - 1;
				}

				if (dash_turn_time >= 1){ 
					dash_turn_time = default_dash_turn_time - 1;
				}

				dash_turn_accel = default_dash_turn_accel + 0.1;

				if (wave_friction >= 0.1){ 
					wave_friction = default_wave_friction - 0.1;
				}

				dash_stop_percent = default_dash_stop_percent + 0.05;

			break;

			case 2:

				if (ground_friction >= 0.2){
					ground_friction = default_ground_friction - 0.2;
				} else ground_friction = 0;

				if (walk_turn_time >= 2){ 
					walk_turn_time = default_walk_turn_time - 2;
				}

				if (dash_turn_time >= 2){ 
					dash_turn_time = default_dash_turn_time - 2;
				}

				dash_turn_accel = default_dash_turn_accel + 0.2;

				if (wave_friction >= 0.2){ 
					wave_friction = default_wave_friction - 0.2;
				}

				dash_stop_percent = default_dash_stop_percent + 0.1;

			break;

			case 3:

				if (ground_friction >= 0.3){
					ground_friction = default_ground_friction - 0.3;
				} else ground_friction = 0;

				if (walk_turn_time >= 3){ 
					walk_turn_time = default_walk_turn_time - 3;
				}

				if (dash_turn_time >= 3){ 
					dash_turn_time = default_dash_turn_time - 3;
				}

				dash_turn_accel = default_dash_turn_accel + 0.3;

				if (wave_friction >= 0.3){ 
					wave_friction = default_wave_friction - 0.3;
				}

				dash_stop_percent = default_dash_stop_percent + 0.15;
			break;
		}

		switch (ct_defense) {

			case 0:
				prat_land_time = default_prat_land_time
				knockback_adj = default_knockback_adj;
				default_techroll_speed = techroll_speed;
				air_dodge_speed = default_air_dodge_speed;

			break;

			case 1:

				if (prat_land_time >= 2){ 
					prat_land_time = default_prat_land_time - 2;
				}

				knockback_adj = default_knockback_adj + 0.1;
				default_techroll_speed = techroll_speed + 1;
				air_dodge_speed = default_air_dodge_speed + 1;
			break;

			case 2:

				if (prat_land_time >= 4){ 
					prat_land_time = default_prat_land_time - 4;
				}

				knockback_adj = default_knockback_adj + 0.2;
				default_techroll_speed = techroll_speed + 2;
				air_dodge_speed = default_air_dodge_speed + 2;
			break;

			case 3:

				if (prat_land_time >= 6){ 
					prat_land_time = default_prat_land_time - 6;
				}

				knockback_adj = default_knockback_adj + 0.6;
				default_techroll_speed = techroll_speed + 3;
				air_dodge_speed = default_air_dodge_speed + 3;
			break;
		}

		switch (ct_charge) {

			case 0:

				for(var i = 1; i <= get_num_hitboxes(attack); i++) {
					reset_hitbox_value(attack, i, HG_BASE_KNOCKBACK);
					reset_hitbox_value(attack, i, HG_KNOCKBACK_SCALING);
					set_hitbox_value(attack, i, HG_BASE_KNOCKBACK, get_hitbox_value(attack, i, HG_BASE_KNOCKBACK));
					set_hitbox_value(attack, i, HG_KNOCKBACK_SCALING, get_hitbox_value(attack, i, HG_KNOCKBACK_SCALING));
					}
			break;

			case 1:

				for(var i = 1; i <= get_num_hitboxes(attack); i++) {
					reset_hitbox_value(attack, i, HG_BASE_KNOCKBACK);
					reset_hitbox_value(attack, i, HG_KNOCKBACK_SCALING);
					set_hitbox_value(attack, i, HG_BASE_KNOCKBACK, get_hitbox_value(attack, i, HG_BASE_KNOCKBACK) + 1);
					set_hitbox_value(attack, i, HG_KNOCKBACK_SCALING, get_hitbox_value(attack, i, HG_KNOCKBACK_SCALING) + 0.1);
					}

			break;

			case 2:

				for(var i = 1; i <= get_num_hitboxes(attack); i++) {
					reset_hitbox_value(attack, i, HG_BASE_KNOCKBACK);
					reset_hitbox_value(attack, i, HG_KNOCKBACK_SCALING);
					set_hitbox_value(attack, i, HG_BASE_KNOCKBACK, get_hitbox_value(attack, i, HG_BASE_KNOCKBACK) + 2);
					set_hitbox_value(attack, i, HG_KNOCKBACK_SCALING, get_hitbox_value(attack, i, HG_KNOCKBACK_SCALING) + 0.2);
					}

			break;

			case 3:

				for(var i = 1; i <= get_num_hitboxes(attack); i++) {
					reset_hitbox_value(attack, i, HG_BASE_KNOCKBACK);
					reset_hitbox_value(attack, i, HG_KNOCKBACK_SCALING);
					set_hitbox_value(attack, i, HG_BASE_KNOCKBACK, get_hitbox_value(attack, i, HG_BASE_KNOCKBACK) + 3);
					set_hitbox_value(attack, i, HG_KNOCKBACK_SCALING, get_hitbox_value(attack, i, HG_KNOCKBACK_SCALING) + 0.3);
					}

			break;
		}

		switch (ct_topspeed) {

			case 0:

				dash_speed = default_dash_speed;
				air_max_speed = default_air_max_speed;

			break;

			case 1:

				dash_speed = default_dash_speed + 1;
				air_max_speed = default_air_max_speed + 1;

			break;

			case 2:

				dash_speed = default_dash_speed + 2;
				air_max_speed = default_air_max_speed + 2;

			break;

			case 3:

				dash_speed = default_dash_speed + 2;
				air_max_speed = default_air_max_speed + 2;

			break;
		}

		//what happens when you die?

		if (state == PS_RESPAWN && state_timer == 1){

			if (ct_glide > 1) { ct_glide = ct_glide - 1; }
			if (ct_offense > 1) { ct_offense = ct_offense - 1; }
			if (ct_hp > 1) { ct_hp = ct_hp - 1; }
			if (ct_weight > 1) { ct_weight = ct_weight - 1; }
			if (ct_boost > 1) { ct_boost = ct_boost - 1; }
			if (ct_turn > 1) { ct_turn = ct_turn - 1; }
			if (ct_defense > 1) { ct_defense = ct_defense - 1; }
			if (ct_charge > 1) { ct_charge = ct_charge - 1; }
			if (ct_topspeed > 1) { ct_topspeed = ct_topspeed - 1; }
			other.play_negative_sfx = true;

			notification = instance_create(x, y - char_height - 20, "obj_stage_article", 2);
			notification.notif_id = 10;
			notification.who_got_it = player;

		}

	}
}

