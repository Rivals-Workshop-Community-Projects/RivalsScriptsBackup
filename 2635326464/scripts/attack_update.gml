 //B - Reversals
if (attack == AT_DSPECIAL){
    trigger_b_reverse();
}

//Height change on some moves 

if (attack == AT_DAIR){
	if (window == 1){
	 char_height = 80
	} else char_height = 52;
}

if (attack == AT_UAIR || attack == AT_USPECIAL_2 || attack == AT_NSPECIAL_2 || attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR){
	char_height = 80;
}

//big rune

if has_rune("L") {
		if (window_timer == 1){
			for(var i = 1; i <= get_num_hitboxes(attack); i++) {
			reset_hitbox_value(attack, i, HG_DAMAGE);
			reset_hitbox_value(attack, i, HG_BASE_HITPAUSE);
			reset_hitbox_value(attack, i, HG_WIDTH);
			reset_hitbox_value(attack, i, HG_HEIGHT);
			reset_hitbox_value(attack, i, HG_HITBOX_X);
			reset_hitbox_value(attack, i, HG_HITBOX_Y);
			reset_hitbox_value(attack, i, HG_BASE_KNOCKBACK);
			set_hitbox_value(attack, i, HG_DAMAGE, get_hitbox_value(attack, i, HG_DAMAGE) * 1.5);
			set_hitbox_value(attack, i, HG_BASE_HITPAUSE, get_hitbox_value(attack, i, HG_BASE_HITPAUSE) * 1.2);
			set_hitbox_value(attack, i, HG_WIDTH, get_hitbox_value(attack, i, HG_WIDTH) *2);
			set_hitbox_value(attack, i, HG_HEIGHT, get_hitbox_value(attack, i, HG_HEIGHT) *2);
			set_hitbox_value(attack, i, HG_HITBOX_X, get_hitbox_value(attack, i, HG_HITBOX_X) *2);
			set_hitbox_value(attack, i, HG_HITBOX_Y, get_hitbox_value(attack, i, HG_HITBOX_Y) *2);
			set_hitbox_value(attack, i, HG_BASE_KNOCKBACK, get_hitbox_value(attack, i, HG_BASE_KNOCKBACK) * 1.2);
			}
		}
}



switch(attack){

	case AT_JAB:
	{
		if (window == 3 && window_timer == 5){
			window = 7;
			window_timer = 4;
		} 

	}
	break;

	case AT_DATTACK:
	{
		if (has_hit && window = 3 && window_timer == 9) {
			if ((attack_down) && (left_down || right_down)){
			window = 4;
			window_timer = 0;
			spawn_base_dust( x-spr_dir*22, y, "dash_start");
			spawn_base_dust( x-spr_dir*30, y-30, "boost", 0);
			}
		}

		if (window == 4){
			if (window_timer == 0) {
				if (hsp > 0 && left_down) {
					spr_dir = -1;
				}
				if (hsp < 0 && right_down) {
					spr_dir = 1;
				}
			}

			if (window_timer == 4){
				attack_end();
				set_state(PS_DASH);
			}

			if (attack_pressed || jump_pressed || special_pressed){
				iasa_script();
			}
		}
	}
	break;

	case AT_UTILT:
	{
		if (window == 4 || window == 8 || window == 12){
			if ((attack_pressed && !up_down) ||left_pressed || up_pressed || right_pressed || down_pressed || special_pressed || taunt_pressed || jump_pressed || shield_pressed){
				iasa_script();
			}

			if ((attack_pressed && up_down) || up_stick_pressed){
				if (window == 4){
					window = 5;
					window_timer = 0;
					attack_end();
				}
				if (window == 8){
					window = 9;
					window_timer = 0;
					attack_end();
				}
				if (window == 12){
					window = 5;
					window_timer = 0;
					attack_end();
				}
			
			}
		}

		if (window != 4 && window != 8 && window != 12){
			if (left_down){
				hsp = -1;
			} else if (right_down){
				hsp = 1;
			}
		}
	}
	break;


	case AT_DTILT:
	{
		if (((window == 2 && window_timer > 6) || (window == 3)) && has_hit){
			if (jump_pressed || attack_pressed || left_stick_pressed || up_stick_pressed || left_stick_pressed){
				iasa_script();
			}
		} 
	}
	break;

	case AT_NAIR:
	{
		if has_rune("F") {
			set_window_value(AT_NAIR, 4, AG_WINDOW_HSPEED, 20);
			set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 10);
		}

		if (window == 1 && window_timer == 1){
			has_tricked = 1;
			set_attack_value(AT_NAIR, AG_CATEGORY, 1);
		}

		if(!free){
			attack_end();
		}

		if (window == 4){
			set_attack_value(AT_NAIR, AG_CATEGORY, 2);
			if (window_timer == 4){
				attack_end();
				set_state(PS_DASH);
				spawn_base_dust( x-spr_dir*22, y, "dash_start");
				spawn_base_dust( x-spr_dir*30, y-30, "boost", 0);
			}

			if (attack_pressed || jump_pressed || special_pressed){
				//iasa_script();
				//nope, don't cancel into things
			}
		}
	}
	break;

	case AT_BAIR:
	{

		if has_rune("G") {
			set_attack_value(AT_BAIR, AG_CATEGORY, 2);
		}

		if has_rune("E") {
			if (window == 1 && window_timer == 1){ has_tricked = 1; }
			set_attack_value(AT_NAIR, AG_CATEGORY, 1);
		}
	}
	break;


	case AT_FAIR:
	{

		if (window == 1){ 
			set_attack_value(AT_FAIR, AG_LANDING_LAG, 22);
			chomp_spr_dir = spr_dir;

			if (window_timer == 1){
				sound_play (sound_get("Chain"));
			}

			if (window_timer == 1){
				chomp_x = x + spr_dir*-7;
				chomp_y = y - 52;
			}

			if(fair_uses = 1){
				set_window_value(AT_FAIR, 3, AG_WINDOW_HSPEED, 2);
			} else set_window_value(AT_FAIR, 3, AG_WINDOW_HSPEED, 4);
		}

		if (window == 2){
			if (window_timer < 2){
				chomp_x = x + chomp_spr_dir*7;
				chomp_y = y - 56;
			} else 
			if (window_timer < 4){
				chomp_x = x + chomp_spr_dir*19;
				chomp_y = y - 60;
			} else 
			if (window_timer < 6){
				chomp_x = x + chomp_spr_dir*27;
				chomp_y = y - 60;
			} else 
			if (window_timer < 8){
				chomp_x = x + chomp_spr_dir*53;
				chomp_y = y - 56;
			} else 
			if (window_timer < 10){
				chomp_x = x + chomp_spr_dir*67;
				chomp_y = y - 54;
			} else 
			if (window_timer < 12){
				chomp_x = x + chomp_spr_dir*75;
				chomp_y = y - 46;
			} else 
			if (window_timer < 14){
				chomp_x = x + chomp_spr_dir*97;
				chomp_y = y - 42;
			}
		}

		if (window == 3){
			if(state_timer > 30){
				if (attack_pressed || special_pressed || jump_pressed){
					iasa_script();
				}
			}

			if(window_timer == 1){
				fair_uses = 1;
			}
			chomp_x = x + chomp_spr_dir*97;
			chomp_y = y - 42;
		}

		if (window > 1 && has_hit){
			set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);
		}

		if has_rune("E") {
			if (window == 1 && window_timer == 1){ has_tricked = 1; }
			set_attack_value(AT_NAIR, AG_CATEGORY, 1);
		}
	}
	break;

	case AT_UAIR:
	{
		if (window == 2){
			if (window_timer == 1){
				take_damage( player, -1, 3 );
				sound_stop (sound_get("Lightning"));
				sound_play (sound_get("Lightning"));
			}
		}

		if has_rune("E") {
			if (window == 1 && window_timer == 1){ has_tricked = 1; }
			set_attack_value(AT_NAIR, AG_CATEGORY, 1);
		}

		if (window == 3 && window_timer == 1){
			lightning_timer_start = 1;
		}

		if (window == 1 && window_timer == 1 && lightning_cooldown_active == 1){
			lightning_timer = lightning_recharge;

		}

		if (lightning_cooldown_active == 1){
			set_num_hitboxes(AT_UAIR,1);
		} else set_num_hitboxes(AT_UAIR,2);
	}
	break;


	case AT_DAIR:
	{
		can_fast_fall = false;

		if (window == 1 && window_timer == 1){
			state_timer = 1;
			sound_stop(sound_get("GliderWind"));
		}

		if (spr_dir = 1) {
			set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
		} else set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair_left"));

		if ((window == 2 || window == 3) && !free){
			window = 4;
			window_timer = 0;
			destroy_hitboxes();
		}


		//cancelling into uspecial

		if (state_timer > 25 && (window == 3 || window == 2)){
			if (up_down && special_pressed){
				attack = AT_USPECIAL_2;
				window_timer = 0;
				window = 5;
				vsp = vsp/4;
				destroy_hitboxes();
				hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);

				if (spr_dir == 1){
					hsp = 12;
				} else hsp = -12;
			}
		}

		//cancelling on hit

		if (has_hit && window == 4 && window_timer > 8){
			iasa_script();
		}

		if has_rune("E") {
			if (window == 1 && window_timer == 1){ has_tricked = 1; }
			set_attack_value(AT_NAIR, AG_CATEGORY, 1);
		}
	}
	break;

	case AT_FSTRONG:
	{
		move_cooldown[AT_FSTRONG] = 100;

		if (window == 2 && window_timer == 6){
			shell_spawned = 1;
			green_shell = create_hitbox(AT_FSTRONG, 1, x+spr_dir*16, y-46);
				if has_rune("M") {
					green_shell_2 = create_hitbox(AT_FSTRONG, 1, x+spr_dir*56, y-50);
					green_shell_3 = create_hitbox(AT_FSTRONG, 1, x+spr_dir*96, y-54);
				}
		}
	}
	break;

	case AT_FSTRONG_2:
	{
		move_cooldown[AT_FSTRONG] = 100;

		if (window == 2 && window_timer == 1){
			sound_play(sound_get("blue_flight"));
		}
	}
	break;


	case AT_USTRONG:
	{

		if (window == 1){
			if (window_timer == 1){
				bomb_bounced = 0;
			}
		}

		move_cooldown[AT_USTRONG] = 60;
		
		if (strong_charge <= 20){
			set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, 4);
			set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -16);
		} else if (strong_charge > 20 && strong_charge <= 40){
			set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, 5);
			set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -17);
		} else if (strong_charge > 40){
			set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, 6);
			set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -18);
		}

		if has_rune("M") {
			if(window == 2 && (window_timer == 5)){
				bob_omb_2 = create_hitbox(AT_USTRONG, 1, x-spr_dir*40, y-99);
				bob_omb_3 = create_hitbox(AT_USTRONG, 1, x-spr_dir*90, y-139);
			}
		}

	}
	break;

	case AT_NSPECIAL:
	{
		if (window == 1 && window_timer == 1){
			charge = 0;
			drift_timer = 0;
			total_drift_timer = 0;
			sound_play(sound_get("Drift1"));
			sound_play(sound_get("DriftSteer"));
		}

		//setting max speed
		
		if ((spr_dir == 1 && !right_pressed) || (spr_dir == -1 && !left_pressed)){
			if (window < 6 || window == 12 || window == 13){
				max_speed = 2;
			}

			if (window >= 6 || window > 13){
				max_speed = 1;
			}	
		}

		if ((spr_dir == 1 && right_pressed) || (spr_dir == -1 && left_pressed)){
			if (window < 6 || window == 12 || window == 13){
				max_speed = 3;
			}

			if (window >= 6 || window > 13){
				max_speed = 2;
			}	
		}

		//always accelerating

		if (spr_dir == 1){
			if (hsp < max_speed){
				hsp = max_speed;
			}
		} else {
			if (hsp > (max_speed*(-1))){
			hsp = max_speed*(-1);
			}
		}

		//starting variables


		if (window > 1){
			total_drift_timer++;
			drift_timer++;
		}

		if (window == 2 && window_timer == 1 && charge = 0){
			charge = 1;
		}

		//fixing loops

		if ((window < 10 && window > 2) || (window < 16 && window > 11)){
			if(window_timer == 6){
				window_timer = 0;
			}

		}

		//turning

		drift_increment = 5;
	
		if ((drift_timer > 4 && left_down && spr_dir == 1)||(drift_timer > 6 && right_down && spr_dir == -1)){
			if (window == 2){
				window = 4;
				window_timer = 0;
				drift_timer = 0;
				total_drift_timer = total_drift_timer + drift_increment;
			}
			if (window == 4 && window_timer > 0){
				window = 6;
				window_timer = 0;
				drift_timer = 0;
				total_drift_timer = total_drift_timer + drift_increment;
			}
			if (window == 6 && window_timer > 0){
				window = 8;
				window_timer = 0;
				drift_timer = 0;
				total_drift_timer = total_drift_timer + drift_increment;
			}
			if (window == 3 && window_timer > 0){
				window = 5;
				window_timer = 0;
				drift_timer = 0;
				total_drift_timer = total_drift_timer + drift_increment;
			}
			if (window == 5 && window_timer > 0){
				window = 7;
				window_timer = 0;
				drift_timer = 0;
				total_drift_timer = total_drift_timer + drift_increment;
			}
			if (window == 7 && window_timer > 0){
				window = 9;
				window_timer = 0;
				drift_timer = 0;
				total_drift_timer = total_drift_timer + drift_increment;
			}

			if (window == 12 && window_timer > 0){
				window = 13;
				window_timer = 0;
				drift_timer = 0;
				total_drift_timer = total_drift_timer + drift_increment;
			}

			if (window == 13 && window_timer > 0){
				window = 14;
				window_timer = 0;
				drift_timer = 0;
				total_drift_timer = total_drift_timer + drift_increment;
			}

			if (window == 14 && window_timer > 0){
				window = 15;
				window_timer = 0;
				drift_timer = 0;
				total_drift_timer = total_drift_timer + drift_increment;
			}

		}

		//charging blue to orange

		if (total_drift_timer >= 50 && total_drift_timer < 100){

			charge = 2;
			if (window == 2){
				window = 3;
				window_timer = 0;
				sound_stop(sound_get("Drift1"));
				sound_play(sound_get("Drift2"));
			} else if (window == 4){
				window = 5;
				window_timer = 0;
				sound_stop(sound_get("Drift1"));
				sound_play(sound_get("Drift2"));
			} else if (window == 6){
				window = 7;
				window_timer = 0;
				sound_stop(sound_get("Drift1"));
				sound_play(sound_get("Drift2"));
			} else if (window == 8){
				window = 9;
				window_timer = 0;
				sound_stop(sound_get("Drift1"));
				sound_play(sound_get("Drift2"));
			}
		}

		//charging orange to purple

		if (total_drift_timer >= 100){

			charge = 3;
			if (window == 3){
				window = 12;
				window_timer = 0;
				sound_stop(sound_get("Drift2"));
				sound_play(sound_get("Drift3"));
			} else if (window == 5){
				window = 13;
				window_timer = 0;
				sound_stop(sound_get("Drift2"));
				sound_play(sound_get("Drift3"));
			} else if (window == 7){
				window = 14;
				window_timer = 0;
				sound_stop(sound_get("Drift2"));
				sound_play(sound_get("Drift3"));
			} else if (window == 9){
				window = 15;
				window_timer = 0;
				sound_stop(sound_get("Drift2"));
				sound_play(sound_get("Drift3"));
			}
		}

		// releasing charge

		if ((window == 8) && (!special_down || drift_timer >= 120)){
			charge = 0;
			drift_timer = 0;
			total_drift_timer = 0;
			spr_dir = spr_dir*-1
			sound_stop(sound_get("Drift1"));
			sound_stop(sound_get("DriftSteer"));
			window = 10;
			spawn_base_dust( x-spr_dir*22, y, "dash_start");
			spawn_base_dust( x-spr_dir*30, y-30, "boost", 0);
			window_timer = 0;
		}

		if ((window == 9) && (!special_down || drift_timer >= 120)){
			charge = 0;
			drift_timer = 0;
			total_drift_timer = 0;
			spr_dir = spr_dir*-1
			sound_stop(sound_get("Drift2"));
			sound_stop(sound_get("DriftSteer"));
			window = 11;
			spawn_hit_fx( x-spr_dir*30, y-30, sonic_boom);
			spawn_base_dust( x-spr_dir*22, y, "dash_start");
			spawn_base_dust( x-spr_dir*30, y-30, "boost", 0);
			window_timer = 0;
		}

		if ((window == 15) && (!special_down || drift_timer >= 120)){
			charge = 0;
			drift_timer = 0;
			total_drift_timer = 0;
			spr_dir = spr_dir*-1
			sound_stop(sound_get("Drift3"));
			sound_stop(sound_get("DriftSteer"));
			window = 16;
			spawn_base_dust( x-spr_dir*22, y, "dash_start");
			spawn_hit_fx( x-spr_dir*26, y-30, sonic_boom);
			spawn_hit_fx( x-spr_dir*34, y-30, sonic_boom);
			spawn_base_dust( x-spr_dir*30, y-30, "boost", 0);
			window_timer = 0;
		}

		if (window == 10 || window == 11 || window == 16){
			if (attack_pressed || jump_pressed || down_stick_pressed || up_stick_pressed || left_stick_pressed || right_stick_pressed || shield_pressed ){
				//iasa_script();
			}

			if (window_timer == 0){
				spawn_base_dust( x-spr_dir*22, y, "dash_start")
			}
		}

		//hitbox
		
		if (window != 10 && window != 11 && window != 16){
			if ((total_drift_timer - 1) mod 10 = 0) {
				create_hitbox(AT_NSPECIAL, 3, x, y);
			}
		}

		
	}
	break;

	case AT_NSPECIAL_AIR:
	{
		move_cooldown[AT_NSPECIAL_AIR] = 5;
	}
	break;

	case AT_NSPECIAL_2:
	{

		if (window == 1){
			golden_charge = 1;
			golden_index = 0;
			if (window_timer == 1){
				sound_play(sound_get("GoldenDrift"));
			}
		}

		//returning to idle;
		if (window == 1 || window == 3 || window == 4 || window == 5 || window == 6){

			if (window_timer == 3){
				spawn_base_dust(x-20*spr_dir, y, "dash_start")
				golden_index = golden_index+1;
			}

			if (window != 6 && window != 1 && window_timer == 12) {
				window = 2;
				window_timer = 0;
			}
		}

		//from idle to shroom
		if (window == 2){
			if (special_pressed && !left_down && !right_down){
				if (golden_charge == 1){
					window = 3;
					window_timer = 0;
					golden_charge = 2;
					sound_play(sound_get("Drift1"));
					sound_stop(sound_get("GoldenDrift"));
					sound_play(sound_get("GoldenDrift"));
				} else if (golden_charge == 2){
					window = 4;
					window_timer = 0;
					golden_charge = 3;
					sound_stop(sound_get("Drift1"));
					sound_play(sound_get("Drift2"));
					sound_stop(sound_get("GoldenDrift"));
					sound_play(sound_get("GoldenDrift"));
				} else if (golden_charge == 3){
					window = 5;
					window_timer = 0; 
					golden_charge = 4;
					sound_stop(sound_get("Drift1"));
					sound_stop(sound_get("Drift2"));
					sound_play(sound_get("Drift3"));
					sound_stop(sound_get("GoldenDrift"));
					sound_play(sound_get("GoldenDrift"));
				} else if (golden_charge == 4){
					sound_stop(sound_get("Drift1"));
					sound_stop(sound_get("Drift2"));
					sound_stop(sound_get("Drift3"));
					sound_stop(sound_get("GoldenDrift"));
					window = 6;
					window_timer = 0;
					golden_charge = 5;
				}
			}

			if (window_timer == 20 && golden_index < 3){
				golden_index = golden_index+1;
				window_timer = 0;
			}
		}

		//dash
		if ((window == 6 && window_timer == 6) || (window == 2 && special_pressed && (right_down || left_down)) || (window == 2 && window_timer == 20 && golden_index >= 3) || (window == 2 && golden_index == 4) ||  (window == 2 && attack_pressed)){
			spawn_base_dust( x-spr_dir*26, y, "dash_start")
			spawn_base_dust( x-spr_dir*30, y-30, "boost", 0)
			attack = AT_EXTRA_1;
			window = 1;
			window_timer = 0;
			hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);

			if(golden_charge == 2){
				spawn_hit_fx( x-spr_dir*30, y-30, sonic_boom);
			}

			if(golden_charge == 3){
				spawn_hit_fx( x-spr_dir*26, y-30, sonic_boom);
				spawn_hit_fx( x-spr_dir*34, y-30, sonic_boom);		
				spawn_base_dust( x-spr_dir*30, y-30, "boost", 0)
			}


			if(golden_charge == 4){
				spawn_hit_fx( x-spr_dir*26, y-30, sonic_boom);
				spawn_hit_fx( x-spr_dir*30, y-30, sonic_boom);
				spawn_hit_fx( x-spr_dir*34, y-30, sonic_boom);		
				spawn_base_dust( x-spr_dir*30, y-30, "boost", 0)
			}



			if(golden_charge == 5){
				spawn_hit_fx( x-spr_dir*26, y-30, sonic_boom);
				spawn_hit_fx( x-spr_dir*30, y-30, sonic_boom);
				spawn_hit_fx( x-spr_dir*34, y-30, sonic_boom);		
				spawn_base_dust( x-spr_dir*30, y-30, "boost", 0)
			}
		}


		//setting extra stuff
		if(golden_charge == 1){
			set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAME_START, 8);
			set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED, 13);
			set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 12);
			set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 7);
			set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 8);
			set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 5);
		} else
		if(golden_charge == 2){
			set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAME_START, 16);
			set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED, 16);
			set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 13);
			set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 8);
			set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 9);
			set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 5);
		} else
		if(golden_charge == 3){
			set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAME_START, 24);
			set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED, 19);
			set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 15);
			set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 9);
			set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 10);
			set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 6);
		} else
		if(golden_charge == 4){
			set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAME_START, 32);
			set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED, 22);
			set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 17);
			set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 10);
			set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 11);
			set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 7);
		} else
		if(golden_charge == 5){
			set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAME_START, 32);
			set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED, 25);
			set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 19);
			set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 11);
			set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 12);
			set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 8);
		}
	}
	break;


	case AT_EXTRA_1:
	{
		if(window_timer > 4){
			clear_button_buffer(PC_SPECIAL_PRESSED);
			iasa_script();
		}

		
	}
	break;


	case AT_FSPECIAL:
	{

		if (window == 1){
			if (window_timer == 6){
				spawn_base_dust( x-spr_dir*22, y, "dash_start")
				spawn_hit_fx( x-spr_dir*30, y-30, sonic_boom);
				spawn_base_dust( x-spr_dir*30, y-30, "boost", 0)
			}
		}
		if (window == 3 && !was_parried){
			if(window_timer == 14){
				set_state(PS_DASH);
			}
			if(window_timer > 10 && up_down && special_pressed){
				attack_end();
				attack = AT_USPECIAL;
			}
			if(window_timer > 10 && !up_down && !down_down && special_pressed && window_timer > 5 && !free){
				attack_end();
				attack = AT_NSPECIAL;
				window = 1;
				window_timer = 0;
			}
		
		}

		move_cooldown[AT_FSPECIAL] = 60;

	}
	break;

	case AT_FSPECIAL_AIR:
	{
		can_fast_fall = false;

		if (window == 2 && window_timer < 16){
			soft_armor = 8;
		} else soft_armor = 0;

		if (window == 3 && window_timer == 1){
			sound_stop(sound_get("BulletStart"));
		}

		if has_rune("D") {
			set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 24);
			set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
			set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_LIFETIME, 24);
		}
	}
	break;

	case AT_USPECIAL:
	{
		if has_rune("C") {
			set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED, 13);
			set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, -13);
		}
		
		can_fast_fall = false;
		can_wall_jump = true;
		if (window == 1){
			if (window_timer == 1){
				ramp_start = 1;
				ramp_timer = 0;
				uspecial_x = x;
				uspecial_y = y;
				if (spr_dir == 1) {
					ramp_spr_dir = 1;
				} else ramp_spr_dir = -1;
			}

			if (attack_pressed && free) {

				if (next_trick == 1){
					set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
					set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
					set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
					next_trick = 2;
				} else 	if (next_trick == 2){
					set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAME_START, 9);
					set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 11);
					set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 15);
					next_trick = 3;
				} else if (next_trick == 3){
					set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAME_START, 18);
					set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 20);
					set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 24);
					next_trick = 1;
				}

				attack = AT_NAIR;
				hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
				window_timer = 0;
			}
		}

		//Locking double jump

		if (window = 1 && window_timer = 1){
			djump_lock_start = 1;
			djump_lock_timer = djump_lock_timer_default;
		}
	}
	break;

	case AT_USPECIAL_2:
	{
		can_wall_jump = true;
		can_fast_fall = false;

		//wind and platform
		if (window == 1 || window == 5){
			if (window_timer == 15){
				sound_play(sound_get("GliderWind"));
				platform = instance_create(x-spr_dir*17, y-84,"obj_article_platform");
			}
		} else if (window != 4 && window_timer == 1){
			sound_stop(sound_get("GliderWind"));
		}

		if (window == 2){
		
			//plat

			//cancel to pratfall

			if (shield_pressed || (up_down && special_pressed)){
				window = 6;
				window_timer = 0;
			}
	

			if (spr_dir == 1 && (left_pressed || left_down)) {
				spr_dir = -1;
				window = 3;
				window_timer = 0;
			} else if (spr_dir == -1 && (right_pressed || right_down)) {
				spr_dir = 1;
				window = 3;
				window_timer = 0;
			}

			//cancel to fspecial

			if(spr_dir == 1 && (right_down && special_pressed)){
				attack = AT_FSPECIAL_AIR;
				window = 1;
				window_timer = 0;
				hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
			}

			if(spr_dir == -1 && (left_down && special_pressed)){
				attack = AT_FSPECIAL_AIR;
				window = 1;
				window_timer = 0;
				hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
			}

			//cancel to dair

			if((down_down && attack_pressed) || (down_stick_pressed)){
				attack = AT_DAIR;
				window = 1;
				window_timer = 0;
				hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
			}

			//fire ball

			if (!up_down && special_pressed){
				window = 4;
				window_timer = 0;
			}

			if (window == 4){
				
			}

			//no stalling

			if (abs(hsp) < 4){
				set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, 1);
				set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_VSPEED, 1);
			} else {
				set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, 0.5);
				set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_VSPEED, 0.5);
			}
		}

		//revert fire ball

		if (window == 4 && window_timer == 28){
			window = 2;
			window_timer = 0;
			}

		//turning vsp
	
		if (window == 2 || window == 4){
			if (abs(hsp) < 2){
				set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED, 2.6);
			} else if (abs(hsp) < 4){
				set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED, 1.9);
			} else if (abs(hsp) < 6){
				set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED, 1.2);
			} else set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED, 0.5);
		}

		//turning

		if (window == 3){
			clear_button_buffer(left_pressed);
			clear_button_buffer(right_pressed);

			if (window_timer == 10){
				platform = instance_create(x-spr_dir*17, y-84,"obj_article_platform");
				window = 2;
				window_timer = 0;
			}
		}

		if (!free){
			window = 20;
		}

		if (window == 5 && window_timer == 10){
			platform = instance_create(x-spr_dir*17, y-84,"obj_article_platform");
			window = 2;
			window_timer = 0;
		}
	}
	break;

	case AT_DSPECIAL:
	{
		can_fast_fall = false;

		if (window == 1){
			if (window_timer == 1){
				if (banana_present == 1){
					window = 2;
				}
			}

			if (window_timer == 15){
				banana_present = 1;
				banana = instance_create(x-spr_dir*50,y+2,"obj_article1");
			}
		}

		if (window == 2){
			if (window_timer == 10){
				//new state;
				with(asset_get("obj_article1")){
					state = 1;
				}
			}
		}


	}
	break;

	case AT_TAUNT:
	{
		hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);

		if has_rune("O") {
			set_num_hitboxes(AT_TAUNT, 1);
		}

		if (window == 2){

			if (window_timer == 1){
				sound_play(sound_get("LongHorn"));
			}

			if (!taunt_down && window_timer >= 2){
				window = 3;
				window_timer = 0;
			}

			if (window_timer == 300){
				window_timer = 2;
				taunt_loop = 1;
			}

			if (window_timer > 15 && taunt_loop == 0){
				horn_end = 1;
			}

			if ((window_timer > 0 && window_timer <= 15 )|| window_timer > 35){
				horn_end = 0;
			}
		}


		if (window = 3 && window_timer == 3) {
			set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));	
			set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 9);
			set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 300);

			if (abs(hsp) > 8 && !free) {
				set_state(PS_DASH);
			}
		}

		if (window == 1){
			taunt_loop = 0;
			if (!free){
				air_taunt = 0;
			}

			if (window_timer == 5){
				sound_stop(sound_get("LongHorn"));
			}
		}

		if (window == 3 && window_timer == 1){
			if (horn_end == 1){
				sound_stop(sound_get("LongHorn"));
				sound_play (sound_get("HornEnd"));
			}

		}

		//preventing you from sliding

		if (air_taunt == 1 && !free){
			set_state(PS_LAND);
			hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
		}
	}
	break;

	case 49:
	{
		if (window_timer == 20){
			starman_start = 1;
			starman_timer = 0;
		}
	}
	break;

}


//Dust thing

#define spawn_base_dust // written by supersonic
/// @param {undefined} x
/// @param {undefined} y
/// @param {undefined} name
/// @param {undefined} dir = 0
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir; if (argument_count > 3) dir = argument[3]; else dir = 0;

switch (name) {
	default: 
	case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
	case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
	case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
	case "doublejump": 
	case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
	case "boost": dlen = 21; dfx = 2; dfg = 2624;  dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
	case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
	case "land": dlen = 24; dfx = 0; dfg = 2620; break;
	case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
	case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
	case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;