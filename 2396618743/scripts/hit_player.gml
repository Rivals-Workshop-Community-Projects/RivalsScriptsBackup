//CALLED WHEN PLAYER IS HIT


if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1){ //Apply freeze
        with (hit_player_obj){
        
        	if (!terrabury){
        		terrafreeze = 60;
		        terrafreeze_player = other.player;
		        hitstop = hitstop_full-2;
        	}
	        
    }
}


if (my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num == 1){ //Apply bury
        with (hit_player_obj){
        	
        	if (!free && !bury_immunity && !terrafreeze){
        		
        		terrabury = 90;
		        terrabury_player = other.player;
		        hitstop = hitstop_full-2;
        	}
        
    }
}


/*if (my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num == 3 && hit_player_obj.super_armor == false){ //Pull target into center
	terrapull_player = hit_player_obj;
	
	with (asset_get("obj_article3")){
		
		if (player_id == other.id){
			
			if (player_id.terrapull_player != 0 ){
			        //player_id.terrapull_player.x = x;
			        //player_id.terrapull_player.y = y;
			        
			        if (player_id.terrapull_player.x > x) {
			            player_id.terrapull_player.x -= (player_id.terrapull_player.x - x)/25;
			        }
			        if (player_id.terrapull_player.x < x) {
			            player_id.terrapull_player.x += (x - player_id.terrapull_player.x)/25;
			        }
			        
			        if (player_id.terrapull_player.y > y) {
			            player_id.terrapull_player.y -= (player_id.terrapull_player.y - (y-32))/25;
			        }
			        if (player_id.terrapull_player.y < y) {
			            player_id.terrapull_player.y += ((y-32) - player_id.terrapull_player.y)/25;
			        }
			    }
		}

	}

}*/

if (my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num == 2){
	
	with (asset_get("obj_article3")){
        if (player_id == other.id){
            state = 1;
            state_timer = 0;
            vsp = 0;
            proj_speed = 0;
        }
	
	}
}

if (my_hitboxID.attack == AT_FSTRONG || my_hitboxID.attack == AT_USTRONG || my_hitboxID.attack == AT_UAIR || my_hitboxID.attack == AT_FAIR || my_hitboxID.attack == AT_DSTRONG){ //If Terra hits with a kill move, take the frozen enemy out of freeze
    
    if (hit_player_obj.terrafreeze){
    	//hit_player_obj.terrafreeze = 0;
        //freezeAnimTimer = 0;
		//hit_player_obj.terrafreeze -= (hit_player_obj.terrafreeze > -15);
    }

}


if (my_hitboxID.attack == AT_DSPECIAL && (hit_player_obj.terrabury || hit_player_obj.terrafreeze)){
	
	if (hit_player_obj.terrafreeze){
    	hit_player_obj.terrafreeze = 0;
    }
    
    if (hit_player_obj.terrabury){
    	hit_player_obj.terrabury = 0;
    }
	
}


if (my_hitboxID.attack == AT_DSTRONG && hit_player_obj.terrabury){
	hit_player_obj.bury_immunity = 120;
}

if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1){
	var drain = instance_create(hit_player_obj.x,hit_player_obj.y-32,"obj_article2");
	chargeCounter = chargeCounterMax;
	hasCharge = 1;
    sound_play(sound_get("terra_charge"));
	if (djumps == 1){
		djumps = 0;
	}

}