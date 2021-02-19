///


if my_hitboxID.type == 1 && DT < 16 && triggered == 0 {
  if my_hitboxID.damage <= 5 &&  my_hitboxID.damage > 1{
  	DT += 1
  }	
  
   if my_hitboxID.damage > 5{
  	DT += 2
  }	
  
  
}

move_cooldown[AT_EXTRA_3] = hitstop/2
maxdraw = hitstop/2
hitdmg = my_hitboxID.damage/10

angledraw = random_func(1,360,true)  

if move_cooldown[AT_DAIR] = 0 && my_hitboxID.attack == AT_DAIR && (my_hitboxID.hbox_num == 1 or my_hitboxID.hbox_num == 3){
    sound_play(sound_get("vef2"))
 spawn_hit_fx (x+20*spr_dir,y-40, lighten)    
 move_cooldown[AT_DAIR] = 20
}


if triggered == 1 {
		slashn = hit_fx_create( sprite_get( "slashc" ), 10);
		 spawn_hit_fx (hit_player_obj.x  + (random_func(1, 36, true))*spr_dir, hit_player_obj.y - 10 - random_func(2, 66, true) , slashn)
	   	 
	if my_hitboxID.damage >= 2 {
	   	 with hit_player_obj {
                 take_damage( player, -1 , 1)
         }	
     }
     
     if my_hitboxID.damage >= 3 {
	   	 with hit_player_obj {
                 take_damage( player, -1 , 1)
         }	
     }
     
     if my_hitboxID.damage >= 6 {
	   	 with hit_player_obj {
                 take_damage( player, -1 , 2)
         }	
     }
     
}


if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1 {
	stormtarget = hit_player_obj
	create_hitbox(AT_FSPECIAL, 3, hit_player_obj.x, hit_player_obj.y - 40 )
}