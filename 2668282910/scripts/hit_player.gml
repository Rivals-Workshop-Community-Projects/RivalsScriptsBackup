//Grabbing opponent
if (my_hitboxID.attack == AT_USPECIAL){
    if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false){
	        
	        //Initiates the Cargo Hold (sets the variables)
	        if (my_hitboxID.hbox_num < 4){
	        	//Timer is the opponent percentage + 60
		        uspecial_grab = true;
//		        hit_player_obj.x = x+40*spr_dir;
//		        hit_player_obj.y = y;
	        }
	        else {
	            uspecial_grab = false;
	        }
	  }
}
else {
    uspecial_grab = false;
}

//Grabbing opponent
if (my_hitboxID.attack == AT_FSPECIAL){
    if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false){
	        
	        //Initiates the Cargo Hold (sets the variables)
	        if (my_hitboxID.hbox_num != 2 && my_hitboxID.hbox_num != 6){
	        	//Timer is the opponent percentage + 60
		        fspecial_grab = true;
//		        hit_player_obj.x = x+40*spr_dir;
//		        hit_player_obj.y = y;
	        }
	        else {
	            fspecial_grab = false;
	        }
	  }
}
else {
    fspecial_grab = false;
}

if (my_hitboxID.attack == AT_DSPECIAL){
    will_o_wisp.shoulddie = true;
}


