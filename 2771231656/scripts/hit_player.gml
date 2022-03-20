//hitbox_update

  
    if (my_hitboxID.damage == 0){
        hitpause = true;
        hitstop = my_hitboxID.hitpause;
        hitstop_full = my_hitboxID.hitpause;
        old_hsp = hsp;
        old_vsp = vsp;
    }
    




if (my_hitboxID.attack == AT_FSPECIAL_AIR){
	set_hitbox_value(AT_FSPECIAL_AIR, 14, HG_LIFETIME, 0);
}



if (grab_air == true && my_hitboxID.damage > 3){
    grab_air = false;
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