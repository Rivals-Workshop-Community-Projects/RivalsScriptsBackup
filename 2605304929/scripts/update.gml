//update.gml
//#region Small Gameplay Code

//Gannoncide
if(!free && ganoncide_preventor_available_flag == false && article_platform_id == noone){
	ganoncide_preventor_available_flag = true // will reset flag on landing
}

//Dspecial move cooldown reset
if(!free && move_cooldown[AT_DSPECIAL_AIR] > 0 ){
	move_cooldown[AT_DSPECIAL_AIR] = 0;
}

//#endregion

//#region Other character update
with(asset_get("oPlayer")){
    if (id != other.id){
		//Decrement_Element_Over_Time();
		Training_Functionality();
		Opponent_Respawn();
		// Cleanse mark on Death or parry.
		if(state == PS_RESPAWN){
			status_effect_water = false;
		}
    }	
}

// Cleanse mark on Death or parry if Daora is killed or parry
	if(state == PS_RESPAWN || was_parried == true){
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