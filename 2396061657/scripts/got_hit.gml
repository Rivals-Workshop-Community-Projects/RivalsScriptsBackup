// got_hit.gml
// call when you get hit by a player
// Use hit_player_obj to reference the player object that hit you. 
// Use hit_player to reference which player hit you
// Use enemy_hitboxID to reference the hitbox you were hit with.
// To change the knockback received, edit orig_knock

// Sets current meter to 0 

/*
got_hitFspecial = true;
isFspecial = false;
meter_damage = floor(enemy_hitboxID.damage);
LoveMeter = clamp(LoveMeter - floor(meter_damage * 2.5), 0, 200);
*/

//////////////////////////////
// Old Got Hit Formula

if (isFspecial){
	got_hitFspecial = true;
	isFspecial = false;
}

////////////////////////////


if (focus_attack){
//	if (enemy_hitboxID.type == 2){
		var recovered_hearts = enemy_hitboxID.damage * 10;
		LoveMeter = clamp(floor(LoveMeter + LoveStorage + recovered_hearts), 0, 200);
		LoveStorage = 0;

		var a_gain = recovered_hearts div 100
		var b_gain = recovered_hearts div 10
	
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

//	}
}

if (focus_attack){
	focus_attack = false;
	focus_armorbreak = true;
}
	
// Turns opponents status effects off if Date Girl is in specific states
with (hit_player){
	
//	hitpause = false;
//	hitstop = 0;

	if ((other.attack == AT_DTHROW || other.attack == AT_FSPECIAL) && (other.prev_state == PS_ATTACK_GROUND || other.prev_state == PS_ATTACK_AIR)){
		if ("isCandy" in self){
			if (isCandy){
				CandyCounter = 0;
				CCheck = 0;
				candy_id = noone;
				isCandy = false;
			}
		}
	}

	if ((other.attack == AT_UTHROW || other.attack == AT_FSPECIAL) && (other.prev_state == PS_ATTACK_GROUND || other.prev_state == PS_ATTACK_AIR)){	
		if ("isBalloon" in self){
			if (isBalloon){
				BalloonCounter = 0;
				balloon_id = noone;
				isBalloon = false;
				
				if (Balloon_hitstun_grav != 0){
					hitstun_grav = Balloon_hitstun_grav;
				}
			}
		}
	}

	if ((other.attack == AT_FTHROW || other.attack == AT_FSPECIAL) && (other.prev_state == PS_ATTACK_GROUND || other.prev_state == PS_ATTACK_AIR)){
		if ("isThorn" in self){	
			if (isThorn){
				ThornCounter = 0;
				thorn_id = noone;
				isThorn = false;
			}
		}
	}
	
	if ((other.attack == AT_NTHROW || other.attack == AT_FSPECIAL) && (other.prev_state == PS_ATTACK_GROUND || other.prev_state == PS_ATTACK_AIR)){
		if ("isRibbon" in self){	
			if (isRibbon){
			hitpause = false;
			hitstop = 0;
			extra_hitpause = 0;
			can_special = true;
			vsp = -5;
			RibbonCounter = 0;
			ribbon_id = noone;
			isRibbon = false;
			}
		}
	}
}
