if((state == PS_HITSTUN || state == PS_HITSTUN_LAND) && hitpause){
	sound_stop(sfx);
    sound_stop(voice);
    
	if(instance_exists(grabbedtarget)){
		if(grabbedobject){
	    	grabbedobject = false;grabbedtarget.KoB_grabbed = false;
	    	if(grabbedarticle){
	    		grabbedtarget.state = 1;grabbedtarget.timer = 60;
	    		if("StarterBlock" in grabbedtarget){grabbedtarget.state = 2;}
	    		grabbedtarget.visible = true;
	    	}else{
	    		//if("Villager_Tree" in self || "Villager_Bowling_Ball" in self){despawning = true;}
	    	}//grabbedtarget.sprite_index = grabbedtargetsprite;
	    }else{
	    	grabbedtarget.visible = true;
		}
    }
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

//extra bonus damage mechanic
if(bonus_damage){
	bonus_damage = false;bonus_damage_flash = enemy_hitboxID.damage > 10?120:80;
	damage_scaling = 1;hitstop *= 2;outline_color = [0, 0, 0];init_shader();
	sound_play(enemy_hitboxID.damage > 10?sound_get("weakpoint"):sound_get("weakpoint3"),false,noone,1.25);
}

#define variableExistsInAndIs(obj,variable,type)
if(variable not in obj)return false;
return (variable_instance_exists(obj,variable) && variable_instance_get(obj,variable) == type);