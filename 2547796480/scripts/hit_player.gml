///

if my_hitboxID.type == 1 && my_hitboxID.attack == AT_NSPECIAL  {
   batt = 5
   if hit_player_obj.ANwounded < 1 {
   move_cooldown[AT_NSPECIAL] = 30
   hit_player_obj.ANtimeslow = 30
   } 
   if hit_player_obj.ANwounded == 1 {
   	move_cooldown[AT_NSPECIAL] = 50
    hit_player_obj.ANtimeslow = 50
    sound_stop(asset_get("sfx_ori_energyhit_medium")); 
    sound_play(asset_get("sfx_ori_energyhit_medium"));   
   }

   if hit_player_obj.ANwounded == 2 {
   	move_cooldown[AT_NSPECIAL] = 60
    hit_player_obj.ANtimeslow = 60
    sound_stop(asset_get("sfx_ori_energyhit_medium")); 
    sound_play(asset_get("sfx_ori_energyhit_medium")); 
   }
   
   if hit_player_obj.ANwounded == 3 {
   	move_cooldown[AT_NSPECIAL] = 70
    hit_player_obj.ANtimeslow = 70
    sound_stop(asset_get("sfx_ori_energyhit_medium")); 
    sound_play(asset_get("sfx_ori_energyhit_heavy")); 
   }
   
}

if my_hitboxID.attack != AT_NSPECIAL  {
   move_cooldown[AT_NSPECIAL] = 0
   hit_player_obj.ANtimeslow = 0
    
}

if my_hitboxID.type == 1  {
 move_cooldown[AT_TAUNT] = 16
 batt += 1
 
 if hit_player_obj != self  {       
    if hit_player_obj.ANwounded == 1 {
    	hitstop += 5
    	hit_player_obj.hitstop += 5
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
           	var hfx1 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 60, fxslash3 )
			hfx1.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4 + 90
			
	        var hfx2 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 40, fxslash1 )
			hfx2.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4
    } 
    
        if hit_player_obj.ANwounded == 2 {
        	hitstop += 8
    	hit_player_obj.hitstop += 8
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
         
            var hfx1 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 60, fxslash3 )
			hfx1.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4 + 90
			
	        var hfx2 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 40, fxslash1 )
			hfx2.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4
			
 	     batt += 1
        }
    
        if hit_player_obj.ANwounded == 3 {
        	hitstop += 11
    	hit_player_obj.hitstop += 11
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
                var hfx1 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 60, fxslash3 )
			    hfx1.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4 + 90
			    
	            var hfx2 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 40, fxslash1 )
			    hfx2.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4
                     	batt += 2
        }


hit_player_obj.ANwounded = 0


}

}

if my_hitboxID.attack == AT_FSPECIAL {
	
	       	     var hfx1 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 40, fxslash3 )
       			hfx1.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4
       			
    move_cooldown[AT_EXTRA_3] = 6
    if hit_player_obj.ANwounded < 3 {
    hit_player_obj.ANwounded += 1
    }
}

