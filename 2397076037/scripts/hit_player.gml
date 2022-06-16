///
if get_player_color(player) == 7 {
    		set_hitbox_value(AT_USPECIAL, 16, HG_PROJECTILE_HSPEED, 6 - random_func(4, 14, true) );
            set_hitbox_value(AT_USPECIAL, 16, HG_PROJECTILE_VSPEED, -3 - random_func(3, 6, true) );	
    		create_hitbox(AT_USPECIAL , 16 , floor(hit_player_obj.x + 20 - random_func(4, 40, true)) ,  floor(hit_player_obj.y - 40 + 20 - random_func(5, 40, true)));
 
}
rankm += my_hitboxID.damage*15
if rank == 0 && rankm < 120 {
	rankm += 100
}
inactive = 120

 if  (my_hitboxID.attack == AT_DSPECIAL) {
 		rankm += 10
 }
 
  if  (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1) {
 		rankm += 60
 		    //sound_play(sound_get("SpaceCut"))
 		    //shake_camera(2,6)
 }
 
  if  (my_hitboxID.attack == AT_EXTRA_1) {
 		rankm += 40
 }
 
 if  (my_hitboxID.attack == AT_NSPECIAL) {
 	if DT <= 16 {
 		DT += 3
 		rankm += 100
 	} 
 }
 
  if  (my_hitboxID.attack == AT_TAUNT &&  move_cooldown[AT_TAUNT_2] = 0) {
  	DT += 1
  	move_cooldown[AT_TAUNT_2] = 15
  }	
  
if my_hitboxID.type == 1 && DT < 16 && triggered == 0 {
	
  if (my_hitboxID.damage <= 5 && my_hitboxID.damage > 1) {
  	DT += 1

  }	
  
  if rank > 4 && my_hitboxID.damage > 5 {
  	DT += 1
  }
  
  if my_hitboxID.damage > 5 {
  	DT += 2
  }	
 
}

move_cooldown[AT_EXTRA_3] = hitstop/2
maxdraw = hitstop/2
hitdmg = my_hitboxID.damage/10

angledraw = random_func(1,360,true)  

if move_cooldown[AT_DAIR] = 0 && my_hitboxID.attack == AT_DAIR && (my_hitboxID.hbox_num == 1 or my_hitboxID.hbox_num == 3){
    sound_play(sound_get("vef2"))
 move_cooldown[AT_DAIR] = 20
}


if triggered == 1 or rank >= 4{
	   	         
	
	if triggered == 1 &&  my_hitboxID.damage > 1 {   
		
		//smallfunnyslashfx = hit_fx_create( sprite_get( "smallfunnyslashfx" ), floor(5 + min(20, hitstop )) );

    //actualworkdamn = spawn_hit_fx( hit_player_obj.x, hit_player_obj.y - 40, smallfunnyslashfx )

    //actualworkdamn.draw_angle = random_func(9,360,true) + my_hitboxID.x*4
    




		if my_hitboxID.type == 1 && my_hitboxID.attack != AT_TAUNT{
			hitstop += 2
			hit_player_obj.hitstop += 2
		}
		
		 sound_play(sound_get("slicew1"),false,noone,.5 + my_hitboxID.damage/15 , 2.3 - min((hitstop*hitstop)/80 , 1.5) )

	if my_hitboxID.damage >= 2 {
	   	 with hit_player_obj {
                 take_damage( player, -1 , 1)
         }	
         
     }
     
     
     if my_hitboxID.damage >= 6 {
	   	 with hit_player_obj {
                 take_damage( player, -1 , 1)
         }	

     }
	}
	
	if  rank >= 4 && my_hitboxID.damage > 1 {
		  slashn = hit_fx_create( sprite_get( "slashc" ), floor(8 + hitstop) );
		 spawn_hit_fx (hit_player_obj.x  + (random_func(1, 36, true))*spr_dir, hit_player_obj.y - 10 - random_func(2, 66, true) , slashn)
 	      sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone, 0.6 + my_hitboxID.damage/20, 2.2 - min((hitstop*hitstop)/80,1.5) )

   }
   
}


if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1 {
	stormtarget = hit_player_obj
	create_hitbox(AT_FSPECIAL, 3, hit_player_obj.x, hit_player_obj.y - 40 )
}


