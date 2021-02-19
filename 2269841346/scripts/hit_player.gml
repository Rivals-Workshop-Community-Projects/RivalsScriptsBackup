///


if has_rune("M") and my_hitboxID.type == 1{
  if move_cooldown[AT_NSPECIAL_2] == 0 && random_func(1,6,true) <= 1 {
  	create_hitbox(AT_DTILT,5, room_width/2 - 600*spr_dir, room_height/2 - 100)
  	        sound_play(sound_get("bike3")); 
  }
  	
  	if move_cooldown[AT_FSPECIAL_2] == 0 && random_func(1,6,true) > 3 {
  	create_hitbox(AT_DTILT,6, room_width/2 - 600*spr_dir, room_height/2 - 100)
  	sound_play(sound_get("perish")); 
  }
  
}

if ntarget = 0 && my_hitboxID.attack == AT_FSPECIAL {
 ntarget = hit_player_obj 
}

if my_hitboxID.attack == AT_DSPECIAL && (my_hitboxID.hbox_num == 1 or my_hitboxID.hbox_num == 2)  {
    move_cooldown[AT_FTILT] = 2
}

    

    if move_cooldown[AT_EXTRA_1] = 0 && my_hitboxID.type == 1 && batt < 5{
        batt += 1
       if has_rune("A"){
	batt = 5
     }

        move_cooldown[AT_EXTRA_1] = 15
    }
    

if my_hitboxID.type == 1 &&  hit_player_obj == ntarget  {

 
 if hit_player_obj != self  {       
    if drop == 1 {
    	move_cooldown[AT_EXTRA_3] = 6
        var halodmg = floor(my_hitboxID.damage/2)
        with hit_player_obj {
		take_damage( player, -1 , halodmg + 2)
        }
        
	   	 sound_play(sound_get("slice"));   
        sound_play(sound_get("slice3")); 

        
 if spr_dir = -1 {       
 spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 140, km1l );
 } else {
  spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 140, km1r );	
 }

    } 
    
        if drop == 2 {
           move_cooldown[AT_EXTRA_3] = 14
           var halodmg = floor(my_hitboxID.damage/2)
           with hit_player_obj {
		   take_damage( player, -1 , halodmg + 4)
           }  

	   	 sound_play(sound_get("slicel"));   
        sound_play(sound_get("slice1"));  
 if spr_dir = 1 {       
 spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 140, km2r );
 } else {
  spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 140, km2l );	
 }
 	batt += 1
        }
    
        if drop == 3 {
          move_cooldown[AT_EXTRA_3] = 20 		   
          var halodmg = floor(my_hitboxID.damage/2)
           with hit_player_obj {
		   take_damage( player, -1 , halodmg + 8)
 } 
         sound_play(sound_get("slice1"));  
	   	 sound_play(sound_get("slice3"));  
	   	 
 if spr_dir = 1 {       
 spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 140, km3r );
 } else {
  spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 140, km3l );	
 }
   	batt += 2
}

if !has_rune("K") {
drop = 0
ntarget = 0
}

    if has_rune("K") {
    	with hit_player_obj {
		take_damage( player, -1 , halodmg*other.drop)
        }
        		hitstop += 5
        spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 40, 305)
                 sound_play(sound_get("slicel"),false,noone,drop);  
    }
    
    

}

}

if my_hitboxID.attack == AT_FSPECIAL && hit_player_obj == ntarget {
    move_cooldown[AT_EXTRA_3] = 6
    if drop < 3 {
    drop += 1
    }
    
}

if my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num > 1 {
	batt -= 1
}
