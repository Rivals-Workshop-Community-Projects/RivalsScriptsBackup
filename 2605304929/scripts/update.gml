//update.gml
//#region Small Gameplay Code

//Gannoncide
if(!free && ganoncide_preventor_available_flag == false && article_platform_id == noone){
	ganoncide_preventor_available_flag = true // will reset flag on landing
}

if(((state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) && fspecial_recovery_enabled_flag == true) || attack != AT_FSPECIAL){
	fspecial_recovery_enabled_flag = false;
}

//Dspecial move cooldown reset
if(!free && djump_given_back_flag == true){
	djump_given_back_flag = false;
}

//Dthrow exception for plats so she does not auto land afterwards.
if(attack == AT_DTHROW && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
	fall_through_timer = 20;
}
if((attack != AT_FSPECIAL && attack != AT_DSPECIAL_AIR) && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
	switch(fall_through_timer){
		case 0:
			fall_through = false;
			break;
		default:
			fall_through = true;
			fall_through_timer--;
			break;
	}
}

// Move Eyes VFX on boosted Grab hit
if(instance_exists(hitfx_consume_water_obj)){
	var temp_x = x;
	var temp_y = y;
	with(hitfx_consume_water_obj){
		x = temp_x;
		y = temp_y - 100;
	}
}

// Move Mark Consume HFX on opponent
if(instance_exists(hitfx_mark_consume_obj) && hitfx_mark_consume_obj != noone && grabbed_player_obj != noone){
	var temp_x = grabbed_player_obj.x;
	var temp_y = grabbed_player_obj.y - floor(grabbed_player_obj.char_height / 2);
	with(hitfx_mark_consume_obj){
		x = temp_x;
		y = temp_y;
	}
}

//Fspecial Cooldown Indicator
if((move_cooldown[AT_FSPECIAL] == 59 || move_cooldown[AT_DSPECIAL] == 59) 
&& (state != PS_ATTACK_AIR || state =! PS_ATTACK_GROUND)){
    hitfx_cooldown_obj = spawn_hit_fx(x,y,hitfx_cooldown); 
    //sound_play(asset_get("sfx_ori_ustrong_charge"));
}

if(instance_exists(hitfx_cooldown_obj)){
	var temp_x = x;
	var temp_y = y;
	with(hitfx_cooldown_obj){
		x = temp_x;
		y = temp_y - 80;
	}
	hitfx_cooldown_obj.depth = depth - 1;
}

if(move_cooldown[AT_FSPECIAL] == 10 || move_cooldown[AT_DSPECIAL] == 10){
sound_play(asset_get("mfx_flashy_shing"));
white_flash_timer = 10;
}

// Activated Kill Effect for Tehend's Alt
if((color_shift == 1 || color_shift == 2) && get_player_color(player) == 29){
	
	// Visible for 35 frames then fades and fades 43
	// Check opponent for galaxy effect and save to local variable
	with(asset_get("oPlayer")){
	    if (id != other.id){
			// Record Galaxy
			if(activated_kill_effect == true){
				//print(" in with other player kill effect function");
				var temp_opponent_galaxy = true;
			}
			else temp_opponent_galaxy = false;
	    }
	}
	opponent_activated_kill_effect = temp_opponent_galaxy;

	// Check Galaxy
	if(opponent_activated_kill_effect){ 
		galaxy_current_timer++; // Add to timer
	}
	else galaxy_current_timer = 0;
	// Say the line...
	if(galaxy_current_timer == 1){
		sound_play(sound_get("color_specific_LTG"));
	}
}
//#endregion

//#region VFX
// Water Dust for non attack States
if(state_timer == 1){
	switch(state){
		// Spawn Behind Cases
		case PS_WAVELAND:
		case PS_DASH_START:
		case PS_DASH_TURN:
			hitfx_water_dust_obj_1 = spawn_hit_fx(x,y,hitfx_water_dust);
			break;
		// Spawn in Front Cases (not used yet)
		/*case num:
			hitfx_water_dust_obj_1 = spawn_hit_fx(x,y,hitfx_water_dust);
			var spr_dir_player = spr_dir;
			with(hitfx_water_dust_obj_1){
				spr_dir = spr_dir_player * -1;
		}*/
		// Spawn on both sides case
		case PS_JUMPSQUAT:
		case PS_DOUBLE_JUMP:
		case PS_LAND:
		case PS_PRATLAND:
			hitfx_water_dust_obj_1 = spawn_hit_fx(x,y,hitfx_water_dust);
			hitfx_water_dust_obj_2 = spawn_hit_fx(x,y,hitfx_water_dust);
			var spr_dir_player = spr_dir;
			with(hitfx_water_dust_obj_2){
				spr_dir = spr_dir_player * -1;
				}
			break;
		default:
			break;
	}
}

//#endregion

//#region Other character update
with(asset_get("oPlayer")){
	
    if (id != other.id){
		//Decrement_Element_Over_Time();
		Training_Functionality();
		Opponent_Respawn();
		// Cleanse mark on Death
		if(state == PS_RESPAWN){
			status_effect_water = false;
		}
    }	
}

// Code for counting players for Results Screen / Intro
if(state == PS_SPAWN && state_timer == 1)
{
        with(oPlayer)
        {
            other.countPlayers ++;
            if(id != other.id)
                other.enemyObj = id;
        }
}

// Cleanse mark on Death if Daora is killed
	if(state == PS_RESPAWN){
			with(asset_get("oPlayer")){
				status_effect_water = false;
			}
		}
//#endregion

#define Training_Functionality()
{
	if(get_training_cpu_action() != CPU_FIGHT){
		// Respawn in training
		/*
		if(get_player_damage(player) == 0){
		    status_effect_electric = 0;
		    status_effect_water = 0;
		}
		*/
		// Taunt Reset Elements
		if("other_player_id" not in self){exit;}
		if(other_player_id.attack == AT_TAUNT && other_player_id.state == PS_ATTACK_GROUND){
		    status_effect_electric = 0;
		    status_effect_water = 0;
		}
	}
}
#define Opponent_Respawn()
{
	if(state == PS_RESPAWN){
	status_effect_water = false;
	}
}

