//article1_update

timer += 1;
if(aim_size > 1){
    aim_size -= 0.2;
}else{
    aim_size = 1;
}
aim_alpha = 0.5+(ease_sineIn(0,8,get_gameplay_time(),5))/30;

if(instance_exists(fspec_target)){
    x = fspec_target.x;y = fspec_target.y-fspec_target_offset;
    if(fspec_target_player){
        if(fspec_target.state == PS_DEAD || fspec_target.state == PS_RESPAWN){
            destroyed = true;
        }
    }
}

if(timer == 1){
    if(instance_exists(fspec_target)){
        //if(fspec_target_player)fspec_target_offset = 35;
        with(asset_get("obj_article1")){ //check if target is already targeted
    		if(self != other && player_id == other.player_id && fspec_target == other.fspec_target){other.cantarget = 1;}
    	}
    	
    	//if target cant be targeted and its a player, check for other players that are overlapping
    	if(fspec_target_player && cantarget >= 1){
    	    with(oPlayer){
        	    if((place_meeting(x+20,y,other.fspec_target) || place_meeting(x-20,y,other.fspec_target) || place_meeting(x,y+20,other.fspec_target)) && self != other.fspec_target && self != other.player_id){
        	        other.cantarget = 0;other.fspec_target = self;
        	    }
    	    }
    	    if(cantarget == 0){
        	    with(asset_get("obj_article1")){ //check if the new target is already targeted
            		if(self != other && player_id == other.player_id && fspec_target == other.fspec_target){other.cantarget = 1;}
            	}
    	    }
    	}
    	if(cantarget >= 1){
    	    destroyed = true;
    	}
    }else{
        destroyed = true;
    }
    if(!destroyed){
        sound_play(sound_get("laser_target"),false,noone,1.0);player_id.fspec_hit = true;
    }
}

if(fspec_projectile_targeting && (!instance_exists(fspec_projectile) || instance_exists(fspec_projectile) && fspec_projectile.player != orig_player)){
    destroytimer += 1;
}

if(destroyed || !instance_exists(fspec_target)
|| !fspec_projectile_targeting && ((player_id.state == PS_HITSTUN || player_id.state == PS_HITSTUN_LAND || player_id.was_parried
|| player_id.state == PS_WRAPPED || player_id.state == PS_FROZEN || player_id.state == PS_PRATFALL || player_id.state == PS_PRATLAND)
&& player_id.last_player == fspec_target.player || player_id.state == PS_DEAD || player_id.state == PS_RESPAWN)
|| fspec_projectile_targeting && destroytimer >= 60){
    instance_destroy();
    exit;
}