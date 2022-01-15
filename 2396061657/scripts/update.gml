// update.gml
// Used for gameplay mechanics
// Runs every frame

set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_DESTROY_EFFECT, can_fireball_destroy);

if (!can_fireball){
	can_fireball_timer++;
	
	if (can_fireball_timer >= 100){
		can_fireball = true;
		can_fireball_timer = 0;
	}
}


if (LoveGained_Timer == 0){
	
	var a_gain = LoveGained div 100
	var b_gain = LoveGained div 10
	
			var digit_1 = noone;
			digit_1 = instance_create(x - 24, y + 20, "obj_article2");
			digit_1.state_timer = 2;
			digit_1.state = 5;
			digit_1.player_id = id;
			digit_1.player = player;
			digit_1.vsp = -2;
			digit_1.sprite_index = sprite_get("callie_num");
			digit_1.image_index = a_gain;
			digit_1.image_speed = 0;
			digit_1.depth = -100;
			
			var digit_2 = noone;
			digit_2 = instance_create(x - 12, y + 20, "obj_article2");
			digit_2.state_timer = 2;
			digit_2.state = 5;
			digit_2.player_id = id;
			digit_2.player = player;
			digit_2.vsp = -2;
			digit_2.sprite_index = sprite_get("callie_num");
			digit_2.image_index = b_gain;
			digit_2.image_speed = 0;
			digit_2.depth = -100;

			var digit_3 = noone;
			digit_3 = instance_create(x, y + 20, "obj_article2");
			digit_3.state_timer = 2;
			digit_3.state = 5;
			digit_3.player_id = id;
			digit_3.player = player;
			digit_3.vsp = -2;
			digit_3.sprite_index = sprite_get("callie_num");
			digit_3.image_index = 0;
			digit_3.image_speed = 0;
			digit_3.depth = -100;
	
			var digit_4 = noone;
			digit_3 = instance_create(x - 36, y + 20, "obj_article2");
			digit_3.state_timer = 2;
			digit_3.state = 5;
			digit_3.player_id = id;
			digit_3.player = player;
			digit_3.vsp = -2;
			digit_3.sprite_index = sprite_get("callie_text");
			digit_3.image_index = 0;
			digit_3.image_speed = 0;
			digit_3.depth = -100;
	LoveGained = 0;
	LoveGained_Timer = 45;
	LoveGained_Visual = false;
}

if (LoveGained_Visual && LoveGained_Timer > 0){
	LoveGained_Timer--;
}

/* 
// Halloween Costume Code
if (!costume_end && (get_player_color(player) == 25 || get_player_color(player) == 19)){
	if (state_timer % 6 == 0) {
		introTimer++;
	}

	if (state != PS_SPAWN && state != PS_IDLE && state != PS_RESPAWN){
		costume_end = true;
	}
}
*/

if (get_training_cpu_action() == CPU_STAND && taunt_pressed && attack == AT_TAUNT) {
	taunt_counter = 140

	if (down_down && DG_chat_num == 0 && !up_down){
		window = 2;
		window_timer = 14;
		DG_chat_num = 1;
	}
	if (up_down && DG_chat_num == 0 && !down_down){
		window = 2;
		window_timer = 14;
		DG_chat_num = 2;
	}
}
else {
	if ((taunt_down  || DG_chat_num >= 1 ) && (up_down || down_down)){
		taunt_counter++;
	}
	else {
		if (!isTaunt){
			DG_chat_num = 0;
		}
		taunt_counter = 0;
	}

	if (taunt_counter == 24){
		if (down_down && DG_chat_num == 0 && !up_down){
			DG_chat_num = 1;
		}
		if (up_down && DG_chat_num == 0 && !down_down){
			DG_chat_num = 2;
		}
	}
}

// Ghost effect for Nthrow
if (attack == AT_NTHROW && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
		
	if (get_gameplay_time() % 2 == 0){
		tsj_x3 = tsj_x2;
		tsj_y3 = tsj_y2;

		tsj_x2 = tsj_x1;
		tsj_y2 = tsj_y1;

		tsj_x1 = x;
		tsj_y1 = y;
	}
	
	tsj_timer++;
}

if (tsj_timer >= 60){
	tsj_x1 = 0;
	tsj_x2 = 0;
	tsj_x3 = 0;
	tsj_y1 = 0;
	tsj_y2 = 0;
	tsj_y3 = 0;
	if (tsj_timer >= 60){
		tsj_timer = 0;
	}
}


// Gives Callie Armor during start up and dash of nspecial
if (attack == AT_DSPECIAL && (window == 1 || window == 5) && !focus_armorbreak){
	focus_attack = true;
}
else {
	focus_attack = false;
}
	
if (taunt_counter == 140){
	isTaunt = true;
	DG_visual_state = 1;
	needsChat = true;
}

// Runs init_shader so Date Girl leggings are the right colors
if (state == PS_SPAWN && state_timer == 1){
	init_shader();
	if (get_player_color( player ) = 13){
		set_victory_portrait(sprite_get("ARportrait"));
		set_victory_sidebar(sprite_get("ARsidebar"));
	}
	else {
		set_victory_portrait(sprite_get("defaultportrait"));
		set_victory_sidebar(sprite_get("defaultsidebar"));	
	}
}

// Checks isFspecial on when Forward Special is used
if ((attack == AT_FSPECIAL && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR || state == PS_HITSTUN) && window == 2) || ((attack == AT_DTHROW || attack == AT_NTHROW || attack == AT_UTHROW || attack == AT_FTHROW) && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR || state == PS_HITSTUN))){
	isFspecial = true;
}
else {
	isFspecial = false;
}

if (should_crumple){

	if (crumple_timer < 3){
		crumple_timer += 0.10;
	}
	
	if (crumple_timer < 7 && crumple_timer > 6){
		crumple_timer += 0.03;
		crumple_alpha -= .03;
	}
	
	if (crumple_timer >= 3 && crumple_timer <= 6) {
		crumple_timer += 0.20;
	}
	
	if (crumple_timer >= 7){
		should_crumple = false;
		crumple_timer = 0;
	}
}
	
if (move_cooldown[AT_DSPECIAL] == 10){
	sound_play(asset_get("sfx_gem_collect"));
}
	
// This is code for Date Girl dialogue that I never removed woops
if (state == PS_IDLE || state == PS_PARRY){
	DG_visual_state = 0;
}

// Fspecial Cooldown (AKA only 2 uses in the air)
if (attack == AT_FSPECIAL && state == PS_ATTACK_AIR && state_timer == 1){
	usedFspecial++;
}

// Sets cooldown when two Fspecials are used
if (usedFspecial == 2){
	move_cooldown[AT_FSPECIAL] = 18;
}

// Resets Fspecial Cooldown when landing
if (!free){
	usedFspecial = 0;
}

// Resets Ribbon Throw Date values
if (attack != AT_NTHROW){

	nthrowFastFall = false;
}


// Fspecial VFX
if (attack == AT_FSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
	if (window == 1 && window_timer == 0){
		fspec_x = x;
		fspec_y = y;
		fspecial_circles = 0;
	}		
	
	if ((window == 2 || (window == 3 && window_timer < 11)) && window_timer % 2 == 0){
		instance_create( x, y - 10 -  random_func( 2, 60, true ), "obj_article2");
	}
	
	if (window <= 2){
		fspecial_circles += .3 * spr_dir;
	}
	
	if (fspec_sparkle_timer == 7){
		fspec_sparkle_timer = 0;
	}
	else {
		fspec_sparkle_timer += .5;
	}
}

// Uspecial VFX
if (attack == AT_USPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && !hitpause){
	if (window >= 2 && window_timer % 3 == 0){
		instance_create( x + ((random_func( 2, 50, true ) - 20) * spr_dir), y - 10 - random_func( 2, 10, true ), "obj_article2");
	}
}

// Dspecial Dash Cancel Effect
if (attack == AT_DSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && !hitpause){
	if (window == 5 && window_timer % 3 == 0){
		instance_create( x, y - 10 -  random_func( 2, 60, true ), "obj_article2");
	}
}

// Creates hearts on the opponent after hitting someone
//if (has_hit_player){
	
	if (HeartPop > 0){
		HeartPop--;
		var heart = noone;
		var HitBox = instance_place( x, y, asset_get("pHitBox"));
		with(HitBox){
			if (player == other.player){
//				with (oPlayer){
					if (player_id.url == CH_KRAGG && player_id.attack == AT_DSPECIAL){ // This is probably irrelevant now since I use  oPlayer instead of pHitBox but idk
						break;
					}
					else {
						heart = instance_create( x , y - 30, "obj_article1");
					}
//				}
			}
		}
		if (heart != noone){
			heart.player_id = id;
			heart.player = player;
			heart.hsp = random_func(5, 6, true);
			heart.vsp = random_func(6, 10, true) * -1;
			if (random_func(0,2,true) == 1){
				heart.hsp = heart.hsp * -1;
			}
		}
	}
//}

/*
// New gotHitFormula
if (got_hitFspecial && !hitpause){
	
	if (LoveMeter > 0){
		var heart = noone;
		if (heart_num < (meter_damage / 2)){
			heart_num++;

			heart = instance_create( x , y - 30, "obj_article1");
		
			heart.player_id = id;
			heart.player = player;
			heart.state = 4;
			heart.state_timer = 2;
			heart.image_alpha = .8;
			heart.hsp = clamp(random_func(5, 7, true), 3, 5);
			heart.vsp = clamp((random_func(6, 5, true) + 6) * -1, -11, -6);
			if (random_func(0,2,true) == 1){
				heart.hsp = heart.hsp * -1;
			}
			
			if (heart_num >= (meter_damage / 2)){
				heartsplode = true;
			}
		}
	}
	
	if (heartsplode || state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_COMMITTED){
		got_hitFspecial = false;
		heartsplode = false;
		heart_num = 0;
	}
}
*/

//////////////////////////////////////////////////////////////////////////////
// OLD GOT HIT FORMULA FOR WHEN IT WAS ONLY DURING FSPECIAL AND LOST ALL METER

if (got_hitFspecial){
//	spawn_hit_fx( x, y, hearthurt_fx);
	
	var heart = noone;
//	for (i = 0; i < LoveMeter / 20; i++){
	if (heart_num < LoveMeter / 20){
		heart_num++;
		heart = instance_create( x , y - 30, "obj_article1");

		heart.player_id = id;
		heart.player = player;
		heart.state = 4;
		heart.state_timer = 2;
		heart.image_alpha = .8;
		heart.hsp = clamp(random_func(5, 7, true), 3, 5);
		heart.vsp = clamp(random_func(6, 10, true) * -1, -10, -5);
		if (random_func(0,2,true) == 1){
			heart.hsp = heart.hsp * -1;
		}
		
		if (heart_num >= LoveMeter / 20){
			heartsplode = true;
		}
	}
	
	if (heartsplode || state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_COMMITTED){
		LoveMeter = 0;
		got_hitFspecial = false;
		heartsplode = false;
		heart_num = 0;
	}
}

///////////////////////////////////////////////////////////////////////////////

if (instance_exists(asset_get("obj_article1"))){
	with (obj_article1){
		if ("CalliesHeart" in self && state == 4 && state_timer == 30){
			var sparklez = instance_create(x, y - 20, "obj_article2");
			sparklez.state = 1;
		}
	}
}

////////// Secret alt color code //////////

if (state == PS_PARRY && state_timer < 6){ // Turns off secret color during parry
	ColorLocked = false;
}
else {
	if (!ColorLocked && ColorLock = 1){
		ColorLocked = true;
	}
}

if (state == PS_SPAWN || was_reloaded){ // Checks if start of match or practice mode reload
	if (spawn_timer < 100 && ColorLock == 0 && jump_down){

		if (get_player_color(player) == 11){ // Color 12 Secret Alt

			// Inner - BLM alt color
			if (up_down && !down_down && !left_down && !right_down && shield_down && !attack_down && !special_down){
				SecretColor = 1;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}	
		}	
		
		if (get_player_color(player) == 19){ // Color 20- Secret Alt
			// Slime - Kagami Sumika alt color
			if (!up_down && down_down && !left_down && !right_down && shield_down && !attack_down && !special_down){
				SecretColor = 2;
				ColorLock = 1;
				ColorLocked = true;
				set_victory_portrait( sprite_get( "slime_portrait" ));
				init_shader();

			}			
			
			// Dakota/Civic - Waga Baga Bobo
			if (up_down && !down_down && !left_down && !right_down && !shield_down && attack_down && !special_down){
				SecretColor = 6;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();

			}			
		}		
	
		if (get_player_color(player) == 13){ // Color 14 Secret Alt

			// Dichi - Charlotte alt color
			if (up_down && !down_down && !left_down && !right_down && shield_down && !attack_down && !special_down){
				SecretColor = 3;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
		}
		
		if (get_player_color(player) == 8){ // Color 9 Secret Alt

			// Nuzle - Zombi? alt color
			if (up_down && !down_down && !left_down && !right_down && shield_down && !attack_down && !special_down){
				SecretColor = 4;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
		}
		
		if (get_player_color(player) == 14){ // Color 15 Secret Alt

			// Staur - alt color
			if (up_down && !down_down && !left_down && !right_down && shield_down && !attack_down && !special_down){
				SecretColor = 5;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
		}
		
		if (get_player_color(player) == 15){ // Color 16 Secret Alt

			// Krankees - alt color
			if (!up_down && !down_down && !left_down && !right_down && shield_down && !attack_down && special_down){
				SecretColor = 7;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
		}
		
		if (get_player_color(player) == 2){ // Color 3 Secret Alt

			// BowlingKing - alt color
			if (!up_down && down_down && left_down && !right_down && shield_down && !attack_down && !special_down){
				SecretColor = 8;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
		}
		
		if (get_player_color(player) == 26){ // Color 26 Secret Alt

			// Riptide - alt color
			if (up_down && !down_down && !left_down && !right_down && !shield_down && attack_down && !special_down){
				SecretColor = 9;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
		}
		
		if (get_player_color(player) == 26){ // Color 26 Secret Alt

			// Yshtola - alt color
			if (!up_down && down_down && !left_down && !right_down && !shield_down && attack_down && !special_down){
				SecretColor = 10;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
		}
		
		if (get_player_color(player) == 26){ // Color 26 Secret Alt

			// Heatwave - alt color
			if (!up_down && !down_down && left_down && !right_down && !shield_down && attack_down && !special_down){
				SecretColor = 11;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
		}
		
		if (get_player_color(player) == 18){ // Color 19 Secret Alt

			// Golden Boy
			if (up_down && !down_down && !left_down && !right_down && !shield_down && attack_down && special_down){
				SecretColor = 200;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
		}
		
		if (get_player_color(player) == 5){ // Color 10 Secret Alt

			// R00
			if (up_down && !down_down && !left_down && !right_down && !shield_down && attack_down && special_down){
				SecretColor = 201;
				ColorLock = 1;
				ColorLocked = true;
				init_shader();
			}
		}
		
		if (ColorLocked){
			sound_play(asset_get("mfx_confirm"));
		}
	}
}

//////////////////////////////////////////

// Hopefully it's self explanatory enough

// isThorn is Forward Throw status effect
// isCandy is Down Throw status effect
// isRibbon is Neutral/Back Throw status effect
// isBalloon is Up Throw status effect

// Each thing happens when the opponent has one of these status effects, 
// some code is for specific checks and some are for moving the opponent 
// around during the initial throw animations like lifting and carrying visuals.

with (oPlayer){
	// Activates a thorny/prickly effect that slowly deals lingering damage
	if (isThorn && !hitpause && other.id = thorn_id){
		if (ThornCounter % 20 == 0){
			take_damage(player, -1, 1);	
			with (other){
				var heart = instance_create( other.x , other.y - 30, "obj_article1");
				heart.player_id = id;
				heart.player = player;
				heart.hsp = random_func(3, 4, true);
				heart.vsp = 10 * -1;
				if (random_func(0,2,true) == 1){
					heart.hsp = heart.hsp * -1;
				}
			}
		}
		ThornCounter--;
		if(ThornCounter <= 0){
			isThorn = false;
			ThornCounter = 0;
			thorn_id = noone;
		}
	}	

	if (isThorn && hitpause){
		if (other.window == 1 && other.attack == AT_FTHROW){
			y = other.y;
			switch(spr_dir){
				case 1:
					x = other.x - 30;
				break;
				case -1:
					x = other.x + 30;
				break;
			}
		}
	}
	
	if (isCandy && hitpause && other.attack == AT_DTHROW && (other.state == PS_ATTACK_AIR || other.state == PS_ATTACK_GROUND)){
		if (other.window == 1){
			if (other.window_timer == 1){
				y = other.y;
				switch(spr_dir){
					case 1:
						x = other.x - 15;
					break;
					case -1:
						x = other.x + 15;
					break;
				}
			}
			
			if (other.window_timer > 1){
				y -= 3;
			}
		}
		
		if (other.window == 2){
			if (other.window_timer <= 2){
				y += 8;
				switch(spr_dir){
					case 1:
						x -= 3;
					break;
					case -1:
						x += 3;
					break;
				}
			}
		}
		
		if (Candy_SecondAttack && other.window == 2 && other.window_timer >= 3){
			isCandy = false;
			CandyCounter = 0;	
			other.dthrowCheck = false;
			candy_id = noone;
			//sprint("I'm pomu");
		}
	}

	if (!Candy_SecondAttack){
		if (isCandy && other.id = candy_id){
			
			// If got hit or hits someone
			if (other.dthrowCheck && ((has_hit_player && state == PS_ATTACK_GROUND) || (hitpause && state_cat == SC_HITSTUN)) && CandyCounter < CCheck){
				isCandy = false;
				CandyCounter = 0;	
				other.dthrowCheck = false;
				candy_id = noone;
			}

			if (other.full_candy_bar && other.has_hit_player && other.hit_player_obj == other.candy_identity && other.attack != AT_DTHROW){

				isCandy = false;
				CandyCounter = 0;	
				other.dthrowCheck = false;
				candy_id = noone;
			}
			
			if ((!other.dthrowCheck && vsp < -2) || (attack == AT_USPECIAL && state == PS_ATTACK_AIR) || (!hitpause && (state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP || state == PS_AIR_DODGE))){
				isCandy = false;
			}
			
			if (!free && !hitpause){

				if (state == 28){
					if (hsp != 0){
						if (spr_dir == 1){
							x -= 6.7;
						}
						if (spr_dir == -1){
							x += 6.7;
						}
					}
				}

				if (state == PS_DASH || state == PS_DASH_START || state == PS_WALK || state == PS_JUMPSQUAT || state == PS_AIR_DODGE || state == PS_WAVELAND || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD){
					state = PS_IDLE;
				}

				can_jump = false;
				if (jump_pressed){
					jump_pressed = false;
				}
				can_move = false;
				
				if (right_pressed || left_pressed){
					jump_pressed = false;
					can_jump = false;
				}
				
				if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
					x = x;
					y = y;
					if (attack == AT_USPECIAL){
						state = PS_IDLE;
					}
				}
				
				if (state == PS_DASH_START || state == PS_WALK){
					state = PS_IDLE;
				}
				
				if (!other.dthrowCheck){
					hitpause = true;
					if (other.full_candy_bar){
						hitstop_full = 42;
						hitstop = 42;
					}
					else {
						hitstop_full = 7;
						hitstop = 7;
					}
					old_vsp = 0;
					old_hsp = 0;
					other.dthrowCheck = true;
					CCheck = CandyCounter;
					other.candy_pos_x = x;
					other.candy_pos_y = y;
				}	

			}

			if (other.candy_pos_x != 0){
				if (point_distance(x, y, other.candy_pos_x, other.candy_pos_y) > 30 && hsp > 6){
					x = other.candy_pos_x;
					y = other.candy_pos_y;
					vsp = 0;
					hsp = 0;
					old_vsp = 0;
					old_hsp = 0;
				}
			}
			
			if (!hitpause && CCheck > 0){
				CandyCounter--;
				if(CandyCounter <= 0){
					isCandy = false;
					CandyCounter = 0;
					candy_id = noone;
				}
				
				if (other.candy_pos_x != 0 && point_distance(x, y, other.candy_pos_x, other.candy_pos_y) > 10 && state == PS_HITSTUN){
					x = other.candy_pos_x;
					y = other.candy_pos_y;
					vsp = 0;
					hsp = 0;
					old_vsp = 0;
					old_hsp = 0;
					isCandy = true;
				}
			}
		}
	}

	// Ribbon Throw New (Izuna Drop)
	if (isRibbon && hitpause){
		
		if ((other.window == 4 || other.window == 5) && other.attack == AT_NTHROW){
			if (other.spr_dir == 1){
				if (get_player_damage(player) > get_player_damage(other.player)){ // If Callie has less %
					if (other.right_pressed || other.right_down){
						other.hsp = other.hsp + .1;
					}
					
					if (other.left_pressed || other.left_down){
						other.hsp = other.hsp - .1;
					}
				}
				else { // Target has less %
					
					if (other.right_pressed || other.right_down){
						other.hsp = other.hsp + .1;
					}
					
					if (other.left_pressed || other.left_down){
						other.hsp = other.hsp - .1;
					}
					
					if (right_pressed || right_down){
						other.hsp = other.hsp + clamp(.01 * ((get_player_damage(other.player) - get_player_damage(player)) / 5), 0, .1);
					}
					if (left_pressed || left_down){
						other.hsp = other.hsp - clamp(.01 * ((get_player_damage(other.player) - get_player_damage(player)) / 5), 0, .1);
					}
				}
			}
			else {
				if (get_player_damage(player) > get_player_damage(other.player)){ // If Callie has less %
					if (other.right_pressed || other.right_down){
						other.hsp = other.hsp + .1;
					}
					
					if (other.left_pressed || other.left_down){
						other.hsp = other.hsp - .1;
					}
				}
				else { // Target has less %
				
					if (other.right_pressed || other.right_down){
						other.hsp = other.hsp + .1;
					}
					
					if (other.left_pressed || other.left_down){
						other.hsp = other.hsp - .1;
					}
					
					if (right_pressed || right_down){
						other.hsp = other.hsp + clamp(.01 * ((get_player_damage(other.player) - get_player_damage(player)) / 5), 0, .1);
					}
					if (left_pressed || left_down){
						other.hsp = other.hsp - clamp(.01 * ((get_player_damage(other.player) - get_player_damage(player)) / 5), 0, .1);
					}
				}
			}
			other.hsp = clamp(other.hsp, -4, 4);
		}
		
		if (other.window == 1 && other.attack == AT_NTHROW){
			y = other.y;
			switch(spr_dir){
				case 1:
					x = other.x - 20;
				break;
				case -1:
					x = other.x + 20;
				break;
			}
		}
	
		if (other.window == 3 && other.attack == AT_NTHROW){
			y = other.y;
			switch(other.spr_dir){
				case 1:
					x = other.x + 20;
				break;
				case -1:
					x = other.x - 20;
				break;
			}
		}
		
		if (other.window == 4 && other.attack == AT_NTHROW){
			y = other.y - 20;
			switch(other.spr_dir){
				case 1:
					x = other.x + 10 - other.window_timer;
				break;
				case -1:
					x = other.x - 10 + other.window_timer;
				break;
			}
		}
		
		if (other.RibbonRights == 0){
			if (other.window == 5 && other.attack == AT_NTHROW){
				y = other.y;
				switch(other.spr_dir){
					case 1:
						x = other.x - 30;
					break;
					case -1:
						x = other.x + 30;
					break;
				}
			}
		}
		
		if (other.RibbonRights == 1){
			if (other.window == 5 && other.attack == AT_NTHROW){
				y = other.y + 20;
				switch(other.spr_dir){
					case 1:
						x = other.x - 30;
					break;
					case -1:
						x = other.x + 30;
					break;
				}
			}
		}
		
		if (other.RibbonRights == 2){
			if (other.window == 5 && other.attack == AT_NTHROW){
				if (y < get_stage_data(SD_BOTTOM_BLASTZONE) + get_stage_data(SD_Y_POS)){				
					y = other.y + 30;
					switch(other.spr_dir){
						case 1:
							x = other.x - 30;
						break;
						case -1:
							x = other.x + 30;
						break;
					}
				}
				else{
					hitpause = false;
					hitstop = 0;
					extra_hitpause = 0;
					isRibbon = false;
					y = y + 2000;
				}
			}
		}
		
		
		if (other.y > get_stage_data(SD_BOTTOM_BLASTZONE) + get_stage_data(SD_Y_POS)){
			if (!other.Calliecide){
			//	print("Dead");
				hitpause = false;
				hitstop = 0;
				extra_hitpause = 0;
				can_special = true;
				isRibbon = false;
			}
			else {
			//	print("Calliecide");
				hitpause = false;
				hitstop = 0;
				extra_hitpause = 0;
				isRibbon = false;
			}
		}
	/*
		if (other.state == PS_HITSTUN){
			hitpause = false;
			hitstop = 0;
			extra_hitpause = 0;
			can_special = true;
			vsp = -5;
			isRibbon = false;
		}
	*/
	}
	
/*
	// Ribbon Throw Old
	if (isRibbon && other.id = ribbon_id){

		if (!hitpause){
			RibbonCounter--;
					
			if(RibbonCounter <= 0){
				isRibbon = false;
				RibbonCounter = 0;
				ribbon_id = noone;
			}
		}	
	}
	
	if ((isRibbon || isThorn) && hitpause){
		if (other.window == 1 && (other.attack == AT_NTHROW || other.attack == AT_FTHROW)){
			y = other.y;
			switch(spr_dir){
				case 1:
					x = other.x - 30;
				break;
				case -1:
					x = other.x + 30;
				break;
			}
		}
	}

	if (other.attack == AT_FSPECIAL){
		isRibbon = false;
		RibbonCounter = 0;
	}
*/
		

	if (isBalloon && hitpause && other.attack == AT_UTHROW && other.id = balloon_id){
		if (other.window == 1){
			y = other.y;
			switch(spr_dir){
				case 1:
					x = other.x - 10;
				break;
				case -1:
					x = other.x + 10;
				break;
			}
		}

		if (other.window == 2){
			y--;
			if (other.window_timer >= 5){
				y -= 2;
				switch(spr_dir){
					case 1:
						x--;
					break;
					case -1:
						x++;
					break;
				}
			}
		}
		
	}
	
	// Checks for first time they get hit and allow them to be properly launched by kb
	if (isBalloon && balloon_first_hit && !balloon_got_hit){
		if (hitpause && state_cat == SC_HITSTUN){
			balloon_got_hit = true;
		}
	}
	
	if (isBalloon && !hitpause && other.id = balloon_id){
		if (BalloonStrength == 1.0){
			BalloonStrength = (1.1 + (((BalloonCounter-120)/80)/7.5));
			
			Balloon_hitstun_grav = hitstun_grav;
			hitstun_grav = hitstun_grav - (((((BalloonStrength/3)-.3)/3)-.02));
		//	print("hitstun change")
		//	print(hitstun_grav)
		}

		if (vsp > 0 && BalloonCounter > 0 && free){
			vsp = vsp / BalloonStrength;
		}

		if (BalloonCounter > 0 && free && !balloon_got_hit){
			hsp = clamp(hsp, -4, 4);
		}

		BalloonCounter--;
		if(BalloonCounter <= 0){
			isBalloon = false;
			BalloonCounter = 0;
			BalloonStrength = 1.0
			balloon_id = noone;
		}
		
		if (BalloonCounter < 5){
			hitstun_grav = Balloon_hitstun_grav;
		//	print("hitstun returns")
		//	print(hitstun_grav)
		}
		
		if (!balloon_first_hit){
			balloon_first_hit = true;
		}
		
	}
	
/*
	if (isCandy && other.GrappleMode == 1 && other.id = candy_id && CandyCounter > 20){
		other.move_cooldown[AT_FSPECIAL] = 30;
	}
*/	
	if (state == PS_DEAD || state == PS_SPAWN || state == PS_RESPAWN){
		isThorn = false;
		ThornCounter = 0;
		isCandy = false;
		CandyCounter = 0;
		isRibbon = false;
		RibbonCounter = 0;
		isBalloon = false;			
		BalloonCounter = 0;
		BalloonStrength = 1.0
		thorn_id = noone;
		ribbon_id = noone;
		balloon_id = noone;
		candy_id = noone;
		if (state != PS_SPAWN && Balloon_hitstun_grav != 0){
			hitstun_grav = Balloon_hitstun_grav;
		//	print("hitstun returns")
		}
	}
}

// Dialogue stuff!

if ((attack != AT_TAUNT && !down_down) || (state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD || state == PS_HITSTUN || state == PS_PARRY || state == PS_IDLE_AIR || state == PS_IDLE)){
	downTaunt_check = false;
	DG_chat_num = 0;
	DG_visual_state = 0;
	chatindex = 0;
	DG_chat_num_end = false;
	isTaunt = 0;
	ChatNumber = 0;
}

if (DG_chat_num == 1 && isTaunt){
	with (oPlayer){
		if (id != other.id){
			if ("Chatting" in self && Chatting){
				other.workshop_date = true;
				
				if (url != CH_ZETTERBURN && url != CH_ORCANE && url != CH_WRASTOR && url != CH_KRAGG && url != CH_FORSBURN && url != CH_MAYPUL && url != CH_ABSA && url != CH_ETALUS && url != CH_ORI && url != CH_RANNO && url != CH_CLAIREN && url != CH_SYLVANOS && url != CH_ELLIANA && url != CH_SHOVEL_KNIGHT){
					other.ChatNumber = url;
				}
				else {
					other.ChatNumber = 25
				}
				
				other.dialogue[other.chatindex] = DG_dialogue[other.chatindex];
				other.chattingoptions[other.chatindex] = DG_chat_type[other.chatindex];
				
				if (DG_chat_type[other.chatindex] == 1){
					other.optionselect[other.chatindex] = DG_options[other.chatindex];
				}
	
				if (variable_instance_exists(id, "DG_right_speaker")){
					if (DG_right_speaker[other.chatindex]){
						other.right_speaker = true;
						other.right_dialogue[other.chatindex] = DG_dialogue_right[other.chatindex];
					}
					else {
						other.right_speaker = false;
					}
				}
				
				if (variable_instance_exists(id, "DG_adopts_color_left")){
					other.adopts_color_left = DG_adopts_color_left[other.chatindex];
				}

				if (variable_instance_exists(id, "DG_adopts_color_right")){
						other.adopts_color_right = DG_adopts_color_right[other.chatindex];
				}

				if (variable_instance_exists(id, "DG_custom_left_portrait")){
					other.expression_left = DG_left_strip[other.chatindex];
					other.custom_left = DG_portrait;
					other.workshop_left = DG_custom_left_portrait[other.chatindex];
				}

				if (variable_instance_exists(id, "DG_custom_right_portrait")){
					other.expression_right = DG_right_strip[other.chatindex];
					other.custom_right = DG_portrait;
					other.workshop_right = DG_custom_right_portrait[other.chatindex];
				}

				if (DG_chat_type[other.chatindex] == 2){
					other.nextindex = DG_nextindex[other.chatindex];
				}
					
				if (DG_chat_type[other.chatindex] == 1){
					other.answerselect = DG_answers[other.chatindex];
					if (variable_instance_exists(id, "DG_unique")){
						other.is_unique = DG_unique[other.chatindex] ;
					}
					if (variable_instance_exists(id, "return_unique")){
						other.return_unique = DG_return[other.chatindex];			
					}
				}
			}
			else{
				if (variable_instance_exists(id, "url") && url == ""){
					other.ChatNumber = 18; // Assigns this to a workshop character that doesn't have dialogue with Callie
				}
				else {
					other.ChatNumber = 17; // Assigns this to unreleased character that doesn't have dialogue with Callie
				}
				
				other.adopts_color_left = true;
				other.adopts_color_right = true;

				if (url == 1865940669){
					other.ChatNumber = 16; // Sandbert
				}
				if (url == 1866016173){
					other.ChatNumber = 15; // Guadua
				}
				if (url == 2105940891){
					other.ChatNumber = 2105940891; // Siren
				}													//Forsburn   Maypul   Absa   Etalus   Ori   Ranno   Clairen   Sylvanos   Elliana   Shovel Knight
				if (url == CH_ZETTERBURN || url == CH_ORCANE || url == CH_WRASTOR || url == CH_KRAGG || url == CH_FORSBURN || url == CH_MAYPUL || url == CH_ABSA || url == CH_ETALUS || url == CH_ORI || url == CH_RANNO || url == CH_CLAIREN || url == CH_SYLVANOS || url == CH_ELLIANA || url == CH_SHOVEL_KNIGHT){
					other.ChatNumber = url;
				}
			}
		}
	}

	
	switch(ChatNumber){
		case 18: // For unreleased Characters
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "It seems like you're not publically available yet, make sure to 
										give your character a Chatting = true variable in init.gml
										to begin making compatibility with an unreleased character.";
				break;
			}
		break;
		case 17: // For Workshop Characters doesn't have Date Girl Dialogue
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "This character doesn't have compatibility with me yet, 
										hopefully given time we can become close friends and be
										able to comfortably go on dates and chat like friends!";
					expression_right = 18;
					expression_left = 0;
				break;
			}
		break;
		case 0: // No one is here
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = ". . .
										";
					nextindex = 1;
					expression_left = 0;
					expression_right = 18;
				break;
				case 1:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "This character doesn't exist.
										";
					expression_left = 0;
					expression_right = 18;
				break;
			}
		break;

		// Name:   Callie  'You'   Zetter   Orcane   Wrastor   Kragg   Forsburn   Maypul   Absa   Etalus   Ori   Ranno   Clairen   Sylvanos   Elliana   Shovel Knight   Sandbert   Siren   Empty_Sprite
		// Cases:     0      1       2        3         4        5        6         7        8      9      10      11      12         13        14           15            16	   17          18

//////////////////
/// Zetterburn ///
//////////////////

		case 2: // Zetterburn - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Oh Callie I didn't expect to see you visiting
										the Fire Capitol so soon again. 
										";
					nextindex = 1;
					expression_left = 2;
					expression_right = 0;
				break;
				case 1:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Sorry for leaving you to a guide last time, I would
										have personally shown your around but as the head of
										my family I'm quiet busy.";
					nextindex = 2;
					expression_left = 2;
					expression_right = 0;
				break;
				case 2:
					chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "If I may ask what brings you to the Fire Capitol so soon?
										
										";
					optionselect[chatindex] = "I thought I'd spend some more time here.
										I came to visit you!
										Just passing by";
					answerselect = [3, 4, 50];
					is_unique = [false, false, false]; 
				break;
				case 3:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Well if that's the case then let me show you 
										around some more and we can chat.
										";
					nextindex = 5;
				break;
				case 4:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "O.. oh! Well let's take a walk and talk for a bit
											
										";
					nextindex = 5;
				break;
				case 5:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Things have been a lot more peaceful in the kingdom
										since the battle at the Aetheral Gates.
										";
					nextindex = 6;
				break;
				case 6:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "My brother and I are on better terms and I have made
										strong allies in the other lands.
										";
					nextindex = 7;
				break;
				case 7:
					chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "That said, my brother's claim that the Council is  
										responsible for murdering my father still can't leave
										my mind.";
					optionselect[chatindex] = "There's a chance, especially with Emperor Loxodont.
										What do you mean?
										I'm really not interested in your politics right now";
					answerselect = [8, 9, 51];
					is_unique = [false, false, false]; 
				break;
				case 8:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Emperor Loxodont? My father said he wished for Loxodont 
										to take the throne. At least that's what they say...
										";
					nextindex = 10;
				break;
				case 9:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "I have a hunch that the Council may have lied about my 
										father wishing for Loxodont would take the throne 
										after my father.
										";
					nextindex = 10;
				break;
				case 10:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "There are way too many coincidences and if my brother's
										claims ring true then I have to avenge my father and bring
										honor back to my brother.
										";
					nextindex = 12;
				break;
				case 12:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Let us delay our date for another time, we need to 
										investigate this issue further.
										";
					nextindex = 13;
				break;
				case 13:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "....
					
										";
					expression_left = 18;
					expression_right = 0;
				break;
				case 50:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Oh. That's fine carry on then, I have some duties to
										take care of anyways.
										";
				break;
				case 51:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Ok... fine let's just keep walking then, I'll keep this 
										to myself.
										
										";
				break;
			}
		break;

//////////////////
///// Orcane /////
//////////////////

		case 3: // Orcaaane - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Calliieeee how's it hanging!?
					
										";
					nextindex = 1;
					expression_left = 3;
					expression_right = 0;
				break;
				case 1:
					chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "It's been a while! Ever since you helped repair parts of 
										the market you haven't come to visit since! What've you 
										been up to!?
										
										";
					optionselect[chatindex] = "Just some traveling here and there.
										I've been practicing a new trick!
										Just passing by";
					answerselect = [2, 10, 50];
					is_unique = [false, false, false]; 
				break;
				case 2:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Oh wow you'll have to tell me all about it eventually.
					
										";
					nextindex = 30;
				break;
				case 30:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "I wanna show you a new trick I've been working on!
					
										";
					nextindex = 31;
				break;
				case 31:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "*Orcane tosses a ball of water on the roof of a shop*
					
										";
					nextindex = 32;
				break;
				case 32:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Now check this out!
					
										";
					nextindex = 33;
				break;
				case 33:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "*Orcane vanishes into a puddle in the ground*
					
										";
					expression_left = 18;
					expression_right = 0;
					nextindex = 34;
				break;
				case 34:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "*As you're waiting for Orcane to appear on the roof a giant
										bubble starts to form above you.*
					
										";
					expression_left = 18;
					expression_right = 0;
					nextindex = 35;
				break;
				case 35:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "*Before you can react you're splashed with a pools worth 
										of water*
					
										";
					expression_left = 18;
					expression_right = 0;
					nextindex = 36;
				case 36:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "*Orcane appears behind you, dry as a whale 
										panther could be*
					
										";
					expression_left = 3;
					expression_right = 0;
					nextindex = 37;
				break;
				case 37:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Pretty good trick huh! I'm still trying to think 
										of a name for it... Wait what are you doing with that??
					
										";
				break;
				case 10:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Woah really? Is it as cool as THIS?
					
										";
					nextindex = 11;
				break;
				case 11:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "*Orcane proceeds to blow a large flurry of bubbles*
					
										";
					nextindex = 12;
				break;
				case 12:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Ha! Pretty awesome right!?
					
										";
					nextindex = 14;
				break;
				case 14:
					chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Now, what's your trick?
					
										";
					optionselect[chatindex] = "See this Balloon....
										See this piece of Candy....
										See this Ribbon...";
					answerselect = [15, 17, 22];
					is_unique = [false, false, false]; 
				break;
				case 15:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "*You tie the balloon to a barrel and it proceeds
										to float high in the sky*
										";
					nextindex = 16;
				break;
				case 16:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Haha that's great but I don't know if that's cooler than 
										these sick bubbles!
										";
					nextindex = 25;
				break;
				case 25:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "If all you've got to show me is a silly balloon prank
										I'll be seein ya, next time come with something flashier!
										";
				break;
				case 17:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "*You toss the candy, exploding into a goop under 
										the feet of a nearby Alligator*
					
										";
					nextindex = 18;
				break;
				case 18:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Ruuun! The guy is gonna kill us if he catches up to us!
					
										";
					nextindex = 19;
				break;
				case 19:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = ".....
					
										";
					nextindex = 20;
				break;
				case 20:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Callie we almost died just now, we're lucky he got stuck 
										in your Candy bomb.
					
										";
				break;
				case 22:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "*You wrap the Ribbon around Orcane and pull him close 
										to you*
					
										";
					nextindex = 23;
				break;
				case 23:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Aw shucks Callie, ain't this a little too personal?
					
										";
					nextindex = 24;
				break;
				case 24:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "We're not that close haha...
					
										";
				break;
				case 50:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Ah ok! Well if you need me I'll be hanging out around 
										the port as always!
					
										";
				break;
			}
		break;

//////////////////
///// Wrastor ////
//////////////////

		case 4: // Wrastor - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "What's fresh Callie? Just the Chick I
										wanted to talk to today.
										";
					nextindex = 1;
					expression_left = 4;
					expression_right = 0;
				break;
				case 1:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Makin' the rounds huh? Well I've got		
										fiiine take for you.
										";
					nextindex = 2;
				break;
				case 2:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Lemme fly a question by you...		

										";
					nextindex = 3;
				break;
				case 3:
					chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "You on the hook? Ever fell from the skies and
										suddenly struck with LOVE?
										";
					optionselect[chatindex] = "I mean of course, doesn't everyone?
										Dude, stop talking like that.
										No way, I ain't about that drag.";
					answerselect = [4, 5, 50];
					is_unique = [false, false, false]; 
				break;
				case 4:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "For sure For sure, even I fall for a feather every
										once in a while! Let's chat over here for a bit.
										";
					nextindex = 6;
				break;
				case 5:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Lemme take ya out back for a bit and talk.
											
										";
					nextindex = 6;
				break;
				case 6:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Ok enough of that tacky talk, I actually wanted
										to get your advice on something.
										";
					nextindex = 7;
				break;
				case 7:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "There was a bit of an incident last mission that 
										led to Bradshaw having to get hospitalized for a 
										bit and I think it's all my fault.";
					nextindex = 8;
				break;
				case 8:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Ever since then Bradshaw has been a bit distant y'know. 
										I dunno what to do or what to even say.
										";
					nextindex = 9;
				break;
				case 9:
					chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Whenever I find some alone time to apologize 
										something in my chest gets all tight, tighter than a 
										recruit holding onto dear life.";
					optionselect[chatindex] = "Sounds like you're in love.
										I think you should just apologize.
										I'm really not interested in your love life.";
					answerselect = [10, 11, 51];
					is_unique = [false, false, false];
				break;

				case 10:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Don't kid yourself, I ain't fly with any other
										bird. Get outta my face.
										";
				break;				

				case 11:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "I know I know, something in my gut just won't let me.
										You know that feeling? That weird weird feeling when it 
										gets all tight in your chest when you're around someone?!";
					nextindex = 12;
				break;				
				case 12:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Is this what they call... Love?
					
					";
					nextindex = 13;
				break;				
				case 13:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Me? The coolest crow, the Air Armada's most reliable
										fighter? In love!? No way, NO WAY....
					
					";
					nextindex = 14;
				break;				
				case 14:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = ". . . . .
					
					";
					nextindex = 15;
				break;				
				case 15:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Ok. so what if I am in love? What am I even
										supposed to do with this.
										";
					nextindex = 16;
				break;				
				case 16:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "What do you do when you've fallen in love?
					
					";
				break;				
				
				case 50:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "A drag ain't it! I'm all about eyeballin' the dolls
										playin in footloose until I hit my mark on the right kinda
										gal.";
				break;
				case 51:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Hey! It ain't love, I'm just trynna figure out
										how to apologize. 
										";
					nextindex = 52;
				break;
				case 52:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Whatever, it's not like I cared in the first place.
										Cya later Callie.
										";
				break;
			}
		break;
		
//////////////////
///// Kragg //////
//////////////////

		case 5: // kragg - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = ". . . 
					
										";
					nextindex = 1;
					expression_left = 5;
					expression_right = 0;
				break;
				case 1:
					chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = ". . .
					
										";
					optionselect[chatindex] = "Hey, Kragg are those for me?
										Aether to Kragg, are you here?
										. . .";
					answerselect = [4, 2, 50];
					is_unique = [false, false, false]; 
				break;
				case 2:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Oh! I didn't know you could speak to the 
										Aetherian Grounds as well.	

										";
					nextindex = 3;
				break;
				case 3:
					chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "I always believed that only the Wall Runners 
									could speak to them.

										";
					optionselect[chatindex] = "That's not what I meant..
										Are those flowers for me?
										. . .";
					answerselect = [10, 4, 50];
					is_unique = [false, false, false]; 
				break;
				case 4:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Oh, yeah I picked them off the Rock Wall.
									They're one of my favorites.	

										";
					nextindex = 5;
				break;
				case 5:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "They're called Wooly Thyme. They're a very 
										gentle flower so be careful, okay.

										";
					nextindex = 6;
				break;
				case 6:
					chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = ". . .

										";
					optionselect[chatindex] = "You know, you're quiet a friendly person despite your size.
										Is everything alright? You're pretty quiet.
										. . .";
					answerselect = [15, 16, 50];
				break;
				case 15:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Thanks.

										";
					nextindex = 17;
				break;
				case 16:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "I'm fine.

										";
					nextindex = 17;
				break;
				case 17:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = ". . .

										";
				break;
				case 10:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = ". . .

										";
					nextindex = 11;
				break;
				case 11:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "I brought you these flowers. When I heard you were visiting I knew 
										I had to get you something nice, and I think these are nice.

										";
					nextindex = 5;
				break;
				case 50:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = ". . .		

										";
					nextindex = 3;
				break;
			}	
		break;

//////////////////
//// Forsburn ////
//////////////////
		
		case 6: // Forsb - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Risen from the darkness a Pink entity of 
										mysterious form appears in the middle of the hallways..
										";
					nextindex = 1;
					expression_left = 6;
					expression_right = 18;
				break;
				case 1:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = ". . .		
										
										";
					nextindex = 2;
					expression_left = 6;
					expression_right = 0;
				break;
				case 2:
					chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "WAA! Callie you scared me. You didn't hear any of that
										did you?
										";
					optionselect[chatindex] = "That was deep.
										Was that about me??
										Ah nah, I don't really care about your poetry.";
					answerselect = [3, 4, 50];
					is_unique = [false, false, false]; 
				break;
				case 3:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Wait really? You actually liked that?
					
										";
					nextindex = 5;
				break;
				case 4:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "What? of course not, I only write about the suffering
										and darkness that fuel the souls of this world.
										";
					nextindex = 5;
				break;
				case 5:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Anyways I was writng about a girl consumed by
										darkness who was summoned upon a foreign land.
										";
					nextindex = 6;
				break;
				case 6:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Writhing from the darkness she traveled the world to
										uncover the lies that hid away her dark and sinister past. 
										";
					nextindex = 7;
				break;
				case 7:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Pretty dark for an empty soul like myself huh?
										";
					optionselect[chatindex] = "That was deep.
										... I guess it's not about me
										I see, I guess that's kind of cool.";
					answerselect = [8, 9, 15];
					is_unique = [false, false, false]; 
				break;
				case 8:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "If only they could see me now, a hardened soul cursed
										to write the most nightmarish dialogue in all of Aether.
										";
					nextindex = 11;
				break;
				case 9:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Well duh, why would a dark lord like myself write
										poetry about a chipper pink haired anomaly who's too busy
										talking to people to notice her impure soul.";
					nextindex = 10;
				break;
				case 10:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Anyways I hope to curse you one day and enable
										you to reach deep within that darkness of yours and 
										get you to write some poetry.";
					nextindex = 11;
				break;
				case 15:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Cool? Really? Man Callie I thought you understood. 
									I guess the tales of a dark emperor are too much for a pink
									haired anomaly from the heavens.	";
					nextindex = 6;
				break;
			}
		break;

//////////////////
///// Maypul /////
//////////////////

		case 7: // May - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Now get outta here you fools.
										";
					nextindex = 1;
					expression_left = 7;
					expression_right = 18;
				break;
				case 1:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = ". . .
										
										";
					nextindex = 2;
					expression_left = 7;
					expression_right = 0;
				break;
				case 2:
					chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Oh Callie I didn't see you there. You seem. Different today.
										You look all tangled up there.
										";
					optionselect[chatindex] = "Get me out of this trap already...
										Ha Ha very funny -_-
										It's fine, I'll get out myself.";
					answerselect = [3, 4, 50];
					is_unique = [false, false, false]; 
				break;
				case 3:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Hey now, you know you'll be ok as long as I'm protecting
										these woods!
										";
					nextindex = 5;
				break;
				case 4:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Fine fine, no need to be such a party pooper about it.
										
										";
					nextindex = 5;
				break;
				case 5:
					chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "What brings you here anyways? We're so deep in the woods
										it's not like you.
										
										";
					optionselect[chatindex] = "I was looking for a self proclaim guardian of this forest.
										I wanted to chat with you.
										Just exploring as usual, don't mind me.";
					answerselect = [6, 7, 50];
					is_unique = [false, false, false]; 
				break;
				case 6:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Well now, that couldn't be me! Because I'm THE guardian
										of the forest. Who's this self proclaimed hero anyways?? I'll
										have to beat some sense into them";
					nextindex = 8;
				break;
				case 7:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Oh? That interested in my heroic deeds that you just
										had to chase me down?
										";
					nextindex = 8;
				break;
				case 8:
					chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Jokes aside, What's up?
										
										";
					optionselect[chatindex] = "Have you seen some mysterious puddles around lately?
										Why do you call yourself the guardian of this forest?
										Nevermind.";
					answerselect = [9, 12, 50];
					is_unique = [false, false, false];
				break;
				
				case 9:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Mysterious puddles? Now that you mentioned it I may have seen
											one or two around especially in the lower hills area.";
					nextindex = 9;
				break;
				case 10:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "You said you thought you might be connected to them? Now
										that's a weird claim, but if you're so eager to exclaim that 
										I guess it's worth a shot to check em out";
					nextindex = 11;
				break;
				case 11:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Well? Are ya coming or not? We've got some 
						suspicious puddles to find!
										
										";
				break;
				
				case 12:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "No one else does it, so I might as well take the role. Plus
							those treetop dwellers don't care for the surface dwellers and vice versa. 
										
										";
				break;
				
				case 50:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Ok if that's what you want! I need to go rig some more traps
										around the forest floor, these surface dwellers need someone to
										protect them!
										";
					nextindex = 51;
					expression_left = 7;
					expression_right = 0;
				break;
				case 50:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = ". . .
					
										";
					expression_left = 18;
					expression_right = 0;
				break;
			}
		break;

//////////////////
////// Absa //////
//////////////////
		
		case 8: // Absa - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Ahh perfect. Surely nothing would dare reach the top
										ever again.
										";
					nextindex = 1;
					expression_left = 8;
					expression_right = 18;
				break;
				case 1:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = ". . .
										
										";
					nextindex = 2;
					expression_left = 8;
					expression_right = 0;
				break;
				case 2:
					chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "CALLIE?? How did you manage to make it up here?
										I JUST reinforced the defense system up here!
										";
					optionselect[chatindex] = "I just walked up.
										I took the elevator.
										Oh sorry, I'll see myself out.";
					answerselect = [3, 4, 5];
					is_unique = [false, false, false]; 
				break;
				case 3:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Sorry Callie, not today. Out with you shoo, shoo.
										I need my privacy and I'm not having your well toned body
										accidentally destroying something again!
										";
				break;
				case 4:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "An elavator? I don't even know what that means. Get
									out Callie I can't have you messing with any of my stuff right now.
										";
				break;
				case 5:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Wait, gimme a second I didn't mean to be rude...
										";
					expression_left = 8;
					expression_right = 18;
				break;
			}
		break;		
	
//////////////////
///// Etalus /////
//////////////////
		
		case 9: // Eta - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Hey Callie, it's been quiet a while since you've visited
										how goes everything?
										";
					nextindex = 1;
					expression_left = 9;
					expression_right = 0;
				break;
				case 1:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Oh, lemme help you out I didn't realize you were frozen.
										
										";
					nextindex = 2;
				break;
				case 2:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "All warmed up now, that's the power of a bear hug!
										";
	
					nextindex = 3;
				break;
				case 3:
					chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Now what brings you here on such short notice?
										I was just going on my morning walks. Care to join?
										";
					optionselect[chatindex] = "Sure! I'd love to walk with you.
										I've got nothing better to do
										Oh sorry, I was actually leaving.";
					answerselect = [4, 5, 50];
					is_unique = [false, false, false]; 

				break;
				case 4:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Wonderful! Usually we take a 4 mile walk around the fortress
									just to make sure everything is ok!
										";
					nextindex = 6;
				break;
				case 5:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Aww don't talk like that, it's fun to walk a couple
									miles around in the morning to get the grizzlies outta ya!
										";
					nextindex = 6;
				break;
				case 6:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = ". . .
										";
					nextindex = 7;
				break;
				case 7:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Tired already Callie? You remind me of one of me when I first
										starting taking these walks haha! Don't worry let me carry you!
										
										";
				break;
				case 50:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "I guess that's fine, must have frozen up before you were able
									to head out huh. Well I'll see ya later.
										";
				break;
			}
		break;		
	
//////////////////
/////// Ori //////
//////////////////
		
		case 10: // Ori - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					 chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Ori -
										Find the light in others - Coming Soon!
										";
					nextindex = 1;
					expression_left = 10;
					expression_right = 0;
				break;
				case 1:
					chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "It seems that my newest date bailed on me again. It's so 
										quiet and it doesn't seem to be a lot of people around 
										here, maybe that person over there wants to chat.";
					optionselect[chatindex] = "It seems that my newest date bailed on me again. It's so 
										quiet and it doesn't seem to be a lot of people around 
										here, maybe that person over there wants to chat.";
				break;
				case 2:
					chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "It seems that my newest date bailed on me again. It's so 
										quiet and it doesn't seem to be a lot of people around 
										here, maybe that person over there wants to chat.";
				break;
			}
		break;		
	
//////////////////
////// Ranno /////
//////////////////
		
		case 11: // Ranno - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					 chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Ranno
										Pursue the path of peace, Aggressively - Coming Soon!
										";
					nextindex = 1;
					expression_left = 11;
					expression_right = 0;
				break;
				case 1:
					chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "It seems that my newest date bailed on me again. It's so 
										quiet and it doesn't seem to be a lot of people around 
										here, maybe that person over there wants to chat.";
					optionselect[chatindex] = "It seems that my newest date bailed on me again. It's so 
										quiet and it doesn't seem to be a lot of people around 
										here, maybe that person over there wants to chat.";
				break;
				case 2:
					chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "It seems that my newest date bailed on me again. It's so 
										quiet and it doesn't seem to be a lot of people around 
										here, maybe that person over there wants to chat.";
				break;
			}
		break;		
	
//////////////////
///// Clairen ////
//////////////////
		
		case 12: // Clairen - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					 chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Ah, thank you so much for coming Callie, I honestly
									didn't expect you to come on such short notice.
										";
					nextindex = 1;
					expression_left = 12;
					expression_right = 0;
				break;
				case 1:
					chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "As you know, my name is Clairen. I've asked you on this date
									because I have a sneaking suspicion you may have connections to my
									current mission...
										
										";
					optionselect[chatindex] = "Mission? I'm just but an amnesiac traveler.
										And I have a sneaking suspicion that you're not real!
										Oh sorry, I have to head out.";
					answerselect = [2, 6, 50];
					is_unique = [false, false, false]; 
				break;
				case 2:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "And that's exactly why! You don't look or dress like anyone
									else in Aether and you don't even know where you came from.
										";
	
					nextindex = 3;
				break;
				case 3:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "How can I be so sure you're not a cyborg from another dimension
									sent from the future to destroy this world before IT happens?
										";
	
					nextindex = 4;
				break;
				case 4:
					chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Just look at yourself, you're don't look like anyone I've
										ever seen in Aether. Don't you find that awfully suspicious?
										";
					optionselect[chatindex] = "The future? You mean the place YOU'RE from?
										I did think it was kind of weird to be honest. Ok bye!
										Oh sorry, I have to head out.";
					answerselect = [5, 50, 50];
					is_unique = [false, false, false]; 
				break;
				case 5:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Tch. How'd you figure it out? I even worse this silly 
									outfit to try and hide my identity better.
										";
	
					nextindex = 10;
				break;
				case 6:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "What nonsense are you even talking about?
										";
	
					nextindex = 7;
				break;
				case 7:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = ". . .
										";
	
					nextindex = 8;
				break;
				case 8:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Ok you got me. I'm from the future. 
										";
	
					nextindex = 5;
				break;
				case 10:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Listen, I AM from the future and in my world Emperor 
									Loxodont has completely taken over the Fire Capitol.
										";
	
					nextindex = 11;
				break;
				case 11:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Come with me, I'll take you somewhere in private
									where we can talk in private.. And maybe learn something
									about you.
										";
				break;
				case 50:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Hey don't run from me! I'm not here to hurt you
										I just.... aaand she's gone.
										";
				break;
			}
		break;		
	
//////////////////
///// Syvlanos ////
//////////////////
		
		case 13: // Sylv - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					 chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Sylvanos
										All who walk these lands shall fear him - Coming Soon
										";
					nextindex = 1;
					expression_left = 13;
					expression_right = 0;
				break;
				case 1:
					chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "It seems that my newest date bailed on me again. It's so 
										quiet and it doesn't seem to be a lot of people around 
										here, maybe that person over there wants to chat.";
					optionselect[chatindex] = "It seems that my newest date bailed on me again. It's so 
										quiet and it doesn't seem to be a lot of people around 
										here, maybe that person over there wants to chat.";
				break;
				case 2:
					chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "It seems that my newest date bailed on me again. It's so 
										quiet and it doesn't seem to be a lot of people around 
										here, maybe that person over there wants to chat.";
				break;
			}
		break;			
//////////////////
///// Elliana ////
//////////////////
		
		case 14: // Elliana - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					 chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Elliana
										I want to Prove Myself - Coming Soon!
										";
					nextindex = 1;
					expression_left = 14;
					expression_right = 0;
				break;
				case 1:
					chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "It seems that my newest date bailed on me again. It's so 
										quiet and it doesn't seem to be a lot of people around 
										here, maybe that person over there wants to chat.";
					optionselect[chatindex] = "It seems that my newest date bailed on me again. It's so 
										quiet and it doesn't seem to be a lot of people around 
										here, maybe that person over there wants to chat.";
				break;
				case 2:
					chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "It seems that my newest date bailed on me again. It's so 
										quiet and it doesn't seem to be a lot of people around 
										here, maybe that person over there wants to chat.";
				break;
			}
		break;		
					
//////////////////
// Shovel Knight /
//////////////////
		
		case 15: // SK - Date Girl is the one selecting dialogue options
			switch(chatindex){
		case 0:
			chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
			dialogue[chatindex] = "Oh! Thank you for coming today on such short 
								notice Callie.
								";
			nextindex = 1;
			expression_left = 15;
			expression_right = 0;
		break;
		
		case 1:
			chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
			dialogue[chatindex] = "As you know, Lovers Day is coming up and I want
								to get something for Shield Knight. 
								";
			nextindex = 2;
			expression_left = 15;
			expression_right = 0;
		break;
		case 2:
			chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
			dialogue[chatindex] = "We may be close partners, but this is the 
								perfect opportunity to get advice from who many
								say is a love expert.";
			optionselect[chatindex] = "That sounds wonderful! Let's pick out the best gift! 
								I'm not so sure love expert is the right word... 
								Blub.";
			answerselect = [3, 0, 90];
			is_unique = [false, true, false]; 
			return_unique = [0, 50, 0];
			expression_left = 15;
			expression_right = 0;
		break;
					case 3:
						chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
						dialogue[chatindex] = "Sharpen thy Shovel! There will be plenty of treasure 
											to dig up but not many gifts will be suitable for 
											my partner you see.";
						nextindex = 4;
						expression_left = 15;
						expression_right = 0;
					break;

					case 50:
						chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
						dialogue[chatindex] = "Nonsense! From all of the stories I've heard of townspeople
											finding true love after getting your advice I would even 
											call you Love Knight!";
						nextindex = 4;
						expression_left = 15;
						expression_right = 0;										
					break;

					case 90:
						chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
						dialogue[chatindex] = "Please don't insult me. The rumors of me being a fish 
											head are false. The last thing I'd want is people 
											thinking I'm related to a Teethalon";
						expression_left = 15;
						expression_right = 0;										
					break;

		case 4:
			chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
			dialogue[chatindex] = "Now, let us begin the conquest for the best Lovers Day
								gift for Shield Knight! 
								";
			nextindex = 5;
			expression_left = 15;
			expression_right = 0;
		break;
		
		case 5:
			chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
			dialogue[chatindex] = ". . . . . . . . . . . .
								
								";
			nextindex = 21;
			expression_left = 15;
			expression_right = 0;
		break;	
		
		case 21:
			chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
			dialogue[chatindex] = "This area of shops look promising. They're definitely no fancy
								hat shop but these will do for now. 
								";
			nextindex = 22;
			expression_left = 15;
			expression_right = 0;
		break;
		
		case 22:
			chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
			dialogue[chatindex] = "Let's look around Love Knight! With the two of us 
								I'm sure we can find something perfect for Shield Knight!
								";
			nextindex = 23;
			expression_left = 15;
			expression_right = 0;
		break;
		
		case 23:
			chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
			dialogue[chatindex] = ". . . . . . . . . . . .
								
								";
			nextindex = 24;
			expression_left = 15;
			expression_right = 0;
		break;	
		
		case 24:
			chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
			dialogue[chatindex] = "I've been meaning to ask, do you have any plans for
								Lovers Day? I'd assume you have someone of your own who
								you'd like to spend Lovers Day with!";
			optionselect[chatindex] = "I actually don't have any plans that day. 
								I have a date that day!
								I'm quiet busy that day.";
			answerselect = [25, 27, 28];
			is_unique = [false, false, false]; 
			return_unique = [0, 0, 0];
			expression_left = 15;
			expression_right = 0;
		break;	
		
		case 25:
			chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
			dialogue[chatindex] = "That's quiet shocking! With the title of Love Knight 
								I'm sure your standards are really high.
								";
			nextindex = 26;
			expression_left = 15;
			expression_right = 0;
		break;
		
		case 26:
			chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
			dialogue[chatindex] = "Don't fret young one, you'll find a partner as close 
								as Shield Knight and I are in due time! 
								";
			nextindex = 29;
			expression_left = 15;
			expression_right = 0;
		break;
		
		case 27:
			chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
			dialogue[chatindex] = "Love Knight true to their name! I wish you a successful			
								Lovers Day date!
								";
			nextindex = 29;
			expression_left = 15;
			expression_right = 0;
		break;
		
		case 28:
			chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
			dialogue[chatindex] = "Busy as always! You must be packed with helping
								the townspeople find true love that day.
								";
			nextindex = 29;
			expression_left = 15;
			expression_right = 0;
		break;	
		
		case 29:
			chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
			dialogue[chatindex] = "Now let's see, nothing in this shop look too appealing.
								Let's take a look over there.
								
								";
			nextindex = 19;
			expression_left = 15;
			expression_right = 0;
		break;	
		
		case 19:
			chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
			dialogue[chatindex] = ". . . . . . . . . . . .
								
								
								";
			nextindex = 6;
			expression_left = 15;
			expression_right = 0;
		break;	
		
	case 6:
		chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
		dialogue[chatindex] = "This is quiet the task. There's plenty of things I could
							collect for Shield Knight, but I want to make sure what 
							I get is the right choice.";
		optionselect[chatindex] = "A new weapon to polish up her fighting sounds cool! 
							Some jewelry would be nice, how about this amulet?
							Let's find some cute clothes, how about this one?";
		answerselect = [0, 0, 0];
		is_unique = [true, true, true]; 
		return_unique = [51, 56, 54];
		expression_left = 15;
		expression_right = 0;
	break;
	
		////////////////////////////////////////////
	
		// Lance
		case 51:
			chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
			dialogue[chatindex] = "Maybe I could buy her a lance! With a lance and 
								her trusty shield she would be an unstoppable force. 
								Able to attack from afar and stand her ground!";
			nextindex = 52;
			expression_left = 15;
			expression_right = 0;
		break;
		
		case 52:
			chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
			dialogue[chatindex] = "Then I could grab a nice new helmet. One with 
								extra big wings, something more.
								";
			nextindex = 53;
			expression_left = 15;
			expression_right = 0;
		break;
		
		case 53:
			chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
			dialogue[chatindex] = "That does sound like a nice gift, but I'm not sure 
								Shield Knight would want to spend Lovers Day thinking about
								fighting. I want this to be a special day.";
			nextindex = 7;
			expression_left = 15;
			expression_right = 0;
		break;

	case 7:
		chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
		dialogue[chatindex] = "Let's keep digging around.
							 
							";
		optionselect[chatindex] = "Some jewelry would be nice, how about this amulet?
							Let's find some cute clothes, how about this one?
							How about a new buckler, she always has one with her!";
		answerselect = [0, 0, 0];
		is_unique = [true, true, true]; 
		return_unique = [66, 64, 40];
		expression_left = 15;
		expression_right = 0;
	break;
		
		// Dress
		case 64:
			chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
			dialogue[chatindex] = "This outfit reminds me of Madam Meeber's clothing.
								Although I'm not a big fan of this pointy hat and pink
								doesn't fit Shield Knight very well.";
			nextindex = 65;
			expression_left = 15;
			expression_right = 0;
		break;
		
		case 65:
			chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
			dialogue[chatindex] = "She may be my beloved Shield Knight, but I'm not so
								sure she would wear this princess-like outfit. 
								";
			nextindex = 8;
			expression_left = 15;
			expression_right = 0;
		break;

	case 8:
		chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
		dialogue[chatindex] = "Let's keep digging around.
							 
							";
		optionselect[chatindex] = "Some jewelry would be nice, how about this amulet?
							How about a new buckler, she always has one with her!
							Maybe we should ask Shield Knight what she wants.";
		answerselect = [0, 0, 0];
		is_unique = [true, true, true]; 
		return_unique = [76, 40, 30];
		expression_left = 15;
		expression_right = 0;
	break;
	
		// Amulet
		case 76:
			chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
			dialogue[chatindex] = "Definitely not an amulet. I guess you wouldn't know this,
								but Shield Knight and I have had unfortunate encounters with
								amulets in the past.";
			nextindex = 20;
			expression_left = 15;
			expression_right = 0;
		break;
		// Ender
	
		// Amulet
		case 66:
			chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
			dialogue[chatindex] = "Definitely not an amulet. I guess you wouldn't know this,
								but Shield Knight and I have had unfortunate encounters with
								amulets in the past.";
			nextindex = 9;
			expression_left = 15;
			expression_right = 0;
		break;
		
	case 9:
		chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
		dialogue[chatindex] = "Let's keep digging around.
							 
							";
		optionselect[chatindex] = "Let's find some cute clothes, how about this one?
							How about a new buckler, she always has one with her!
							Maybe we should ask Shield Knight what she wants.";
		answerselect = [0, 0, 0];
		is_unique = [true, true, true]; 
		return_unique = [74, 40, 30];
		expression_left = 15;
		expression_right = 0;
	break;
		
		// Dress
		case 74:
			chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
			dialogue[chatindex] = "This outfit reminds me of Madam Meeber's clothing.
								Although I'm not a big fan of this pointy hat and pink
								doesn't fit Shield Knight very well.";
			nextindex = 75;
			expression_left = 15;
			expression_right = 0;
		break;
		
		case 75:
			chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
			dialogue[chatindex] = "She may be my beloved Shield Knight, but I'm not so
								sure she would wear this princess-like outfit. 
								";
			nextindex = 20;
			expression_left = 15;
			expression_right = 0;
		break;
		// Ender
		
		////////////////////////////////////////////
			// Dress
			case 54:
				chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
				dialogue[chatindex] = "This outfit reminds me of Madam Meeber's clothing.
									Although I'm not a big fan of this pointy hat and pink
									doesn't fit Shield Knight very well.";
				nextindex = 55;
				expression_left = 15;
				expression_right = 0;
			break;
			
			case 55:
				chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
				dialogue[chatindex] = "She may be my beloved Shield Knight, but I'm not so
									sure she would wear this princess-like outfit. 
									";
				nextindex = 10;
				expression_left = 15;
				expression_right = 0;
			break;

		case 10:
			chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
			dialogue[chatindex] = "Let's keep digging around.
								 
								";
			optionselect[chatindex] = "A new weapon to polish up her fighting sounds cool!
								Some jewelry would be nice, how about this amulet?
								How about a new buckler, she always has one with her!";
			answerselect = [0, 0, 0];
			is_unique = [true, true, true]; 
			return_unique = [61, 96, 40];
			expression_left = 15;
			expression_right = 0;
		break;

			// Lance
			case 61:
				chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
				dialogue[chatindex] = "Maybe I could buy her a lance! With a lance and 
									her trusty shield she would be an unstoppable force. 
									Able to attack from afar and stand her ground!";
				nextindex = 62;
				expression_left = 15;
				expression_right = 0;
			break;
			
			case 62:
				chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
				dialogue[chatindex] = "Then I could grab a nice new helmet. One with extra big
									wings too.  
									";
				nextindex = 63;
				expression_left = 15;
				expression_right = 0;
			break;
			
			case 63:
				chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
				dialogue[chatindex] = "That does sound like a nice gift, but I'm not sure 
									Shield Knight would want to spend Lovers Day thinking about
									fighting. I want this to be a special day.";
				nextindex = 8;
				expression_left = 15;
				expression_right = 0;
			break;

			// Amulet
			case 96:
				chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
				dialogue[chatindex] = "Definitely not an amulet. I guess you wouldn't know this,
									but Shield Knight and I have had unfortunate encounters with
									amulets in the past.";
				nextindex = 11;
				expression_left = 15;
				expression_right = 0;
			break;
			
		case 11:
			chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
			dialogue[chatindex] = "Let's keep digging around.
								 
								";
			optionselect[chatindex] = "A new weapon to polish up her fighting sounds cool!
								How about a new buckler, she always has one with her!
								Maybe we should ask Shield Knight what she wants.";
			answerselect = [0, 0, 0];
			is_unique = [true, true, true]; 
			return_unique = [71, 40, 30];
			expression_left = 15;
			expression_right = 0;
		break;

			// Lance
			case 71:
				chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
				dialogue[chatindex] = "Maybe I could buy her a lance! With a lance and 
									her trusty shield she would be an unstoppable force. 
									Able to attack from afar and stand her ground!";
				nextindex = 72;
				expression_left = 15;
				expression_right = 0;
			break;
			
			case 72:
				chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
				dialogue[chatindex] = "Then I could grab a nice new helmet. One with extra big
									wings too.  
									";
				nextindex = 73;
				expression_left = 15;
				expression_right = 0;
			break;
			
			case 73:
				chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
				dialogue[chatindex] = "That does sound like a nice gift, but I'm not sure 
									Shield Knight would want to spend Lovers Day thinking about
									fighting. I want this to be a special day.";
				nextindex = 20;
				expression_left = 15;
				expression_right = 0;
			break;
			
					////////////////////
					// Amulet
					case 56:
						chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
						dialogue[chatindex] = "Definitely not an amulet. I guess you wouldn't know this,
											but Shield Knight and I have had unfortunate encounters with
											amulets in the past.";
						nextindex = 12;
						expression_left = 15;
						expression_right = 0;
					break;

				case 12:
					chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Let's keep digging around.
										 
										";
					optionselect[chatindex] = "A new weapon to polish up her fighting sounds cool!
										Let's find some cute clothes, how about this one?
										How about a new buckler, she always has one with her!";
					answerselect = [0, 0, 0];
					is_unique = [true, true, true]; 
					return_unique = [81, 84, 40];
					expression_left = 15;
					expression_right = 0;
				break;			

					// Dress
					case 84:
						chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
						dialogue[chatindex] = "This outfit reminds me of Madam Meeber's clothing.
											Although I'm not a big fan of this pointy hat and pink
											doesn't fit Shield Knight very well.";
						nextindex = 85;
						expression_left = 15;
						expression_right = 0;
					break;
					
					case 85:
						chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
						dialogue[chatindex] = "She may be my beloved Shield Knight, but I'm not so
											sure she would wear this princess-like outfit. 
											";
						nextindex = 11;
						expression_left = 15;
						expression_right = 0;
					break;

					// Lance
					case 81:
						chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
						dialogue[chatindex] = "Maybe I could buy her a lance! With a lance and 
											her trusty shield she would be an unstoppable force. 
											Able to attack from afar and stand her ground!";
						nextindex = 82;
						expression_left = 15;
						expression_right = 0;
					break;
					
					case 82:
						chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
						dialogue[chatindex] = "Then I could grab a nice new helmet. One with extra big
											wings too.  
											";
						nextindex = 83;
						expression_left = 15;
						expression_right = 0;
					break;
					
					case 83:
						chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
						dialogue[chatindex] = "That does sound like a nice gift, but I'm not sure 
											Shield Knight would want to spend Lovers Day thinking about
											fighting. I want this to be a special day.";
						nextindex = 9;
						expression_left = 15;
						expression_right = 0;
					break;


	case 20:
		chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
		dialogue[chatindex] = "None of these ideas seem like the best for Shield Knight.
							We should look around a bit more. I see her as my equal, so 
							I feel like the gift should be well thought out.";
		optionselect[chatindex] = "I give up I have no clue what she might want. 
							How about a new buckler, she always has one with her!
							Maybe we should ask Shield Knight what she wants.";
		answerselect = [0, 0, 0];
		is_unique = [true, true, true]; 
		return_unique = [120, 40, 30];
		expression_left = 15;
		expression_right = 0;
	break;
	
	// Ask Shield Knight
	case 30:
		chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
		dialogue[chatindex] = "Ask Shield Knight!? 

							";
		nextindex = 31;
		expression_left = 15;
		expression_right = 0;
	break;
	
	// Ask Shield Knight
	case 31:
		chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
		dialogue[chatindex] = "Although I'd like this gift to be a surprise, she's the 
							only person who knows herself better than me.
							";
		nextindex = 32;
		expression_left = 15;
		expression_right = 0;
	break;
	
	// Ask Shield Knight
	case 32:
		chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
		dialogue[chatindex] = "For the sake of Lovers Day I think we should continue
							looking for a gift on our own. There's a shop over there
							that looks promising";
		nextindex = 33;
		expression_left = 15;
		expression_right = 0;
	break;

	// Ask Shield Knight
	case 33:
		chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
		dialogue[chatindex] = ". . . . . . . . . . . .
							
							";
		nextindex = 34;
		expression_left = 15;
		expression_right = 0;
	break;
	
	// Ask Shield Knight
	case 34:
		chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
		dialogue[chatindex] = "What do you have right there Love Knight?
							
							";
		nextindex = 40;
		expression_left = 15;
		expression_right = 0;
	break;	
	
	// A Buckler
	case 40:
		chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
		dialogue[chatindex] = "A buckler? This would be the perfect gift for Shield Knight!
							With how beaten down her old one has gotten she would love 
							a brand new one!";
		nextindex = 41;
		expression_left = 15;
		expression_right = 0;
	break;

	// A Buckler
	case 41:
		chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
		dialogue[chatindex] = "Love Knight you have done it once again! The rumors from the
							townspeople were true after all.
							";
		nextindex = 42;
		expression_left = 15;
		expression_right = 0;
	break;
	
	// A Buckler
	case 42:
		chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
		dialogue[chatindex] = "I have to thank you for listening to me talk about Shield
							Knight all day. Now let us strike this store and find the 
							perfect buckler for Lovers Day!";
		expression_left = 15;
		expression_right = 0;
	break;

	// Giveup
	case 120:
		chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
		dialogue[chatindex] = "Do not worry young one. You tried your hardest, it was
							foolish of me to trouble you with my quest of love.
							";
		nextindex = 121;
		expression_left = 15;
		expression_right = 0;
	break;

	// Giveup
	case 121:
		chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
		dialogue[chatindex] = "For shovelry I'll find the best gift for Shield Knight
							another time! You may not be a Love Knight but you did your
							best. I enjoyed our time today, safe travels.";
		expression_left = 15;
		expression_right = 0;
	break;
			
			}
		break;		
				
		case 2105940891: // Siren
			visual_bg = sprite_get("date_bg");
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Huh? Oh sorry I'm not sure we've met..
										Maybe we can speak another time, in the near future when
										my strength is back.
										"
					nextindex = 1;
					expression_left = 0;
					expression_right = 17;
				break;
				case 1:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Huh? Oh! You must be thinking this is such an odd place for 
										a date right? Well after it appeared that fateful day all 
										I could think about was coming here and seeing it in person.";
					nextindex = 2;
				break;
				case 2:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "No one really understands why it appeared in the first
										place and no one has ever made it to the top that we know
										of. This place is truly a mystery.";
					nextindex = 3;
				break;
				case 3:
					chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Of course this place is closed off now and is just a tourist
										destination. But I want to understand why this tower sits 
										so lonely; standing in an empty field, so dull and green.";
					optionselect[chatindex] = "Maybe we should try and climb it.
										You seem to know a lot about this Tower.
										Are you lonely?";
					answerselect = [4, 0, 8];
					is_unique = [false, true, false]; 
					return_unique = [0, 22, 0];
				break;
			}
		break;
	}
}

if (DG_chat_num == 2 && isTaunt){
	with (asset_get("obj_stage_main")){
		if (variable_instance_exists(id, "Chatting")){
			if ("Chatting" in self && Chatting){
				other.workshop_date = true;
				other.ChatNumber = url;
				
				other.dialogue[other.chatindex] = DG_dialogue[other.chatindex];
				other.chattingoptions[other.chatindex] = DG_chat_type[other.chatindex];
				
				if (DG_chat_type[other.chatindex] == 1){
					other.optionselect[other.chatindex] = DG_options[other.chatindex];
				}
	
				if (variable_instance_exists(id, "DG_right_speaker")){
					if (DG_right_speaker[other.chatindex]){
						other.right_speaker = true;
						other.right_dialogue[other.chatindex] = DG_dialogue_right[other.chatindex];
					}
					else {
						other.right_speaker = false;
					}
				}
				
				if (variable_instance_exists(id, "DG_adopts_color_left")){
						other.adopts_color_left = DG_adopts_color_left[other.chatindex];
				}

				if (variable_instance_exists(id, "DG_adopts_color_right")){
						other.adopts_color_right = DG_adopts_color_right[other.chatindex];
				}

				if (variable_instance_exists(id, "DG_custom_left_portrait")){
					other.expression_left = DG_left_strip[other.chatindex];
					other.custom_left = DG_portrait;
					other.workshop_left = DG_custom_left_portrait[other.chatindex];
				}

				if (variable_instance_exists(id, "DG_custom_right_portrait")){
					other.expression_right = DG_right_strip[other.chatindex];
					other.custom_right = DG_portrait;
					other.workshop_right = DG_custom_right_portrait[other.chatindex];
				}

				if (DG_chat_type[other.chatindex] == 2){
					other.nextindex = DG_nextindex[other.chatindex];
				}
					
				if (DG_chat_type[other.chatindex] == 1){
					other.answerselect = DG_answers[other.chatindex];
					if (variable_instance_exists(id, "DG_unique")){
						other.is_unique = DG_unique[other.chatindex] ;
					}
					if (variable_instance_exists(id, "return_unique")){
						other.return_unique = DG_return[other.chatindex];			
					}
				}
			}		
		}
		else {
			other.ChatNumber = 30;
		}
	}

	if (ChatNumber == 0){
		ChatNumber = get_stage_data(SD_ID);
	}
	
	adopts_color_left = true;
	adopts_color_right = true;
	switch(ChatNumber){
		case 30: // If Workshop Stage
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "I don't know much about this place...
										 
										";
					nextindex = 1;
					expression_right = 1;
					expression_left = 0;
				break;
				case 1:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "It's nice to walk around and learn more. I'd love
										become an expert on this location and then tell everyone
										all about here. Maybe I could become a tour guide!";
					nextindex = 2;
				break;
			}
		break;
		case 0: // Error
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "It seems like this place isn't real
										
										";
					nextindex = 1;
					expression_right = 1;
					expression_left = 0;
				break;
			}
		break;
		
		// Name:   Treetop L.   Fire C.   Air A.   Rock W.   Merchant P.   [Blank]   Blazing H.   T.o.F.   Tempest P.   Frozen F.
   		// Cases:      1          2         3        4            5           6          7          8          9            10     
		
		// Name:   Aetheral G.   Endless A.   [Blank]   C.E.O.   Spirit T.  T Grid X   Neo F.C.   Swamp E.   Forest F.   Julesvale   
		// Cases:     11		    12          13       14        15          16         17        18          19          20

		// Name:   Troupple P.   Practice R.   Aether High   Pridemoor K.   Frozen G.   Tutorial G.   ROA Ring   [Blank]   Tetherball
		// Cases:      21            22             23            24           25          26            27         28         29
		
		case 1: // Tree - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Treetop Lodge
										Stage Dialogue - Coming Soon!
										 
										";
					expression_right = 1;
					expression_left = 0;
				break;
			}
		break;	
		
		case 2: // Fire Capitol - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Fire Capitol
										Stage Dialogue - Coming Soon!
										 
										";
					expression_right = 1;
					expression_left = 0;
				break;
			}
		break;	
		
		case 3: // Air Armada - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Air Armada
										Stage Dialogue - Coming Soon!
										 
										";
					expression_right = 1;
					expression_left = 0;
				break;
			}
		break;	
		
		case 4: // Rock Wall - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Rock Wall
										Stage Dialogue - Coming Soon!
										 
										";
					expression_right = 1;
					expression_left = 0;
				break;
			}
		break;	
		
		case 5: // Merchant Port - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Merchant Port
										Stage Dialogue - Coming Soon!
										 
										";
					expression_right = 1;
					expression_left = 0;
				break;
			}
		break;	
		
		
		case 7: // Blazing Hideout - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Blazing Hideout
										Stage Dialogue - Coming Soon!
										 
										";
					expression_right = 1;
					expression_left = 0;
				break;
			}
		break;	
		
		case 8: // Tower of Heaven
			
			visual_bg = sprite_get("date_bg");
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "I can't believe this size of this place. I get why they
										call it the Tower of Heaven. Seeing it in person is 
										truly a sight to behold... What do you think is at the top?";
					nextindex = 1;
					expression_right = 1;
					expression_left = 0;
				break;
				case 1:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Huh? Oh! You must be thinking this is such an odd place for 
										a date right? Well after it appeared that fateful day all 
										I could think about was coming here and seeing it in person.";
					nextindex = 2;
				break;
				case 2:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "No one really understands why it appeared in the first
										place and no one has ever made it to the top that we know
										of. This place is truly a mystery.";
					nextindex = 3;
				break;
				case 3:
					chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Of course this place is closed off now and is just a tourist
										destination. But I want to understand why this tower sits 
										so lonely; standing in an empty field, so dull and green.";
					optionselect[chatindex] = "Maybe we should try and climb it.
										You seem to know a lot about this Tower.
										Are you lonely?";
					answerselect = [4, 0, 8];
					is_unique = [false, true, false]; 
					return_unique = [0, 22, 0];
				break;
				case 4:
					chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Are you crazy? We'd get in so much trouble if we 
										attempted to climb this. Not only would we get in 
										trouble by law enforcements, we might never come back!";
					optionselect[chatindex] = "Never come back? What do you mean?
										I'm only here to break rules!
										Bwak Bwak, you're such a chicken!";
					answerselect = [0, 0, 0];
					is_unique = [true, true, true]; 
					return_unique = [23, 24, 25];
				break;
				case 22:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "I wouldn't say that, but I find this place fascinating.
										 
										";
					nextindex = 5;
				break;
				case 23:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Don't you know? This tower is said to be a death trap.
										
										";
					nextindex = 5;
				break;
				case 5:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "There have been stories of climbers returning, fearful 
										of a voice in their head. Explaining rules and laws that
										the tower is faithful to and that all must follow.";
					nextindex = 6;
					break;
					
				case 6:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Suddenly seeing their companions fall victim to these 
										absurd laws; Turning to gold, plants that make you fall 
										ill if you touch them, and other frightening stories.";
					nextindex = 7;
				break;
				case 7:
					chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "I wouldn't go inside that thing even if it meant saving the 
										world! Despite all of that, I still find this tower filled with 
										so much mystery and intrigue. I can't look away from it.";
					optionselect[chatindex] = "That doesn't sound too scary to me!
										Well now I don't wanna climb it.
										...";
					answerselect = [0, 11, 12];
					is_unique = [true, false, false]; 
					return_unique = [24, 0, 0];
				break;
				case 8:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "I would't say I'm lonely perhaps, but when I look at this 
										tower I have a sense of melancholy.";
					nextindex = 9;
					break;
				case 9:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "As we were getting closer to the tower I said to myself, 
										'Look how clean it splits the horizon in two'
										";
					nextindex = 10;
					break;
				case 10:
					chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "How can something make the beautiful horizon look so empty 
										and unfulfilled. A divide that makes it's surroundings feel 
										so empty, and at the center a lonely tower.";
					optionselect[chatindex] = "When you put it that way I feel the same.
										You're just as beautiful as the horizon.
										...";
					answerselect = [0, 17, 13];
					is_unique = [true, false, false]; 
					return_unique = [26, 0, 0];
				break;
				case 24:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Don't be silly, I wouldn't want you to get hurt. What
										would happen if you hadn't returned or mysteriously 
										vanished? Don't make me worry like that.";
				break;
				case 25:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Hey don't make fun of me, maybe if you weren't so 
										insensitive and childish you'd have at least a little 
										concern for me. But clearly you don't."; 
					nextindex = 29;
				break;
				case 29:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Don't talk to me for the rest of this trip."; 
				break;
				case 11:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Yeah, don't you find it strange how people would still dare to 
										climb the tower. Even at the risk of hearing these laws and 
										learning about people who would never return.";
					nextindex = 12;
				break;
				case 12:
					chattingoptions[chatindex] = 1; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "It's like something would call to them. Maybe that voice, 
										or a feeling in their gut. Beckoning them for something at 
										the tower. Riches, power, or maybe just answers.";
					optionselect[chatindex] = "Seems like it's calling you to the tower too.
										I wonder why people want to reach the top.
										...";
					answerselect = [0, 18, 13];
					is_unique = [true, false, false]; 
					return_unique = [27, 0, 0];
				break;				
				case 13:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Quiet I see, that's ok. Maybe we can sit here with 
										our own thoughts for a moment...
										";
				break;
				case 26:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Right. The loneliness of the tower has some sort of 
										aura that makes me want to find answers, but I'm 
										not even sure what the questions are.";
					nextindex = 14;
				break;
				case 27:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "So you HAVE been paying attention, you'd be right though. 
										The tower is calling to me. I want to find answers, 
										but I'm not sure what to ask.";
					nextindex = 14;
				break;
				case 14:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "In a way, it beckons towards me. I guess I want to 
										understand it more, a giant tower that suddenly filled 
										the skies of this empty field. I feel a closeness to it.";
					nextindex = 15;
				break;
				case 15:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "What purpose do we both have in this world? A mysterious 
										girl and a lonesome tower that suddenly appeared where 
										they shouldn't.";
					nextindex = 16;
				break;
				case 16:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Let's sit here for a second in peace. I feel as I might be 
										understanding that there's something more to this place 
										than just 'what's at the top of the tower.'";
				break;
				case 17:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Oh? th-thank you, I'm not really sure what to say. 
										That seemed to come out of nowhere. umm, yeah. 
										Let's just watch the tower for a bit.";
				break;
				case 18:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "I like to imagine something in their heart wants them to 
										make it to the top. Trying so hard to climb this tower of 
										strange laws and rules against all odds.";
					nextindex = 19;
				break;
				case 19:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Set on reaching their their goal at the very top of 
										the tower. I find it inspiring but also a little sad. 
										It's just like how we live our lives."; 
					nextindex = 20;
				break;
				case 20:
					chattingoptions[chatindex] = 2; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "We have to abide by these rules set by society, with 
										powerful voices that mignt not want all of us to make 
										it to the top."; 
					nextindex = 21;
				break;
				case 21:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "But despite all odds, some of us will continue to push 
										on forward.
										";					
				break;		
			}
		break;
		
		case 9: // Tempest Peak - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Tempest Peak
										Stage Dialogue - Coming Soon!
										 
										";
					expression_right = 1;
					expression_left = 0;
				break;
			}
		break;	
		
		case 10: // Frozen Forest - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Frozen [B]ort
										Stage Dialogue - Coming Soon!
										 
										";
					expression_right = 1;
					expression_left = 0;
				break;
			}
		break;	
		
		case 11: // Aetheral Gates - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Aetheral Gates
										Stage Dialogue - Coming Soon!
										 
										";
					expression_right = 1;
					expression_left = 0;
				break;
			}
		break;	
		
		case 12: // Endless Abyss - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Endless Abyss
										Stage Dialogue - Coming Soon!
										 
										";
					expression_right = 1;
					expression_left = 0;
				break;
			}
		break;	
		
		case 14: // CEO Ring - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "CEO Ring
										Stage Dialogue - Coming Soon!
										 
										";
					expression_right = 1;
					expression_left = 0;
				break;
			}
		break;	
		
		case 15: // Spirit Tree - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Spirit Tree
										Stage Dialogue - Coming Soon! 
										";
					expression_right = 1;
					expression_left = 0;
				break;
			}
		break;	
		
		case 16: // Tutorial Grid X - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Tutorial Grid X
										Stage Dialogue - Coming Soon!
										 
										";
					expression_right = 1;
					expression_left = 0;
				break;
			}
		break;	
		
		case 17: // Neo Fire - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Neo Fire Capitol
										Stage Dialogue - Coming Soon!
										 
										";
					expression_right = 1;
					expression_left = 0;
				break;
			}
		break;	
		
		case 18: // Swampy - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Froggy House
										Stage Dialogue - Coming Soon!
										 
										";
					expression_right = 1;
					expression_left = 0;
				break;
			}
		break;	
		
		case 19: // Forest Floor - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Forest Floor
										Stage Dialogue - Coming Soon!
										 
										";
					expression_right = 1;
					expression_left = 0;
				break;
			}
		break;	
		
		case 20: // Julesvale - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Julesvale
										Stage Dialogue - Coming Soon!
										 
										";
					expression_right = 1;
					expression_left = 0;
				break;
			}
		break;	
		
		case 21: // Tempest Peak - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Troupple Pond
										Stage Dialogue - Coming Soon!
										 
										";
					expression_right = 1;
					expression_left = 0;
				break;
			}
		break;	
		
		case 22: // Practice Room - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Practice Room Sucks
										Stage Dialogue - Coming Soon!
										 
										";
					expression_right = 1;
					expression_left = 0;
				break;
			}
		break;	
		
		case 23: // Aether High - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "I don't want to talk about this place...
										 
										";
					expression_right = 1;
					expression_left = 0;
				break;
			}
		break;	

		case 24: // Pride Keep - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Pridemoor Keep
										Stage Dialogue - Coming Soon!
										 
										";
					expression_right = 1;
					expression_left = 0;
				break;
			}
		break;	

		case 25: // Frozen Gates - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Get Iced Dummy
										Stage Dialogue - Coming Soon!
										 
										";
					expression_right = 1;
					expression_left = 0;
				break;
			}
		break;	

		case 26: // Tutorial Grid - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Tutorial Grid
										Stage Dialogue - Coming Soon!
										 
										";
					expression_right = 1;
					expression_left = 0;
				break;
			}
		break;	

		case 27: // RoA Ring - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "RoA Ring
										Stage Dialogue - Coming Soon!
										 
										";
					expression_right = 1;
					expression_left = 0;
				break;
			}
		break;	

		case 29: // Tetherball - Date Girl is the one selecting dialogue options
			switch(chatindex){
				case 0:
					chattingoptions[chatindex] = 3; // If 1, option select.. if 2, then more dialogue... if 3, then end dialogue
					dialogue[chatindex] = "Tetherball
										Stage Dialogue - Coming Soon!
										 
										";
					expression_right = 1;
					expression_left = 0;
				break;
			}
		break;	
	}
}