///

if !timebreak {
if my_hitboxID.damage >= 2 {
shock += 1
}

inactive = 150

move_cooldown[AT_FSPECIAL] = 0

if my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 5  {
	jabhit = 1
}


shocktimer = 300
}

move_cooldown[AT_NSPECIAL_2] = 8

if (my_hitboxID.type == 2 &&  my_hitboxID.damage <= 1) or (my_hitboxID.attack == AT_FSTRONG &&  my_hitboxID.damage <= 1){
			var fx1 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 40, hfx1 )
			fx1.draw_angle = random_func(1,360,1)
}

if my_hitboxID.damage < 5  {
	
			
			
			
    switch random_func(2,3,true) {
         case 0 :    
          sound_play(sound_get("hitl1"),false,noone, (0.6 + my_hitboxID.damage/30), 1 + random_func(1,3,true)/10)  
         break ;
         
         case 1 :    
          sound_play(sound_get("hitl2"),false,noone, (0.6 + my_hitboxID.damage/30), 1 + random_func(1,3,true)/10)  
         break ;  
         
         case 2 :    
          sound_play(sound_get("hitl3"),false,noone, (0.6 + my_hitboxID.damage/30), 1 + random_func(1,3,true)/10)  
         break ;
         
    }
} else {
    

			
    switch random_func(2,2,true) {
         case 0 :    
          sound_play(sound_get("hith1"),false,noone, (0.6 + my_hitboxID.damage/30), 1 + random_func(1,3,true)/10)  
         break ;
         
         case 1 :    
          sound_play(sound_get("hith2"),false,noone, (0.6 + my_hitboxID.damage/30), 1 + random_func(1,3,true)/10)  
         break ;  
         
         
    }
    
}

if my_hitboxID.damage >= 8 {
    switch random_func(2,2,true) {
         case 1 :    
          sound_play(sound_get("hith1"),false,noone, (0.6 + my_hitboxID.damage/30), 1 + random_func(2,3,true)/10)  
         break ;
         
         case 0 :    
          sound_play(sound_get("hith2"),false,noone, (0.6 + my_hitboxID.damage/30), 1 + random_func(2,3,true)/10)  
         break ;  
         
         
    }

}

if my_hitboxID.attack == AT_NAIR && my_hitboxID.hbox_num < 3 && hit_player_obj.super_armor == false {
	old_vsp -= 1
	
	    hit_player_obj.x += floor((x + 40*spr_dir - hit_player_obj.x)/4) 
        hit_player_obj.y += floor((y - 20 - hit_player_obj.y)/4) 
}

if my_hitboxID.attack == AT_UAIR && my_hitboxID.hbox_num == 1 && hit_player_obj.super_armor == false  {
	old_vsp -= 1
        hit_player_obj.y += floor((y - 20 - hit_player_obj.y)/4) 
}

if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 6 {
    hit_player_obj.y = y
}

if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 2 {
    victim = hit_player_obj
    spawn_hit_fx(victim.x,victim.y,aih1)
    create_hitbox(AT_FSPECIAL,3,victim.x,victim.y - 30)
}
 
if my_hitboxID.attack == AT_FAIR or my_hitboxID.attack == AT_BAIR or (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1)

or ((my_hitboxID.attack == AT_FSTRONG or my_hitboxID.attack == AT_USTRONG or my_hitboxID.attack == AT_TAUNT) && my_hitboxID.hbox_num <= 2) {
 	shock += 1
}   

if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 8 {
    victim = hit_player_obj
    spawn_hit_fx(victim.x,y+4,aih1)
    spawn_hit_fx(victim.x,y+4,aih2)
    create_hitbox(AT_FSPECIAL,3,victim.x,victim.y - 30)
}                       
                        
if my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 1 {
    uspechit = 1
}

if my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1 && my_hitboxID.type == 1{
    timebreak = floor(shock*shock*1.8)
    timebreakmax = floor(shock*shock*1.8)
    shocktimer = 0
    
            ais1 = sprite_index
            aii1 = image_index 
            aix1 = x
            aiy1 = y
            aisd1= spr_dir
            aid1 = 30
          sound_stop(sound_get("downbhit"))
          sound_play(sound_get("downbhit"),false,noone, (0.6 + my_hitboxID.damage/30), 1 + random_func(2,3,true)/10)  
      sound_play(asset_get("sfx_spin"),false,noone,1,0.4)
}

if my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 4 {
	spawn_hit_fx( hit_player_obj.x,hit_player_obj.y , hfx2 )
    sound_play(sound_get("cheese"))
    spawn_hit_fx(hit_player_obj.x, hit_player_obj.y + 10,306)
}

    
    
    if timebreak > 10 {
    	
    	create_hitbox(AT_EXTRA_1,7,hit_player_obj.x + 20 - random_func(3,40,true),hit_player_obj.y - 32 + 20 - random_func(4,40,true))
    	
    	    switch random_func(2,2,true) {
         case 0 :    
          create_hitbox(AT_EXTRA_1,8,hit_player_obj.x + 20 - random_func(5,40,true),hit_player_obj.y - 32 + 20 - random_func(6,40,true))
         break ;
         
         case 1 :    
          create_hitbox(AT_EXTRA_1,9,hit_player_obj.x + 20 - random_func(5,40,true),hit_player_obj.y - 32 + 20 - random_func(6,40,true))
         break ;  
         
         
        }
    }
    
    
