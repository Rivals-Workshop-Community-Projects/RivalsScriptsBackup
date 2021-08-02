///
	var tauntpar1 = hit_fx_create( sprite_get( "tauntpar1" ), 12);

if attack == AT_NSPECIAL {
	
	if player_id.attacking &&  player_id.attack == AT_NSPECIAL && (player_id.window == 1 or player_id.window == 4) && player_id.window_timer == 1 {
		
		if hbox_num == 1 {
		destroyed = 1
		}
	}
	
		if player_id.window == 2 && player_id.attack == AT_USPECIAL  
	&& (player_id.state == PS_ATTACK_GROUND or player_id.state == PS_ATTACK_AIR) {
    	if (x - 50 - (player_id.x)) < 0 
	and (x + 50 - (player_id.x)) > 0 and (y - 50 - (player_id.y)) < 0
	and (y + 50 - (player_id.y)) > 0 {
		

	
	if attack == AT_NSPECIAL && hbox_num == 1  {
    destroyed = 1
    create_hitbox(AT_NSPECIAL , 8,  x  , y );
    spawn_hit_fx( x , y , 305 )
    }	
    
    
	if hbox_num == 3 {
		

    destroyed = 1
    create_hitbox(AT_NSPECIAL , 6,  x  , y );
    create_hitbox(AT_NSPECIAL , 4,  x  , y );
    create_hitbox(AT_NSPECIAL , 8,  x  , y );
    spawn_hit_fx( x , y , 306 )
     sound_play(sound_get("RI"));
	}
		
	
	if hbox_num == 2{

    destroyed = 1
    create_hitbox(AT_NSPECIAL , 7,  x  , y );
    create_hitbox(AT_NSPECIAL , 5,  x  , y );
    spawn_hit_fx( x , y , 304 )
    sound_play(sound_get("RI2"));
	}
	
		
	}
	}
	
	
	
	if player_id.window == 4 && player_id.window_timer = 1 && player_id.attack == AT_FSPECIAL  
	&& (player_id.state == PS_ATTACK_GROUND or player_id.state == PS_ATTACK_AIR) && player_id.timefreeze < 2  {
    	if ((x - 120 - (30 * spr_dir)) - (player_id.x + (player_id.fcharge * 8 * player_id.spr_dir))) < 0 
	and ((x + 120 - (30 * spr_dir)) - (player_id.x + (player_id.fcharge * 8 * player_id.spr_dir))) > 0 {
		

	
	if attack == AT_NSPECIAL && hbox_num == 1  {
    destroyed = 1
    create_hitbox(AT_NSPECIAL , 8,  x  , y );
    spawn_hit_fx( x , y , 305 )
    }	
    
    
	if hbox_num == 3 {
		

    destroyed = 1
    create_hitbox(AT_NSPECIAL , 6,  x  , y );
    create_hitbox(AT_NSPECIAL , 4,  x  , y );
    create_hitbox(AT_NSPECIAL , 8,  x  , y );
    spawn_hit_fx( x , y , 306 )
     sound_play(sound_get("RI"));
	}
		
	
	if hbox_num == 2{

    destroyed = 1
    create_hitbox(AT_NSPECIAL , 7,  x  , y );
    create_hitbox(AT_NSPECIAL , 5,  x  , y );
    spawn_hit_fx( x , y , 304 )
    sound_play(sound_get("RI2"));
	}
	
		
	}
	}
}	


if attack == AT_FSTRONG  {
	if player_id.fstronghit > 1 && player_id.timefreeze < 20{
		hsp = 3 * spr_dir
		hitbox_timer -= 1
	}
	
	if player_id.fstronghit = 1  && player_id.timefreeze < 20 {
		 hsp = 14 * spr_dir
	}
	 
}

	
if 	player_id.timefreeze < 1 {

if attack == AT_FSTRONG  {
	hit_priority = 9
    if get_gameplay_time() % 4 = 0 {
	spawn_hit_fx( x , y + 14 - random_func(5, 20, true) , tauntpar1 )
	 }
	
}


if attack == AT_NSPECIAL {
	hit_priority = 9
	  if hbox_num == 5 or hbox_num == 7 or hbox_num == 8  {
	  	
	  	if !free {
	  		destroyed = 1 
	  		 create_hitbox(AT_NSPECIAL , 10,  x  , y );
	  		  sound_play( asset_get("sfx_abyss_explosion"));
	  		  spawn_hit_fx( x , y , 305)
	  	}
	  	
	  }
	  
	   if hbox_num == 4 or hbox_num == 6  {
	  	
	  	if !free {
	  		destroyed = 1 
    create_hitbox(AT_NSPECIAL , 5,  x  , y );
    create_hitbox(AT_NSPECIAL , 7,  x  , y );
	  		 create_hitbox(AT_NSPECIAL , 9,  x  , y );
	  		  sound_play( asset_get("sfx_abyss_explosion_big"));
	  		  spawn_hit_fx( x , y , 304 )
	  	}
	  	
	  }
	  
	  
	if player_id.attack == AT_FSPECIAL && player_id.window <= 3
	&& (player_id.state == PS_ATTACK_GROUND or player_id.state == PS_ATTACK_AIR) {

		
		if hbox_num == 1{ 
			hsp /= 1.5
					y += ((player_id.y - 40 + player_id.fver * 6) - y) / 10
		vsp = 0
		}
		
		
		if hbox_num == 2{ 
			hsp /= 1.2

					y += ((player_id.y - 40 + player_id.fver * 6) - y) / 10
		vsp = 0
		}
		
		if hbox_num == 3 {
			hsp /= 1.1
					y += ((player_id.y - 40 + player_id.fver * 6) - y) / 10
		vsp = 0
		}
		
		
        
	}
 

	if player_id.fstronghit > 3 {
		
	destroyed = true
   
	}
	
	
	
	if player_id.window == 4 && player_id.window_timer = 1 && player_id.attack == AT_FSPECIAL  
	&& (player_id.state == PS_ATTACK_GROUND or player_id.state == PS_ATTACK_AIR) {
		
	if attack == AT_NSPECIAL && hbox_num == 1  {
		spr_dir *= -1
    hsp = -6 * player_id.spr_dir
    }	

     if attack == AT_NSPECIAL && hbox_num == 2  {

    hsp = 4 * spr_dir
    }
     if attack == AT_NSPECIAL && hbox_num == 3{

    hsp = 3 * spr_dir
    }
   
	}
	
	
}

if attack == AT_NSPECIAL  {
	

	if get_gameplay_time() % 3 == 0 {
        spawn_hit_fx( x + 20 - random_func(1, 40, true) , y - 20 + random_func(2, 40, true) , tauntpar1 )
        }
	
        
	if get_gameplay_time() % 6 == 0 && !free {
	    sound_play(sound_get("ballroll"),false,noone,0.6);
	}
	
	if y > room_height {
		destroyed = true
	}
}
}


if attack == AT_FSPECIAL {
	
	if player_id.state_cat == SC_HITSTUN {
		destroyed = 1
	}
	
	if player_id.fstronghit > 3{
		destroyed = 1
	}
	
	if hbox_num == 1 {
		if get_gameplay_time() % 4 = 0 {
	spawn_hit_fx( x , y + 10 - random_func(5, 20, true) , tauntpar1 )
	 }
	 
		x = player_id.x + ((hitbox_timer * 11) * spr_dir)
		y = player_id.y - 40 + player_id.fver * 6
		
		if player_id.window > 2 {
			destroyed = true
		}
	}

}



if player_id.timefreeze > 10 {
	if attack == AT_FSTRONG  {
		hit_priority = 0
    hsp /= 1.5
    hitbox_timer = -30
    }
     
     if attack == AT_NSPECIAL {
     	hit_priority = 0
    hsp /= 1.5
    vsp = 0
    hitbox_timer = -30
    }
 


}





if hitbox_timer = -28 {
	
	if attack == AT_FSTRONG {
    hsp = 14 * spr_dir
    }
     
    	    if attack == AT_NSPECIAL && hbox_num == 1{
    hsp = 5 * spr_dir
    }
    
    if attack == AT_NSPECIAL && hbox_num == 5{
    hsp = 4 * spr_dir
    vsp = -8
    }
    
    if attack == AT_NSPECIAL && hbox_num == 7{
    hsp = -4 * spr_dir
    vsp = -8
    }
    
    if attack == AT_NSPECIAL && hbox_num == 8{

    vsp = -10
    }
    
    
     if attack == AT_NSPECIAL && hbox_num == 2  {
    hsp = 4 * spr_dir
    }
    
         if attack == AT_NSPECIAL && hbox_num == 4 {
    hsp = -3 * spr_dir
    vsp = -8
    }
    
         if attack == AT_NSPECIAL && hbox_num == 6 {
    hsp = 3 * spr_dir
    vsp = -8
    }
    
     if attack == AT_NSPECIAL && hbox_num == 3{
    hsp = 3 * spr_dir
    }
    
    
    
}