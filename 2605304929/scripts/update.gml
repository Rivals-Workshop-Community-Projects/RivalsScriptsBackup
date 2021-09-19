//update.gml
//#region Small Gameplay Code

//Gannoncide
if(!free && ganoncide_preventor_available_flag == false){
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
		Decrement_Element_Over_Time();
		Training_Functionality();
		Opponent_Respawn();
		// Clamp to zero to prevent negative numbers
		if(status_effect_electric < 0){status_effect_electric = 0;}
		if(status_effect_water < 0){status_effect_water = 0;}
	    //Decrement timers
    	if(buildup_electric_fx_timer > 0){buildup_electric_fx_timer--;}
    	if(buildup_water_fx_timer > 0){buildup_water_fx_timer--;}

		//print(buildup_electric_fx_timer);
	
    }
}
//#endregion

#define Decrement_Element_Over_Time()
{
	if(get_gameplay_time() % 120 == 0){ //Timer in frames
	    if(status_effect_electric > 0){status_effect_electric--;}
	    if(status_effect_water > 0){status_effect_water--;}
	}
}

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
	status_effect_electric = 0;
	status_effect_water = 0;
	}
}