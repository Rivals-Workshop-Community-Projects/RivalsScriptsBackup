//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL_AIR || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack != AT_NSPECIAL){
	if (meterLock <= 1) {
	set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecialstart"));

	}
	if (meterLock >= 2 && meterLock < 4) {
	set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecialstartE"));

	}
}

if (attack == AT_NSPECIAL){

	// Minion will slowly travel towards Siren
	if (window == 2 && instance_exists(obj_article1)){
		if (!Minion.got_hit){ // Checks to see if the Minion has been hit yet
			Minion.trail = true;
		}
	}
	
	// After 10 frames the Minion will travel up or down
	if (window == 2 && window_timer == 10 && instance_exists(obj_article1)){
		Minion.trailVertical = true;
	}
	
	// Makes Siren's Nspecial fairly safe but also to help avoid some weird bugginess with this attack
	if (nTrigger != 1 && window != 3){
		can_jump = true;
		can_shield = true;
	}

	if (window == 3){
		// Assigns visual sprites for this attack
		if (meterLock <= 1) {
			set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecialhit"));
		}
		if (meterLock >= 2 && meterLock < 4) {
			set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecialhitE"));

		}
		if (meterLock >= 4) {
			set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecialhitX"));
		}
		
		// Creates a Minion based off how much charge exists
		if (instance_exists(obj_article1)){
			if (meterLock == 2 && Minion.init == 1){ // Sumon Mini Minion
				if (window_timer == 1){
					Minion = instance_create(x, y - 150, "obj_article1");
					Minion.player_id = id;
					Minion.player = player;
					Minion.init = 2;
				}
			}
			if (meterLock == 3 && Minion.init <= 2){ // Summon Large Minion
				if (window_timer == 1){
					Minion = instance_create(x, y - 150, "obj_article1");
					Minion.player_id = id;
					Minion.player = player;
					Minion.init = 3;
				}
			}
		}
		if(!instance_exists(obj_article1)){
			if (meterLock == 1){ // Sumon Mini Minion
				if (window_timer == 1){
					Minion = instance_create(x, y - 150, "obj_article1");
					Minion.player_id = id;
					Minion.player = player;
					Minion.init = 1;
				}
			}
			if (meterLock == 2){ // Sumon Mini Minion
				if (window_timer == 1){
					Minion = instance_create(x, y - 150, "obj_article1");
					Minion.player_id = id;
					Minion.player = player;
					Minion.init = 2;
				}
			}
			if (meterLock == 3){ // Summon Large Minion
				if (window_timer == 1){
					Minion = instance_create(x, y - 150, "obj_article1");
					Minion.player_id = id;
					Minion.player = player;
					Minion.init = 3;
				}
			}
		}
	}
	
	// Deplets meter after pressing special
	if (window == 3 && ncharge > 29 && ncharge < 120 && nTrigger == 0 && window_timer >= 5){
		meterLock = 0;
		ncharge = 0;
	}

	// Turns nTrigger on which slowly depletes meter in update.gml
	if (ncharge >= 120 && window == 3){
		meterLock = 0;
		nTrigger = 1;
	}
	
	// Ends attack if meter isn't high enough
	if (window == 3){
		if (ncharge <= 29 and window_timer == 30){
			window = 5;
		}
	}
	
	// Sets initial speed to 0
	if (window == 2 && fTrigger == 1){
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HSPEED, 0);
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_VSPEED, 0);
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 0);
	}
	
	if (window == 2){
		// Play error sound if Minion doesn't exist
		if (mcharge == 1 && special_pressed && joy_pad_idle && ncharge <= 120){
			set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CANCEL_TYPE, 1);
			sound_play(asset_get("mfx_back"));
			window = 5;
		}
		
		if (instance_exists(obj_article1)){
			if (special_pressed && joy_pad_idle && Minion.init == 1 && ncharge < 60){
				set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CANCEL_TYPE, 1);
				sound_play(asset_get("mfx_back"));
				window = 5;
				set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CANCEL_TYPE, 2);
				Minion.trailVertical = false;
				Minion.follow = false;
				Minion.trail = false;
			}
			if (special_pressed && joy_pad_idle && Minion.init == 2 && ncharge < 90){
				set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CANCEL_TYPE, 1);
				sound_play(asset_get("mfx_back"));
				window = 5;
				set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CANCEL_TYPE, 2);
				Minion.trailVertical = false;
				Minion.follow = false;
				Minion.trail = false;
			}
			if (special_pressed && joy_pad_idle && Minion.init == 3 && ncharge < 120){
				set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CANCEL_TYPE, 1);
				sound_play(asset_get("mfx_back"));
				window = 5;
				set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CANCEL_TYPE, 2);
				Minion.trailVertical = false;
				Minion.follow = false;
				Minion.trail = false;
			}
		}
		
		// Changes visual of attack
		if (meterLock <= 1) {
			set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
		}
		
		if (meterLock >= 2 && meterLock < 4) {
			set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecialE"));
		}

		// Increases charge during first two stages of meter
		if (ncharge < 120 && meterLock < 2){
			ncharge = ncharge + 0.15;
		}
		
		// Increases charge a little less during third stage of meter
		if (ncharge < 120 && meterLock = 2){
			ncharge = ncharge + 0.10;
		}

		// Increases charge a significantly less during final stage of meter		
		if (ncharge < 120 && meterLock = 3){
			ncharge = ncharge + 0.05;
		}
		
		// Activates Laser is meter is fully charged
		if (ncharge >= 120 && state_timer > 20 || state_timer < 10 ){
			window = 5;
		}
		
		// During charging can up special
		if (up_down == true && special_pressed == true){
			set_attack(AT_USPECIAL);
		}

		// During charging pressing down activates super/overcharge
		if (down_down == true && special_pressed == false && ncharge >= 60 && stunTrigger == 0 && (fTrigger != 1 || !free)){
			set_attack(AT_NSPECIAL);
			window = 4;
			sound_play(asset_get("sfx_holy_lightning"));
		}
		
		// During charging in the air can aerial down special
		if (down_down == true && special_pressed == true && free == true){
			set_attack(AT_DSPECIAL_AIR);
		}
		
		// During charging can down special		
		if (down_down == true && special_pressed == true && free == false){
			set_attack(AT_DSPECIAL);
		}
		
		//Rolls / Airdodges Right
		if (right_down == true && ncharge < 120){
			shield_pressed = true;
		}
		
		//Rolls / Airdodges Left
		if (left_down == true && ncharge < 120){
			shield_pressed = true;
		}

	}	
	
	// Super/Overcharge activates
	if (window == 4){
		if (window_timer >= 29 && ncharge < 120){
			stunTrigger = 2;
		}
		
		if (window_timer >= 29 && ncharge >= 120){
			stunTrigger = 3;
		}
		
		if (down_down == true && special_pressed == true && free && ncharge > 0){
			set_attack(AT_DSPECIAL_AIR);
		}
		
		if (down_down == true && special_pressed == true && !free && ncharge > 0){
			set_attack(AT_DSPECIAL);
		}
	}
	can_fast_fall = false;	
}

if (attack == AT_FSPECIAL_AIR){
	can_wall_jump = true;
	fTrigger = 1;
    if (window == 2){
		can_special = true;
		can_attack = true;
    }
    can_fast_fall = false;
	if (has_hit_player){
		can_jump = true;
	}
}

if (attack == AT_DSPECIAL || attack == AT_DSPECIAL_AIR ){

	if (window == 2 && attack == AT_DSPECIAL_AIR && window_timer = 1 && stunTrigger != 3){

		if (morePower >= 1 && Deplete != 1){
			create_hitbox(AT_EXTRA_2, 1, x, y - 30);
			create_hitbox(AT_EXTRA_2, 2, x, y - 30);
			create_hitbox(AT_EXTRA_2, 3, x, y - 30);
			create_hitbox(AT_EXTRA_2, 4, x, y - 30);
			create_hitbox(AT_EXTRA_2, 5, x, y - 30);
			create_hitbox(AT_EXTRA_2, 6, x, y - 30);
		}
		if (morePower >= 2 && stunTrigger != 1){
			create_hitbox(AT_EXTRA_2, 7, x, y - 30);
			create_hitbox(AT_EXTRA_2, 8, x, y - 30);		
		}
		if (morePower >= 3 && stunTrigger < 1){
			create_hitbox(AT_EXTRA_2, 9, x - 10	, y - 10);		
		}
	}
	
	if (window == 2 && attack == AT_DSPECIAL && window_timer = 1 && stunTrigger != 3){
	
		if (morePower >= 1 && Deplete != 1){
			create_hitbox(AT_EXTRA_2, 11, x, y - 30);
			create_hitbox(AT_EXTRA_2, 12, x, y - 30);
			create_hitbox(AT_EXTRA_2, 13, x, y - 30);
			create_hitbox(AT_EXTRA_2, 14, x, y - 30);
		}
		if (morePower >= 2 && Deplete != 1){
			create_hitbox(AT_EXTRA_2, 15, x, y - 30);
			create_hitbox(AT_EXTRA_2, 16, x, y - 30);
		}
		if (morePower >= 3){
			create_hitbox(AT_EXTRA_2, 17, x - 10, y - 30);		
		}
	}
	
	if (window == 3 && dcharge >= 3){
		dcharge = 0;
	}
	
	if (window == 2 && stunTrigger >= 2){
		Deplete = 1;
	}
		
	if (window == 3 && stunTrigger >= 2){
		stunTrigger = 1;
	}
	
	can_fast_fall = false;
	move_cooldown[AT_DSPECIAL] = 5;
	move_cooldown[AT_DSPECIAL_AIR] = 5;
	
	if (morePower >= 2){
	move_cooldown[AT_DSPECIAL] = 50;	
	move_cooldown[AT_DSPECIAL_AIR] = 50;
	}
	
	if (morePower >= 3){
	move_cooldown[AT_DSPECIAL] = 75;	
	move_cooldown[AT_DSPECIAL_AIR] = 75;
	}
	
	if (window == 1){
		if (window_timer == 1){
			if (morePower == 0 && ncharge > 1){
				ncharge = ncharge - 1;
			}
			if (morePower == 0 && ncharge <= 1){
				take_damage(player, -1, 2);
			}
		
			if (morePower == 1 && ncharge > 32){
				ncharge = ncharge - 2;
			}
			if (morePower == 1 && ncharge <= 32){
				take_damage(player, -1, 2);
			}

			if (morePower == 2 && ncharge > 63){
				ncharge = ncharge - 3;
			}
			if (morePower == 2 && ncharge <= 63){
				take_damage(player, -1, 3);
			}
		
			if (morePower == 3 && ncharge > 95){
				ncharge = ncharge - 5;
			}
			if (morePower == 3 && ncharge <= 95){
				take_damage(player, -1, 5);
			}
			
			if (morePower == 4 && ncharge >= 120){
				take_damage(player, -1, 10);
			}
		}
	}

}

if (attack == AT_USPECIAL){

	can_wall_jump = true;
	if (window == 3 && ucharge >= 3){
		ucharge = 0;
	}

	if (window == 3 && stunTrigger >= 2 && window_timer == 15){
		window = 2;
		sound_play(asset_get("sfx_swipe_weak2"));		
		stunTrigger = 1;
		Deplete = 1;
	}
		
	if (((window == 2 || window == 3) && window_timer == 1) || stunTrigger >= 2 && state_timer == 35){
		if (fTrigger == 1){
			create_hitbox(AT_USPECIAL, 4, x, y);
			create_hitbox(AT_USPECIAL, 5, x, y);
		}
		if (morePower >= 1){
			create_hitbox(AT_USPECIAL, 8, x, y);
			create_hitbox(AT_USPECIAL, 9, x, y);
			create_hitbox(AT_USPECIAL, 10, x, y);
			create_hitbox(AT_USPECIAL, 11, x, y);
			create_hitbox(AT_USPECIAL, 12, x, y);
			create_hitbox(AT_USPECIAL, 13, x, y);
		}
		if (morePower >= 2){
			create_hitbox(AT_USPECIAL, 14, x, y);
			create_hitbox(AT_USPECIAL, 15, x, y);
		}
		if (morePower >= 3){
			create_hitbox(AT_USPECIAL, 16, x, y);
		}
	}
	
	can_fast_fall = false;
	
	if (window == 1){
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
		if (window_timer == 1){
			if (morePower == 0 && ncharge > 1){
				ncharge = ncharge - 1;
			}
			if (morePower == 0 && ncharge <= 1){
				take_damage(player, -1, 2);
			}
		
			if (morePower == 1 && ncharge > 32){
				ncharge = ncharge - 2;
			}
			if (morePower == 1 && ncharge <= 32){
				take_damage(player, -1, 2);
			}

			if (morePower == 2 && ncharge > 63){
				ncharge = ncharge - 3;
			}
			if (morePower == 2 && ncharge <= 63){
				take_damage(player, -1, 3);
			}
		
			if (morePower == 3 && ncharge > 95){
				ncharge = ncharge - 5;
			}
			if (morePower == 3 && ncharge <= 95){
				take_damage(player, -1, 5);
			}
			
			if (morePower == 4 && ncharge >= 120){
				take_damage(player, -1, 10);
			}
		}
	}
}

if (attack == AT_FSPECIAL_2 || attack == AT_FSPECIAL){
	if (state_timer == 1 && instance_exists(obj_article1)){
		Minion.follow = true;
	}
	
	if (window == 2 && attack == AT_FSPECIAL_2 && window_timer = 1){
			create_hitbox(AT_FSPECIAL_2, 2, x, y - 30);
			create_hitbox(AT_FSPECIAL_2, 6, x, y - 30);
			create_hitbox(AT_FSPECIAL_2, 7, x, y - 30);
			create_hitbox(AT_FSPECIAL_2, 8, x, y - 30);		
		if (morePower >= 1){
			create_hitbox(AT_FSPECIAL_2, 3, x, y - 30);
			create_hitbox(AT_FSPECIAL_2, 4, x, y - 30);
			create_hitbox(AT_FSPECIAL_2, 5, x, y - 30);
			create_hitbox(AT_FSPECIAL_2, 11, x, y - 30);
		}
		if (morePower >= 2){
			create_hitbox(AT_FSPECIAL_2, 9, x, y - 30);
			create_hitbox(AT_FSPECIAL_2, 10, x, y - 30);		
			create_hitbox(AT_FSPECIAL_2, 12, x, y - 30);		
		}
		if (morePower >= 3){
			create_hitbox(AT_FSPECIAL_2, 13, x, y - 30);	
			create_hitbox(AT_FSPECIAL_2, 14, x, y - 30);		
		}
	}
	
	if (window == 2 && attack == AT_FSPECIAL && window_timer = 1){
			create_hitbox(AT_FSPECIAL, 2, x, y - 30);
			create_hitbox(AT_FSPECIAL, 3, x, y - 30);
			create_hitbox(AT_FSPECIAL, 6, x, y - 30);

		if (morePower >= 1){
			create_hitbox(AT_FSPECIAL, 4, x, y - 30);	
			create_hitbox(AT_FSPECIAL, 5, x, y - 30);
			create_hitbox(AT_FSPECIAL, 7, x, y - 30);	
			create_hitbox(AT_FSPECIAL, 8, x, y - 30);
			create_hitbox(AT_FSPECIAL, 11, x, y - 30);
		}
		if (morePower >= 2){
			create_hitbox(AT_FSPECIAL, 9, x, y - 30);
			create_hitbox(AT_FSPECIAL, 10, x, y - 30);		
			create_hitbox(AT_FSPECIAL, 12, x, y - 30);		
		}
		if (morePower >= 3){
			create_hitbox(AT_FSPECIAL, 13, x, y - 30);	
			create_hitbox(AT_FSPECIAL, 14, x, y - 30);		
		}
	}
	
	can_wall_jump = true;

	if (morePower >= 2){
	move_cooldown[AT_FSPECIAL] = 50;	
	}
	
	if (morePower >= 3){
	move_cooldown[AT_FSPECIAL] = 75;	
	}
	
	if (window == 1){
		if (window_timer == 1){
			if (morePower == 0 && ncharge > 1){
				ncharge = ncharge - 1;
			}
			if (morePower == 0 && ncharge <= 1){
				take_damage(player, -1, 2);
			}
		
			if (morePower == 1 && ncharge > 32){
				ncharge = ncharge - 2;
			}
			if (morePower == 1 && ncharge <= 32){
				take_damage(player, -1, 2);
			}

			if (morePower == 2 && ncharge > 63){
				ncharge = ncharge - 3;
			}
			if (morePower == 2 && ncharge <= 63){
				take_damage(player, -1, 3);
			}
		
			if (morePower == 3 && ncharge > 95){
				ncharge = ncharge - 5;
			}
			if (morePower == 3 && ncharge <= 95){
				take_damage(player, -1, 5);
			}
			
			if (morePower == 4 && ncharge >= 120){
				take_damage(player, -1, 10);
			}
		}
	}
}

if(attack == AT_DATTACK){

// Removing this for 1.4 Patch
//	if(state_timer == 20){
//		if (spr_dir == -1){
//			spr_dir *= -1;
//			hsp = -5;
//		}
//		
//		else{
//			spr_dir *= -1;
//			hsp = 5;
//		}
//	}
	
	if (window == 3 && !was_parried){
		if (has_hit_player){
			can_attack = true;
			can_jump = true;
		}
	}
}
