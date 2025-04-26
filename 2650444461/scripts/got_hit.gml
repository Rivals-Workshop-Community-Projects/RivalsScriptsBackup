
if((state == PS_HITSTUN || state == PS_HITSTUN_LAND) && hitpause){
    
}

//KoB sweep
if(element_cooldown <= 0){
    var weaknessArray = variable_instance_get_names(KoBWeaknesses);
    for(var i = 0; i < array_length(weaknessArray); i++){
        if(element_cooldown > 0)break; //If the cooldown isn't 0 then break out, to avoid multiples if shit is marked as light/fire for example.
        if(variable_instance_get(KoBWeaknesses,weaknessArray[i]) == false || !variableExistsInAndIs(enemy_hitboxID,weaknessArray[i]+"Hitbox",true) || variableExistsInAndIs(enemy_hitboxID,"IgnoreElement",true))continue; //If the weakness is false / if the hitbox isn't marked with the type being true / if ignore element is true
        take_damage(player, hit_player_obj.player, ceil(enemy_hitboxID.damage/10));hitstop *= 1.25;
        element_cooldown = 60;
    }
}

#define variableExistsInAndIs(obj,variable,type)
if(variable not in obj)return false;
return (variable_instance_exists(obj,variable) && variable_instance_get(obj,variable) == type);