//attack_update

// Aerial Up Special (As of right now I have no clue how I'm going to animate this lol)
if (attack == AT_USPECIAL_2){
	can_wall_jump = true;

	if (window == 3){
		move_cooldown[AT_USPECIAL_2] = 9999;
		can_special = true;
		can_attack = true;
	}
}

// Down Air Cooldown (Reduces Spamming but also infinite flight from a single move, I want to make you work for your infinite aerial time)
if (attack == AT_DAIR){
	move_cooldown[AT_DAIR] = 9999;
}

//Fair and Bair work the same / Fairy Wind
if (attack == AT_FAIR){
	if (has_hit_player){
		can_special = true;
		can_attack = true;
	}
	
	if (window == 1){
		move_cooldown[AT_FAIR] = 25;
		move_cooldown[AT_BAIR] = 25;
	}
}

if (attack == AT_BAIR){
	if (has_hit_player){
		can_special = true;
		can_attack = true;
	}
	
	if (window == 1){
		move_cooldown[AT_FAIR] = 25;
		move_cooldown[AT_BAIR] = 25;
	}
}

// Icy Wind - Summons Wind Pillar while on the ground - Constantly pushes anyone in it upwards and increases horizontal speed
if (attack == AT_USPECIAL){
	if (state_timer == 9 && !free){

		if (spr_dir == -1){
			var pillar = instance_create( x - 26, y - 60, "obj_article3");
			pillar.player_id = id;
			pillar.player = player;
		}
		
		if (spr_dir == 1){
			var pillar = instance_create( x - 26, y - 60, "obj_article3");
			pillar.player_id = id;
			pillar.player = player;
		}
		move_cooldown[AT_USPECIAL] = 600;
	}
}

// Substitute - Summons a Substitute 
if (attack == AT_DSPECIAL || attack == AT_DSPECIAL_2){
	if (state_timer == 1){
		spawn_hit_fx( x, y, 13);
		if (spr_dir == -1){
			Substitute = instance_create( x, y, "obj_article1");
			Substitute.player_id = id;
			Substitute.player = player;
		}
		
		if (spr_dir == 1){
			Substitute = instance_create( x, y, "obj_article1");
			Substitute.player_id = id;
			Substitute.player = player;
		}
		move_cooldown[AT_DSPECIAL] = 240;
		move_cooldown[AT_DSPECIAL_2] = 240;
	}
}

// Powder Snow - Summons a Cloud that creates snow. Deals damage and slows opponents under it
if (attack == AT_FSPECIAL){
	if (window == 1){
	set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 0);
	set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, 0);
	move_cooldown[AT_FSPECIAL] = 120;
	}

	if (state_timer == 13 && free){
			
		if (spr_dir == -1){
			instance_create( x - 25, y - 30, "obj_article_platform");
		}
		
		if (spr_dir == 1){
			instance_create( x + 75, y - 30, "obj_article_platform");
		}
		
	}

	if (state_timer == 13 && !free){
			
		if (spr_dir == -1){
			instance_create( x + 25, y - 150, "obj_article_platform");
		}
		
		if (spr_dir == 1){
			instance_create( x + 25, y - 150, "obj_article_platform");
		}
		
	}
	
	if (window == 2 && free){
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, -5.5);
	}
}

// Rest - can converge into Sleep Talk which randomly does a tilt/jab/dashattack or Snore which creates a big blast around Snom
if (attack == AT_NSPECIAL){

	if (state_timer == 1){
		set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 46);
		set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 14);
		set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 10);
		set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .6);
		set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 12);
		set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .9);
	}
	
	sleepTalk = sleepTalk + 1;
	restTimer = restTimer + 1;
	
	// Heals Snom for 20% if sleeping for the whole time
	if (restTimer == 15){
		take_damage(player, -1, -1);
		restTimer = 0;
	}
	// Randomizes Sleep Talk Timer
	if (sleepTalk >= 6){
		sleepTalk = 1;
	}
	
	// Removes all status effects
	if (burned || marked || bubbled || poison || stuck || wrapped){
		burned = false;
		marked = false;
		bubbled = false;
		poison = false;
		stuck = false;
		wrapped = false;
	}
	
	if (special_pressed && window_timer >= 30){
		attack 	= AT_NSPECIAL_2;
		move_cooldown[AT_NSPECIAL] = 120;
	}
	
	if (attack_pressed && !free && window_timer >= 30){
		
		if (sleepTalk == 1){
			attack = AT_DTILT;
		}
		if (sleepTalk == 2){
			attack = AT_FTILT;
		}
		if (sleepTalk == 3){
			attack = AT_UTILT;
		}
		if (sleepTalk == 4){
			attack = AT_DATTACK;
		}
		if (sleepTalk == 5){
			attack = AT_JAB;
		}
		window = 1;
		state_timer = 1;
		window_timer = 1;
		move_cooldown[AT_NSPECIAL] = 120;
	}

}

// Mirror Coat - The longer charges the longer the shield lasts - reflects all projectiles
if (attack == AT_DSTRONG){
	if (window == 2){
		mirrorLength = mirrorLength + 7;
	}
	
	if (window == 3 && window_timer == 1){
		var mirrorCoat = instance_create(1, 1, "obj_article2");
		mirrorCoat.player_id = id;
		mirrorCoat.player = player;
		mirrorCoat.coat = 1;
		mirrorCoat.coat_initial = mirrorLength;
		move_cooldown[AT_DSTRONG] = mirrorLength;
		mirrorLength = 90;
	}
}

//Jab cooldown
if (attack == AT_JAB){
	if (window == 6){
		move_cooldown[AT_JAB] = 30;
	}
	if (window == 4){
		move_cooldown[AT_JAB] = 15;
	}

}


