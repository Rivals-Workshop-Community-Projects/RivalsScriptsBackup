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

//Grabbing opponent
if (my_hitboxID.attack == AT_DSTRONG){
    if ((state == PS_ATTACK_GROUND)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false){
	        
	        //Initiates the Cargo Hold (sets the variables)
	        if (my_hitboxID.hbox_num == 1){
		        dstrong_grab = true;
		        dstrong_grab_x = 45;
		        if (hit_player_obj.x > x){
		        	hit_player_obj.x = x+dstrong_grab_x;
		        }
		        if (hit_player_obj.x < x){
		        	hit_player_obj.x = x-dstrong_grab_x;
		        }
	        }
	        if (my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 5){
		        dstrong_grab = true;
		        dstrong_grab_x = 40;
		        if (hit_player_obj.x > x){
		        	hit_player_obj.x = x+dstrong_grab_x;
		        }
		        if (hit_player_obj.x < x){
		        	hit_player_obj.x = x-dstrong_grab_x;
		        }
	        }
	        if (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 6){
		        dstrong_grab = true;
		        dstrong_grab_x = 35;
		        if (hit_player_obj.x > x){
		        	hit_player_obj.x = x+dstrong_grab_x;
		        }
		        if (hit_player_obj.x < x){
		        	hit_player_obj.x = x-dstrong_grab_x;
		        }
	        }
	        else {
	            dstrong_grab = false;
	        }
	  }
}
else {
    dstrong_grab = false;
}

if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num < 3){
    will_o_wisp.shoulddie = true;
}


switch my_hitboxID.attack {
    
    case AT_JAB:
    if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_blow_medium1"),false,noone,0.8);
     }
     if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_blow_medium2"),false,noone,0.8);
     }
     if my_hitboxID.hbox_num == 3 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
     }
    break;
    case AT_DATTACK:
    if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_blow_medium3"));
     }
     if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_blow_medium3"));
     }
     if my_hitboxID.hbox_num == 3 {
         sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8);
     }
    if my_hitboxID.hbox_num == 4 {
         sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8);
     }
    break;
    case AT_FTILT:
    if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_blow_heavy1"));
     }
     if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_blow_heavy1"));
     }
     if my_hitboxID.hbox_num == 3 {
         sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8);
     }
    if my_hitboxID.hbox_num == 4 {
         sound_play(asset_get("sfx_blow_medium3"),false,noone,0.8);
     }
     if my_hitboxID.hbox_num == 5 {
         sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8);
         sound_play(asset_get("sfx_ell_uspecial_explode"));
     }
    break;
    case AT_UTILT:
    if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_blow_medium2"));
     }
     if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
     }
    break;
    case AT_DTILT:
    if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_blow_medium2"));
     }
     if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_blow_medium2"));
         sound_play(asset_get("sfx_forsburn_reappear_hit"));
     }
     if my_hitboxID.hbox_num == 3 {
         sound_play(asset_get("sfx_blow_medium2"));
         sound_play(asset_get("sfx_forsburn_reappear_hit"));
     }
    break;
    case AT_FSTRONG:
     if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
         sound_play(asset_get("sfx_forsburn_reappear_hit"));
     }
     if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
         sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8);
         sound_play(asset_get("sfx_ell_uspecial_explode"));
     }
     
    break;
    case AT_USTRONG:
     if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
         sound_play(asset_get("sfx_forsburn_reappear_hit"));
     }
     if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
         sound_play(asset_get("sfx_forsburn_reappear_hit"));
     }
     if my_hitboxID.hbox_num == 3 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
         sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8);
         sound_play(asset_get("sfx_ell_uspecial_explode"));
     }
	if my_hitboxID.hbox_num == 4 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
         sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8);
         sound_play(asset_get("sfx_ell_uspecial_explode"));
     }     
	if my_hitboxID.hbox_num == 5 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
         sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8);
         sound_play(asset_get("sfx_ell_uspecial_explode"));
     }    
    break;
    case AT_DSTRONG:
     if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_blow_medium3"));
     }
     if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_blow_medium2"));
     }
     if my_hitboxID.hbox_num == 3 {
         sound_play(asset_get("sfx_blow_heavy1"));
     }
	if my_hitboxID.hbox_num == 4 {
         sound_play(asset_get("sfx_blow_heavy1"));
     }     
	if my_hitboxID.hbox_num == 5 {
         sound_play(asset_get("sfx_blow_medium3"));
         sound_play(asset_get("sfx_forsburn_reappear_hit"));
     }  
     if my_hitboxID.hbox_num == 6 {
         sound_play(asset_get("sfx_blow_medium3"));
         sound_play(asset_get("sfx_forsburn_reappear_hit"));
     }    
    break;
    case AT_DSTRONG:
     if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_blow_medium2"),false,noone,0.8);
         sound_play(asset_get("sfx_forsburn_reappear_hit"));
     }
     if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_blow_medium2"),false,noone,0.8);
         sound_play(asset_get("sfx_forsburn_reappear_hit"));
     }
     if my_hitboxID.hbox_num == 3 {
         sound_play(asset_get("sfx_blow_medium2"),false,noone,0.8);
         sound_play(asset_get("sfx_forsburn_reappear_hit"));
     }
	if my_hitboxID.hbox_num == 4 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
         sound_play(asset_get("sfx_forsburn_reappear_hit"));
     }     
	if my_hitboxID.hbox_num == 5 {
         sound_play(asset_get("sfx_blow_medium2"),false,noone,0.8);
         sound_play(asset_get("sfx_forsburn_reappear_hit"));
     } 
    if my_hitboxID.hbox_num == 6 {
         sound_play(asset_get("sfx_blow_medium2"),false,noone,0.8);
         sound_play(asset_get("sfx_forsburn_reappear_hit"));
     }   
    if my_hitboxID.hbox_num == 7 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
         sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8);
         sound_play(asset_get("sfx_ell_uspecial_explode"));
     }   
    break;
    case AT_NAIR:
     if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_blow_medium2"));
     }
     if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_blow_medium2"));
     }
     if my_hitboxID.hbox_num == 3 {
         sound_play(asset_get("sfx_blow_medium2"));
     }
	if my_hitboxID.hbox_num == 4 {
         sound_play(asset_get("sfx_blow_medium2"));
     }     
	if my_hitboxID.hbox_num == 5 {
         sound_play(asset_get("sfx_blow_medium3"));
     }    
    break;
    case AT_FAIR:
     if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_blow_medium3"));
     }
     if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_blow_medium2"));
     }
     if my_hitboxID.hbox_num == 3 {
         sound_play(asset_get("sfx_blow_heavy1"));
     }
	if my_hitboxID.hbox_num == 4 {
         sound_play(asset_get("sfx_blow_heavy1"));
     }     
	if my_hitboxID.hbox_num == 5 {
         sound_play(asset_get("sfx_blow_medium3"));
         sound_play(asset_get("sfx_forsburn_reappear_hit"));
     }  
     if my_hitboxID.hbox_num == 6 {
         sound_play(asset_get("sfx_blow_medium3"));
         sound_play(asset_get("sfx_forsburn_reappear_hit"));
     }    
    break;
    case AT_BAIR:
    if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
         sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8);
         sound_play(asset_get("sfx_ell_uspecial_explode"));
     }
     if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_blow_medium3"));
     }
     if my_hitboxID.hbox_num == 3 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
         sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8);
         sound_play(asset_get("sfx_ell_uspecial_explode"));
     }
    break;
    case AT_UAIR:
     if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
     }
     if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_blow_medium2"));
     }
     if my_hitboxID.hbox_num == 3 {
         sound_play(asset_get("sfx_blow_medium2"));
     }
	if my_hitboxID.hbox_num == 4 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
         sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8);
     }     
	if my_hitboxID.hbox_num == 5 {
         sound_play(asset_get("sfx_blow_heavy1"));
     }  
     if my_hitboxID.hbox_num == 6 {
         sound_play(asset_get("sfx_blow_heavy1"));
     }    
    break;
    case AT_DAIR:
    if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
     }
     if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
         sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8);
     }
    break;
    case AT_NSPECIAL:
    if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
         sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8);
         sound_play(asset_get("sfx_ell_uspecial_explode"));
     }
     if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
         sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8);
         sound_play(asset_get("sfx_abyss_explosion"));
     }
    break;
    case AT_FSPECIAL:
     if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_blow_medium2"));
     }
     if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_blow_heavy1"));
     }
     if my_hitboxID.hbox_num == 3 {
         sound_play(asset_get("sfx_blow_medium2"));
     }
	if my_hitboxID.hbox_num == 4 {
         sound_play(asset_get("sfx_blow_medium3"));
         sound_play(asset_get("sfx_forsburn_reappear_hit"));
     }     
	if my_hitboxID.hbox_num == 5 {
         sound_play(asset_get("sfx_blow_medium3"));
         sound_play(asset_get("sfx_forsburn_reappear_hit"));
     }  
     if my_hitboxID.hbox_num == 6 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
         sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8);
         sound_play(asset_get("sfx_ell_uspecial_explode"));
     }    
    break;
    case AT_USPECIAL:
     if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
     }
     if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
     }
     if my_hitboxID.hbox_num == 3 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
     }
	if my_hitboxID.hbox_num == 4 {
         sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8);
     }     
	if my_hitboxID.hbox_num == 5 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
         sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8);
         sound_play(asset_get("sfx_ell_uspecial_explode"));
     }    
    break;
}