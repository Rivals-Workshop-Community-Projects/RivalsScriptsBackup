
if((state == PS_HITSTUN || state == PS_HITSTUN_LAND) && hitpause){
    
}

//KoB sweep
if(element_cooldown <= 0){
	if("weaknessArray" not in self)weaknessArray = variable_instance_get_names(KoBWeaknesses);
	for(var i = 0, len = array_length(weaknessArray); i < len; i++){
		if(element_cooldown > 0)break;
		if(!variableExistsInAndIs(enemy_hitboxID,weaknessArray[i]+"Hitbox",true) || variableExistsInAndIs(enemy_hitboxID,"IgnoreElement",true))continue;
		if(variable_instance_get(KoBWeaknesses,weaknessArray[i])){take_damage(player, hit_player_obj.player, ceil(enemy_hitboxID.damage/10));hitstop *= 1.25;} else {take_damage(player, hit_player_obj.player, -ceil(enemy_hitboxID.damage/10));hitstop *= .8;}
		element_cooldown = 60;
	}
}

#define variableExistsInAndIs(obj,variable,type)
return (variable not in obj)?false:(variable_instance_exists(obj,variable) && variable_instance_get(obj,variable) == type);