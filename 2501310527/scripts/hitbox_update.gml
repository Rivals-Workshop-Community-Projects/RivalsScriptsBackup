
//Mini Bill Stuff
if (attack == AT_DSPECIAL){
	
	//Rotates the Mini Bill with its angle
	if (hitbox_timer == 1){
		proj_angle = player_id.scope_aim;	
	}
	
	//Blaster Forward Mini Bill
	if (hbox_num == 8 && hitbox_timer < 3){
		proj_angle = 0;
		spr_dir = player_id.blaster_dir;
		hsp = 9*player_id.blaster_dir;
	}
	
	//Blaster Up Mini Bill
	if (hbox_num == 10){
		proj_angle = 90*spr_dir;	
		spr_dir = player_id.blaster_dir;
	}
	
	//Blaster Down Mini Bill
	if (hbox_num == 9 && hitbox_timer < 3){
		proj_angle = -45*spr_dir;	
		spr_dir = player_id.blaster_dir;
		hsp = 6*player_id.blaster_dir;
	}

	//If the Mini Bill is close to the Blaster's head
	if ((x > player_id.blaster.x-40 && x < player_id.blaster.x+40)  
	&& (y > player_id.blaster.y-30 && y < player_id.blaster.y+30)){
    
    //Each of the Mini Bill SFX when entering the Blaster
    if (player_id.blaster_mini < 5 && hbox_num < 8 && hitbox_timer > 3){
    	if (player_id.blaster_mini == 0){
    		sound_play(sound_get("minic_yi"));
    	}
    	if (player_id.blaster_mini == 1){
    		sound_play(sound_get("minid_yi"));
    	}
    	if (player_id.blaster_mini == 2){
    		sound_play(sound_get("minie_yi"));
    	}
    	if (player_id.blaster_mini == 3){
    		sound_play(sound_get("minif_yi"));
    	}
    	if (player_id.blaster_mini == 4){
    		sound_play(sound_get("minig_yi"));
    	}
    	//And of course, adds the ammo number
    	player_id.blaster_mini++;
    	destroyed = true;
    }
    	
	}

	
}