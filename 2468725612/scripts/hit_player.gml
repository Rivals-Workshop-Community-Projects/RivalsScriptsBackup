if (!custom_clone){

if (my_hitboxID.attack == AT_DSPECIAL){
	set_num_hitboxes(AT_DSPECIAL, 4);
}

if (my_hitboxID.attack == AT_DSPECIAL_AIR){
	set_num_hitboxes(AT_DSPECIAL_AIR, 9);
}



if (my_hitboxID.type == 2 && hit_player_obj.im_the_clone == true){
	if (my_hitboxID.attack != AT_FSPECIAL && my_hitboxID.attack != AT_FSPECIAL_AIR
	&& my_hitboxID.attack != AT_DSPECIAL && my_hitboxID.attack != AT_DSPECIAL_AIR){
		can_command = true;	
	}
    
    if (my_hitboxID.damage == 0){
        hitpause = true;
        hitstop = my_hitboxID.hitpause;
        hitstop_full = my_hitboxID.hitpause;
        old_hsp = hsp;
        old_vsp = vsp;
    }
    
    if ((my_hitboxID.attack == AT_FSPECIAL || my_hitboxID.attack == AT_FSPECIAL_AIR)
    && my_hitboxID.damage == 12 && hit_player_obj.im_the_clone == true){
    	set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 12);
    	set_window_value(AT_FSPECIAL_AIR, 7, AG_WINDOW_LENGTH, 19);
    	fspecial_hit = 1;
        hologram_is_alive = false;
    	hat = instance_create( x, y, "obj_article1");
    	hat.state = 4;
    	grabbing_clone = false;
    }
    
    
    if ((my_hitboxID.attack == AT_DSPECIAL || my_hitboxID.attack == AT_DSPECIAL_AIR)
    && my_hitboxID.damage == 0 && hit_player_obj.im_the_clone == true && was_parried == false){
    	if (my_hitboxID.attack == AT_DSPECIAL){
    		dspecial_hit = true;	
    	}
    	if (my_hitboxID.attack == AT_DSPECIAL_AIR){
    		dspecial_air_hit = true;	
    	}
        hologram_is_alive = false;
    	hat = instance_create( x, y, "obj_article1");
    	hat.state = 4;
    }
}

}

if (my_hitboxID.attack == AT_FSPECIAL){
	set_hitbox_value(AT_FSPECIAL, 14, HG_LIFETIME, 0);
}

if (my_hitboxID.attack == AT_FSPECIAL_AIR){
	set_hitbox_value(AT_FSPECIAL_AIR, 14, HG_LIFETIME, 0);
}

if (grab_ground == true && my_hitboxID.damage > 3){
    grab_ground = false;
}

if (grab_air == true && my_hitboxID.damage > 3){
    grab_air = false;
}





if (my_hitboxID.attack == AT_FSPECIAL && grab_ground == false && grab_ground_clone == false 
&& my_hitboxID.damage == 0 && hit_player_obj.im_the_clone == true && hit_player_obj.player == player){
    if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false){
	        
	        grab_ground_clone = true;
            window = 4;
            window_timer = 1;
            hit_player_obj.spr_dir = -spr_dir;
	        hit_player_obj.x = x+80*spr_dir;
	        hit_player_obj.y = y;
	        
	  }
}

if (my_hitboxID.attack == AT_FSPECIAL_AIR && grab_air == false && grab_air_clone == false
&& my_hitboxID.damage == 0 && hit_player_obj.im_the_clone == true && hit_player_obj.player == player){
    if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false){
	        
	        grab_air_clone = true;
            window = 4;
            window_timer = 1;
            hit_player_obj.spr_dir = -spr_dir;
	        hit_player_obj.x = x+80*spr_dir;
	        hit_player_obj.y = y;
	        
	  }
}



if (my_hitboxID.attack == AT_FSPECIAL && grab_ground == false 
&& my_hitboxID.damage == 2 && grab_ground_clone == false){
    if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false){
	        
	        grab_ground = true;
	        grab_ground_clone = false;
            window = 4;
            window_timer = 1;
            hit_player_obj.spr_dir = -spr_dir;
	        hit_player_obj.x = x+80*spr_dir;
	        hit_player_obj.y = y;
	        
	  }
}

if (my_hitboxID.attack == AT_FSPECIAL_AIR && grab_air == false 
&& my_hitboxID.damage == 2 && grab_air_clone == false){
    if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false){
	        
	        grab_air = true;
	        grab_air_clone = false;
            window = 4;
            window_timer = 1;
            hit_player_obj.spr_dir = -spr_dir;
	        hit_player_obj.x = x+80*spr_dir;
	        hit_player_obj.y = y;
	        
	  }
}


if (my_hitboxID.attack == AT_USPECIAL){
	set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 0);
}


    
