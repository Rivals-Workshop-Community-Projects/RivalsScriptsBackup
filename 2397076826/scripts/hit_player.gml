///

if my_hitboxID.attack == AT_USPECIAL && hitstop = 0{
	hitstop = 10
	hitpause = true
	hsp = 0
}

if my_hitboxID.sound_effect == asset_get("sfx_blow_medium2") or my_hitboxID.sound_effect == asset_get("sfx_blow_medium1") or 
my_hitboxID.sound_effect == asset_get("sfx_blow_medium3") or my_hitboxID.sound_effect == asset_get("sfx_blow_heavy2") 
or my_hitboxID.sound_effect == asset_get("sfx_blow_heavy1"){
	sword = false 
} else {
	sword = true
}


if my_hitboxID.damage > 2 {
smark += 1
}
   	if get_player_color(player) == 9 && my_hitboxID.attack != AT_NSPECIAL{
   		sound_play(sound_get("stinghit"),false,noone, my_hitboxID.damage/8)
   	}
   	
if smark == 3 &&  move_cooldown[AT_EXTRA_1] = 0 {
    
    move_cooldown[AT_EXTRA_1] = 30 

   if sword  {
   	shake_camera(floor(hitstop/2)+2,floor(hitstop/2) + 2)
   	 spawn_hit_fx (hit_player_obj.x, hit_player_obj.y - 35, SC) 
     spawn_hit_fx (x + 4, y + 22, 305) 
     sound_play(sound_get("RI"),false,noone,1)
     
      with hit_player_obj {
		   	take_damage( player, -1 , 6)
          }
          
   	if get_player_color(player) != 9{
        sound_play(sound_get("ADfinish"),false,noone,0.8)
   	} else {
   		sound_play(sound_get("cheese"),false,noone,2)
   		sound_play(sound_get("ADfinish"),false,noone,0.6)
   	}
   }
   
   if !sword  {
   	shake_camera(floor(hitstop/2)+8,floor(hitstop/2) + 4)
   	     spawn_hit_fx (x + 4, y + 22, 305) 
   	      with hit_player_obj {
		   	take_damage( player, -1 , 10)
          }
          hitstop += 10
          hit_player_obj.hitstop += 10

   	        	 spawn_hit_fx (hit_player_obj.x, hit_player_obj.y - 35, 304) 

   	    if get_player_color(player) != 9{
   	    	   	        	 sound_play(sound_get("ADfinishm"),false,noone,0.7)
               	 sound_play(asset_get("sfx_kragg_rock_shatter"),false,noone,2)
   	    } else {
   	    	sound_play(sound_get("cheese"),false,noone,2)
   	    	   	        	 sound_play(sound_get("ADfinishm"),false,noone,0.5)
   	    	sound_play(sound_get("sfx_kragg_rock_shatter"),false,noone,1.6)
   	    }
   }
        
}


if sword && my_hitboxID.damage >= 1 {
  	
          
move_cooldown[AT_EXTRA_3] = hitstop
maxdraw = hitstop
hitdmg = my_hitboxID.damage/10

angledraw = random_func(1,360,true)
}

if (my_hitboxID.attack == AT_FSPECIAL) {
	fspechit = 1
	if my_hitboxID.hbox_num == 2 {
	fspechit2 = 1	
	}
}

if (my_hitboxID.attack == AT_USPECIAL or my_hitboxID.attack == AT_NSPECIAL) {
if cloneout = 0 {
   	create_hitbox(AT_DSPECIAL, 1, x, y - 40)
     	cloneout = 1
} 
}