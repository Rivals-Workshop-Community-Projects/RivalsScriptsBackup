switch my_hitboxID.attack {
    case AT_FSTRONG:
    	if my_hitboxID.hbox_num == 3 {
        	sound_play(sound_get("explosion")); 
    	}
    	if my_hitboxID.hbox_num <= 8  {
        	sound_play(sound_get("chainsaw_hit")); 
    	}
    	if my_hitboxID.hbox_num == 9  {
        	sound_play(sound_get("explosion")); 
    	}
    break;
    case AT_FSPECIAL:
    	if my_hitboxID.hbox_num == 1 {
        	fspec_grabbed = true;
    	}
    break;
    case AT_USPECIAL:
    	if my_hitboxID.hbox_num == 1 {
        	sound_play(sound_get("explosion")); 
    	}
    break;
    case AT_DSPECIAL_2:
    	if my_hitboxID.hbox_num == 1 {
        	sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,0.8); 
    	}
    break;
}

if (my_hitboxID.attack == AT_NSPECIAL && nspec_grabbed == false && !consumed_proj){
    if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false){
	        
	        //Initiates the Cargo Hold (sets the variables)
	        if (my_hitboxID.hbox_num == 2){
	        	//Timer is the opponent percentage + 60
	    		//grab_timer = get_player_damage(hit_player_obj.player) + 18;
		        nspec_grabbed = true;
	            window = 4;
	            window_timer = 1;
	            destroy_hitboxes();
	            grabbedtarget = hit_player_obj;
		        grabbed_invisible = true;
				hit_player_obj.visible = false;
	        }
	        
	  }
}
else {
	nspec_grabbed = false;
	hit_player_obj.visible = true;
}

if(!hit_player_obj.super_armor and hit_player_obj.soft_armor == 0){
    if(my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num <= 8){
        hit_player_obj.x = lerp(floor(hit_player_obj.x), x+(30*spr_dir), .8);
        hit_player_obj.y = lerp(floor(hit_player_obj.y), y+10, .4);
    }
}

if(!hit_player_obj.super_armor and hit_player_obj.soft_armor == 0){
    if(my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 2){
        hit_player_obj.x = lerp(floor(hit_player_obj.x), x+(10*spr_dir), .8);
        hit_player_obj.y = lerp(floor(hit_player_obj.y), y+40, .4);
    }
}
    