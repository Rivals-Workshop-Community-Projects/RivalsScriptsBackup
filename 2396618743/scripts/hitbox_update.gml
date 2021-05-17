//HITBOX UPDATE

if (attack == AT_FSPECIAL) { //Fspecial angle
    
    	
    	
    vsp = clamp(fira_vspeed, -10, 10);
    proj_angle = clamp(fira_angle, -45, 45);
    angling_time++;
    //proj_angle = (proj_angle + fira_vspeed*2) * -spr_dir;
    //proj_angle -= 1.5 * -spr_dir;	

	if (player_id.up_down && angling_time < 30){
		fira_vspeed -= .5;
		fira_angle -= 1.5 * -spr_dir;	
	}else if (player_id.down_down && angling_time < 30){
		fira_vspeed += .5;
		fira_angle += 1.5 * -spr_dir;
	}
	
	if (!free){
		destroyed = true;
	}
    
	 	
}

if (attack == AT_FTILT){
	
	if (hbox_num == 1 || hbox_num == 2){
		
		if (image_index == 16){
			
			sound_play(asset_get("sfx_may_arc_hit"));
		}
	}
	
	if (hbox_num == 3){
		
	}
	
	if (hbox_num == 4){
		
	}
}