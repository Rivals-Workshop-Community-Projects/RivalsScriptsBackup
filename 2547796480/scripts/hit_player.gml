///
if ANwounded > 0 && my_hitboxID.type == 1 && hit_player_obj.char_height != 60.1412{ 
	 ANwounded -= 1
}
	
if my_hitboxID.type == 1 && my_hitboxID.attack == AT_NSPECIAL  {
 with (asset_get("pHitBox")) {
    if player_id == other.id{
       destroyed = true;
    }
 }
   if hit_player_obj.ANwounded < 1 {
   move_cooldown[AT_NSPECIAL] = 30
   hit_player_obj.ANtimeslow = 30
   } 
   
   create_hitbox(AT_FTHROW,1,x - 6,y - 75)
   create_hitbox(AT_FTHROW,1,x + 6,y - 75)
   oknifelost -= 2
   
   if hit_player_obj.ANwounded == 1 {
   	move_cooldown[AT_NSPECIAL] = 40
    hit_player_obj.ANtimeslow = 40
    sound_stop(asset_get("sfx_ori_energyhit_medium")); 
    sound_play(asset_get("sfx_ori_energyhit_medium"));   
    sound_play(sound_get("Fstrong"),false,noone,1.4,0.8);  
    create_hitbox(AT_FTHROW,1,x,y - 80) 
    oknifelost -= 1
   }

   if hit_player_obj.ANwounded == 2 {
   	move_cooldown[AT_NSPECIAL] = 50
    hit_player_obj.ANtimeslow = 50
    sound_stop(asset_get("sfx_ori_energyhit_medium")); 
    sound_play(asset_get("sfx_ori_energyhit_medium")); 
    sound_play(sound_get("Fstrong"),false,noone,1.5,0.7);  
    create_hitbox(AT_FTHROW,1,x - 20,y - 45)
    create_hitbox(AT_FTHROW,1,x + 20,y - 45)
    oknifelost -= 2
   }
   
   if hit_player_obj.ANwounded == 3 {
   	move_cooldown[AT_NSPECIAL] = 60
    hit_player_obj.ANtimeslow = 60
    sound_stop(asset_get("sfx_ori_energyhit_medium")); 
    sound_play(asset_get("sfx_ori_energyhit_heavy")); 
    sound_play(sound_get("Fstrong"),false,noone,1.6,0.6);  
    create_hitbox(AT_FTHROW,1,x - 35,y - 45)
    create_hitbox(AT_FTHROW,1,x + 35,y - 45)
    create_hitbox(AT_FTHROW,1,x,y - 85) 
    oknifelost -= 3
   }
   
   hit_player_obj.ANwounded = 0

}

if my_hitboxID.attack != AT_NSPECIAL  {
   move_cooldown[AT_NSPECIAL] = 0
   hit_player_obj.ANtimeslow = 0
    
}

if my_hitboxID.type == 1  {
 move_cooldown[AT_TAUNT] = 16
 var halodmg = floor(my_hitboxID.damage/2)
    with hit_player_obj {
		take_damage( player, -1 , floor(enemy_hitboxID.damage/-5))
    }     
 if hit_player_obj != self  {       
    if hit_player_obj.ANwounded == 1 {
    	hitstop += 1
    	hit_player_obj.hitstop += 1
    	move_cooldown[AT_EXTRA_3] = 6

        with hit_player_obj {
		take_damage( player, -1 , floor(halodmg/1.5))
        }
        
	   	 sound_play(sound_get("slice"),false, 0, 0.8 + my_hitboxID.damage/20, 0.9 + random_func(2,10,true)/100);   

        
         if spr_dir = -1 {       
         spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 140, km1l );
         } else {
          spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 140, km1r );	
         }
           	var hfx1 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 60, fxslash3 )
			hfx1.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4 + 90
			

    } 
    
        if hit_player_obj.ANwounded == 2 {
        	hitstop += 2
    	hit_player_obj.hitstop += 2
           move_cooldown[AT_EXTRA_3] = 14
           with hit_player_obj {
		   take_damage( player, -1 , floor(halodmg/1.2))
           }  

	   	 sound_play(sound_get("slice"),false, 0, 0.8 + my_hitboxID.damage/20, 0.9 + random_func(2,10,true)/100);   
        sound_play(sound_get("slice3"),false, 0, 0.8 + my_hitboxID.damage/20, 0.9 + random_func(3,10,true)/100);  
         if spr_dir = 1 {       
         spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 140, km2r );
         } else {
          spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 140, km2l );	
         }
         
            var hfx1 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 60, fxslash3 )
			hfx1.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4 + 90
			
 	     
        }
    
        if hit_player_obj.ANwounded == 3 {
        	hitstop += 4
    	hit_player_obj.hitstop += 4
                move_cooldown[AT_EXTRA_3] = 20 		   
                         with hit_player_obj {
              		      take_damage( player, -1 , floor(halodmg))
                         } 
                       sound_play(sound_get("slice"),false, 0, 0.8 + my_hitboxID.damage/20, 0.9 + random_func(2,10,true)/100);  
              	   	 sound_play(sound_get("slice1"),false, 0, 0.8 + my_hitboxID.damage/20, 0.9 + random_func(3,10,true)/100);  
              	   	 
               if spr_dir = 1 {       
               spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 140, km3r );
               } else {
                spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 140, km3l );	
               }

	            var hfx2 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 40, fxslash1 )
			    hfx2.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4
                     	
        }



}

}

if my_hitboxID.attack == AT_FSPECIAL or my_hitboxID.sound_effect == sound_get("slice") {
	
	if my_hitboxID.hbox_num <= 4 && my_hitboxID.attack == AT_FSPECIAL{
                my_hitboxID.destroyed = true
		create_hitbox(AT_FTHROW,1,my_hitboxID.x,my_hitboxID.y)
	}
	       	     var hfx1 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 40, fxslash3 )
       			hfx1.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4
       			
    move_cooldown[AT_EXTRA_3] = 6
    if hit_player_obj.ANwounded < 3 {
    hit_player_obj.ANwounded += 1
    }
if my_hitboxID.attack == AT_FSTRONG or my_hitboxID.attack == AT_USTRONG{
   hit_player_obj.ANwounded = 3
    sound_play(sound_get("slice"),false, 0, 1, 0.65);   
}

}

