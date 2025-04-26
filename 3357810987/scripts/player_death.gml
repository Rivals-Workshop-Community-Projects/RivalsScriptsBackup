if(is_aether_stage()){
    plr = hit_player_obj.player;
    plr_relics = hit_player_obj.relics_on_player

    with(oPlayer){//Reducing player's trophy count
        //if(variable_instance_exists(id, "trophies_on_player")){
        	if(player == other.plr and relics_on_player != 0){
        		with(other){
        		    sound_play(sound_get("rebirth_crash"), false, 0, 1, 1);
        		}
        	}
        //}
    }
}

with(obj_stage_article){
    if(variable_instance_exists(id, "fog_expansion")){
        if(fog_expansion <6){
          fog_expansion ++;
          print(fog_expansion);
        }
    }
}