///



move_cooldown[AT_USPECIAL] = 0 
move_cooldown[AT_DSPECIAL] = 0 

if move_cooldown[AT_EXTRA_3] = 0 && enemy_hitboxID.type == 1 {
	move_cooldown[AT_EXTRA_3] = 30
	if hit_player_obj.ANwounded > 0 {
	   hit_player_obj.ANwounded -= 1
	}
}

if drop == 0 {
	ntarget = 0
}

if  cheapmode = 1{
    set_attack (AT_EXTRA_2)
    window = 4
    window_timer = 0
    inloop = 1
}


if ANwounded > 0 && hit_player_obj.char_height != 60.1412 {

      if ANwounded == 1 {
    	hitstop += 1
    	hit_player_obj.hitstop += 1
    	move_cooldown[AT_EXTRA_3] = 6

		take_damage( player, -1 , floor((enemy_hitboxID.damage/2)/1.5))

        
	   	 sound_play(sound_get("slice"),false, 0, 0.8 + enemy_hitboxID.damage/20, 0.9 + random_func(2,10,true)/100);   

        
         if spr_dir = -1 {       
         spawn_hit_fx(x, y - 140, km1l );
         } else {
          spawn_hit_fx(x, y - 140, km1r );	
         }
           	var hfx1 = spawn_hit_fx( x,y - 60, fxslash3 )
			hfx1.draw_angle = random_func(9,360,true) + enemy_hitboxID.x*4 + 90
			
    } 
    
     if ANwounded == 2 {
    	hitstop += 2
    	hit_player_obj.hitstop += 2
    	move_cooldown[AT_EXTRA_3] = 14

		take_damage( player, -1 , floor((enemy_hitboxID.damage/2)/1.2))

        
	   	sound_play(sound_get("slice"),false, 0, 0.8 + enemy_hitboxID.damage/20, 0.9 + random_func(2,10,true)/100);   
        sound_play(sound_get("slice3"),false, 0, 0.8 + enemy_hitboxID.damage/20, 0.9 + random_func(3,10,true)/100);  

        
         if spr_dir = -1 {       
         spawn_hit_fx(x, y - 140, km2l );
         } else {
          spawn_hit_fx(x, y - 140, km2r );	
         }
           	var hfx1 = spawn_hit_fx( x,y - 60, fxslash3 )
			hfx1.draw_angle = random_func(9,360,true) + enemy_hitboxID.x*4 + 90

    } 
    
     if ANwounded == 3 {
    	hitstop += 6
    	hit_player_obj.hitstop += 6
    	move_cooldown[AT_EXTRA_3] = 20

		take_damage( player, -1 , floor((enemy_hitboxID.damage/2)))

        
	   	sound_play(sound_get("slice"),false, 0, 0.8 + enemy_hitboxID.damage/20, 0.9 + random_func(2,10,true)/100);   
        sound_play(sound_get("slice3"),false, 0, 0.8 + enemy_hitboxID.damage/20, 0.9 + random_func(3,10,true)/100);  

        
         if spr_dir = -1 {       
         spawn_hit_fx(x, y - 140, km3l );
         } else {
          spawn_hit_fx(x, y - 140, km3r );	
         }
           	var hfx2 = spawn_hit_fx( x,y - 60, fxslash1 )
			hfx2.draw_angle = random_func(9,360,true) + enemy_hitboxID.x*4 + 90
			

    } 
        

}