//
stateTimer += 1

/*Test Code
if stateTimer % 120 = 119 {
	if plantType > 7 {
		plantType = 0	
	} else {
		plantType += 1
	}
}
*/
if free {
	if vsp < 10 {
		vsp += .25
	}
}

switch(plantState) {
case 0: //Throw
if !free {
	plantState = 1
	stateTimer = 0
	image_index = 0
} 
break;
case 1: //Grow
player_id.plantRespawn = 1
sprite_index = sprite_get("plantGrow"); 
image_index = (round(stateTimer / 5) % 4) // (round(stateTimer / [Speed]) % [Frames])
if stateTimer >= 20 {
	stateTimer = 0
	image_index = 0
	plantState = 2
}
break;
case 2: //Idle
plantless = 0
player_id.plantRespawn = 0
image_index = (round(stateTimer / 10) % 4)
switch(plantType) {
	case 0:
	sprite_index = sprite_get("plantSun"); 
	break;
	case 1:
	sprite_index = sprite_get("plantPea"); 
	break;
	case 2:
	sprite_index = sprite_get("plantSquash"); 
	break;
	case 3:
	sprite_index = sprite_get("plantIce"); 
	break;
	case 4:
	sprite_index = sprite_get("plantBonk"); 
	break;
	case 5:
	sprite_index = sprite_get("plantCherry"); 
	break;
	case 6:
	sprite_index = sprite_get("plantBean"); 
	break;
	case 7:
	sprite_index = sprite_get("plantReed"); 
	break;
	default:
	break;
}
if player_id.state_cat != SC_HITSTUN {
	if (player_id.special_pressed && player_id.plantCooldown == 0) && !(((player_id.attack == AT_NSPECIAL && player_id.special_down) || player_id.attack == AT_USPECIAL || player_id.attack == AT_DSPECIAL || player_id.attack == AT_DSPECIAL_AIR) && (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR)) && !(player_id.state = PS_RESPAWN) {
		if (player_id.left_down || player_id.left_pressed) && !(player_id.right_down || player_id.right_pressed) {
			spr_dir = -1
		} else {
			if !(player_id.left_down || player_id.left_pressed) && (player_id.right_down || player_id.right_pressed) {
				spr_dir = 1
			}
		}
		stateTimer = 0
		plantState = 3
		plantWindow = 0
		plantWindowTimer = 0
	}
	if (player_id.special_pressed && player_id.plantCooldown > 0 && player_id.plantSun > 0 && plantType != 0) && !(((player_id.attack == AT_NSPECIAL && player_id.special_down) || player_id.attack == AT_USPECIAL || player_id.attack == AT_DSPECIAL) && (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR)) {
		player_id.plantSun -= 1
		if (player_id.left_down || player_id.left_pressed) && !(player_id.right_down || player_id.right_pressed) {
			spr_dir = -1
		} else {
			if !(player_id.left_down || player_id.left_pressed) && (player_id.right_down || player_id.right_pressed) {
				spr_dir = 1
			}
		}
		stateTimer = 0
		plantState = 3
		plantWindow = 0
		plantWindowTimer = 0
	}
}

break;

case 3:
player_id.plantRespawn = 1
player_id.plantCooldown = player_id.plantCool[0, plantType]
player_id.plantMaxCooldown = player_id.plantCool[0, plantType]
if plantHitpause <= 0 {
	plantWindowTimer += 1
	if plantWindowTimer = player_id.plantData[plantType,plantWindow] {
		plantWindow += 1
		plantWindowTimer = 0
		if plantWindow == 8 {
			stateTimer = 0
			plantState = 2
			plantWindow = 0
			plantWindowTimer = 0
		}
	}
} else {
	plantHitpause -= 1
	break;
}

switch(plantType) {
	case 0:
	if (player_id.sunflowerAttack == 0) {
	sprite_index = sprite_get("plantSunAttack1"); 
		player_id.plantData[0] = [5, 5, 5, 5, 5, 10, 5, 5] //Sun
		if (plantWindow == 5 && plantWindowTimer == 0 && plantHitpause == 0 ) {
			create_hitbox(AT_EXTRA_2, 9, x, y - 24);
			sound_play(sound_get("throw"))
		}
	} else {

		player_id.plantData[0] = [5, 5, 5, 10, 10, 10, 10, 10] //Solar Beam	
		sprite_index = sprite_get("plantSunAttack2"); 		
		if (plantWindow == 0 && plantWindowTimer == 1 && plantHitpause == 0 ) {
			player_id.plantSun = 0
		}
		if (plantWindow == 2 && plantWindowTimer == 0 && plantHitpause == 0 ) {
			sound_play(asset_get("sfx_boss_laser"))
		}
		if (plantWindow == 3 && plantWindowTimer == 0 && plantHitpause == 0 ) {
			create_hitbox(AT_EXTRA_2, 10, x + (spr_dir * 26), y - 46);
			for (i = 0; i < 32; i++) {
			create_hitbox(AT_EXTRA_2, 11, x + (spr_dir * (i * 20)) + (spr_dir * 26), y - 46 - (i * 20));
			}
			//sound_play(sound_get("throw"))
		}
	}
	break;
	case 1:
	sprite_index = sprite_get("plantPeaAttack"); 
		if (plantWindow == 3 && plantWindowTimer == 0 && plantHitpause == 0 ) {
			sound_play(sound_get("throw2"))
		}
		if (plantWindow == 3 && plantWindowTimer == 0 && plantHitpause == 0 ) {
			create_hitbox(AT_EXTRA_2, 2, x + (spr_dir * 16), y - 42);
		}
	break;
	case 2:
	sprite_index = sprite_get("plantSquashAttack"); 
		if (plantWindow == 0 && plantWindowTimer == 1 && plantHitpause == 0 ) {
			sound_play(sound_get("squash_hmm"))
		}
		if (plantWindow == 4 && plantWindowTimer == 0 && plantHitpause == 0 ) {
			plantless = 1
		}
		if (plantWindow == 6 && plantWindowTimer == 0 && plantHitpause == 0 ) {
			create_hitbox(AT_EXTRA_2, 3, x + (spr_dir * 50), y - 70);
		}
	break;
	case 3:
	sprite_index = sprite_get("plantIceAttack"); 
	if (plantWindow == 3 && plantWindowTimer == 0 && plantHitpause == 0 ) {
		sound_play(asset_get("sfx_ice_shatter"))
		create_hitbox(AT_EXTRA_2, 12, x, y - 30);
	}
	if (plantWindow == 4 && plantWindowTimer == 0 && plantHitpause == 0 ) {
		plantless = 1
	}
	break;
	case 4:
	sprite_index = sprite_get("plantBonkAttack"); 
		if (plantWindow == 2 && plantWindowTimer == 0 && plantHitpause == 0 ) {
			create_hitbox(AT_EXTRA_2, 7, x + (spr_dir * 25), y - 25);
			sound_play(asset_get("sfx_swipe_weak1"))
		}
		if (plantWindow == 4 && plantWindowTimer == 0 && plantHitpause == 0 ) {
			create_hitbox(AT_EXTRA_2, 8, x + (spr_dir * 30), y - 50);
			sound_play(asset_get("sfx_swipe_medium1"))
		}
		if (plantWindow == 2 && plantWindowTimer == 5 && plantHitpause == 0 ) {
			if player_id.special_down {
				plantWindow = 0
				plantWindowTimer = 0
			}
		}
	break;
	case 5:
	sprite_index = sprite_get("plantCherryAttack"); 
		if (plantWindow == 0 && plantWindowTimer == 1 && plantHitpause == 0 ) {
			sound_play(sound_get("reverse_explosion"))
		}
		if (plantWindow == 6 && plantWindowTimer == 0 && plantHitpause == 0 ) {
			create_hitbox(AT_EXTRA_2, 13, x, y - 64);
			sound_play(sound_get("cherrybomb"))
			plantless = 1
		}
	break;
	case 6:
	sprite_index = sprite_get("plantBeanAttack"); 
		if (plantWindow == 2 && plantWindowTimer == 0 && plantHitpause == 0 ) {
			sound_play(asset_get("sfx_swipe_weak1"))
		}
		if (plantWindow == 3 && plantWindowTimer == 0 && plantHitpause == 0 ) {
			create_hitbox(AT_EXTRA_2, 1, x, y - 50);
		}
	break;
	case 7:
	sprite_index = sprite_get("plantReedAttack"); 
		if (plantWindow == 0 && plantWindowTimer == 1 && plantHitpause == 0 ) {
			sound_play(asset_get("sfx_absa_whip2"))
		}
		if (plantWindow == 2 && plantWindowTimer == 0 && plantHitpause == 0 ) {
			create_hitbox(AT_EXTRA_2, 4, x + (spr_dir * 300), y - 128);
			for (i = 0; i < 32; i++) {
			create_hitbox(AT_EXTRA_2, 5, x + (spr_dir * (i * 19)), y - 48 - (i * 5));
			}
		}
	break;
	default:
	break;
}


image_index = plantWindow
break;
case 4: //Death
player_id.plantRespawn = 1
player_id.plantCooldown = 90
player_id.plantMaxCooldown = 90
if plantless == 0 { 
	switch(plantType) {
		case 0:
		sprite_index = sprite_get("plantSunHurt"); 
		break;
		case 1:
		sprite_index = sprite_get("plantPeaHurt"); 
		break;
		case 2:
		sprite_index = sprite_get("plantSquashHurt"); 
		break;
		case 3:
		sprite_index = sprite_get("plantIceHurt"); 
		break;
		case 4:
		sprite_index = sprite_get("plantBonkHurt"); 
		break;
		case 5:
		sprite_index = sprite_get("plantCherryHurt"); 
		break;
		case 6:
		sprite_index = sprite_get("plantBeanHurt"); 
		break;
		case 7:
		sprite_index = sprite_get("plantReedHurt"); 
		break;
		default:
		break;
	}
} else {
	sprite_index = sprite_get("plantPotHurt"); 	
}

if stateTimer >= 30 {
	player_id.plant[0] = -4
	player_id.plantRespawn = 0
	instance_destroy()
}

break;
case 5://Taunt
player_id.plantRespawn = 1
break;
case 6://Plant Food (Final Smash) in the future.
player_id.plantRespawn = 1
break;
default:
break;
}

if plantState != 4 {
	with pHitBox { // Counter Play
		if !(player_id == other.player_id) {
			if place_meeting(x,y,other) {
				if type != 2 {
					player_id.old_hsp = player_id.hsp
					player_id.old_vsp = player_id.vsp
					player_id.hitpause = 1
					player_id.hitstop += hitpause
				}
				other.stateTimer = 0
				other.plantState = 4
				other.plantWindow = 0
				other.plantWindowTimer = 0
				if enemies == 0 {
					hitbox_timer = length
				}
				spawn_hit_fx( x + hit_effect_x, y + hit_effect_y, hit_effect );
				sound_play(sound_effect)
				with other {
					spawn_hit_fx( x, y, 301 );
					sound_play(asset_get("sfx_syl_nspecial_flowerhit"))
				}
			}
		}
	}
}

if (y > room_height || x > room_width || x < 0) {
	player_id.plantRespawn = 0
	player_id.plant[0] = -4
	instance_destroy()
}
