//intro = 1
//if introhit = 0 {
//	introhit = 1
//}


if get_player_color(player) != 4 && get_player_color(player) != 15 && get_player_color(player) != 8 && get_player_color(player) != 17 {
 sound_play(sound_get("slices"),false,noone,.5 + my_hitboxID.damage/15 , 2.5 - min((hitstop*hitstop)/120 , 1.2) )
} else {
	
	if get_player_color(player) == 4 {
		 sound_play(asset_get("sfx_waterhit_heavy2"),false,noone,.5 + my_hitboxID.damage/15 , 2 - min((hitstop*hitstop)/120 , 1.5) )
		 sound_play(asset_get("sfx_waterhit_medium"),false,noone,.5 + my_hitboxID.damage/15)
		 
		 if my_hitboxID.type == 2 {
         esMnum = floor(hit_player_obj.hitstop)
		 }
	}
	
	if get_player_color(player) == 17 {
		mixellev1 = (1 - random_func(1,100,true)/50)/5
		mixellev2 = (1 - random_func(2,100,true)/50)/5
		
		sound_stop(sound_get("slice"))
		sound_stop(sound_get("slicel"))
		

		 
		 if my_hitboxID.kb_scale >= .6 {
		 	sound_play(asset_get("sfx_blow_medium3") )
		 } else {
		 	sound_play(asset_get("sfx_blow_medium2")) 
	
		 }
		 
	}
	
	
	if get_player_color(player) == 15 {
		sound_stop(sound_get("slice"))
		sound_stop(sound_get("slicel"))
		  
		 sound_play(asset_get("sfx_blow_medium3"),false,noone,.4 + my_hitboxID.damage/15 , 2 - min((hit_player_obj.hitstop*hit_player_obj.hitstop)/120 , 1.2) )
		
		
		 sound_play(asset_get("sfx_waterhit_medium"),false,noone,.6 + my_hitboxID.damage/15)
		 
		 
		 if my_hitboxID.attack == AT_FSTRONG or my_hitboxID.attack == AT_USTRONG or my_hitboxID.attack == AT_DSTRONG {
		    if 	my_hitboxID.damage > 5 {
		    			 sound_play(sound_get("cheese"),false,noone,.8)
		
		    }
		 } 
		 
		 if my_hitboxID.kb_scale >= .6 {
		 	sound_play(asset_get("sfx_blow_heavy2"),false,noone,.4 + my_hitboxID.damage/15 , 2 - min((hit_player_obj.hitstop*hit_player_obj.hitstop)/150 , 1.4) )
		 }
		 
		 if my_hitboxID.attack == AT_EXTRA_1 && my_hitboxID.hbox_num == 8 {
		 	sound_play(sound_get("cheese"),false,noone,.8)
		 }
		 if my_hitboxID.attack == AT_EXTRA_2 && my_hitboxID.hbox_num == 6 {
		 	sound_play(sound_get("cheese"),false,noone,.8)
		 }
		 
	}
	
	
	if get_player_color(player) == 8 {


		 sound_play(sound_get("hmed"),false,noone,.4 + my_hitboxID.damage/15 , 2 - min((hit_player_obj.hitstop*hit_player_obj.hitstop)/120 , 1.2) )
		
		
		 if my_hitboxID.attack == AT_FSTRONG or my_hitboxID.attack == AT_USTRONG or my_hitboxID.attack == AT_DSTRONG {
		    if 	my_hitboxID.damage > 5 {
		    	sound_stop(sound_get("hmed"))
		    		 sound_play(sound_get("hstrong"),false,noone,.4 + my_hitboxID.damage/15 , 2 - min((hit_player_obj.hitstop*hit_player_obj.hitstop)/120 , 1.2) )
	 
		
		    }
		 } 
		 
		 if my_hitboxID.kb_scale >= .6 {
		 	sound_stop(sound_get("hmed"))	
		   sound_play(sound_get("hstrong"),false,noone,.5 + my_hitboxID.damage/15 , 2 - min((hit_player_obj.hitstop*hit_player_obj.hitstop)/150 , 1.2) )
	     }
		 
		 if my_hitboxID.attack == AT_EXTRA_1 && my_hitboxID.hbox_num == 8 {
		 	sound_stop(sound_get("hmed"))
	   sound_play(sound_get("hcine"),false,noone,.4 + my_hitboxID.damage/15 , 2 - min((hit_player_obj.hitstop*hit_player_obj.hitstop)/150 , 1.2) )
	  
		 }
		    if my_hitboxID.attack == AT_EXTRA_2 && my_hitboxID.hbox_num == 6 {
		    	sound_stop(sound_get("hmed"))
		   sound_play(sound_get("hcine"),false,noone,.4 + my_hitboxID.damage/15 , 2 - min((hit_player_obj.hitstop*hit_player_obj.hitstop)/150 , 1.2) )
	  
		 }
		 
	}
	
	
}


if my_hitboxID.damage >= 1 {
move_cooldown[AT_EXTRA_3] = hitstop
maxdraw = hitstop
hitdmg = my_hitboxID.damage/6
}

angledraw = random_func(1,360,true)  

if get_player_color(player) == 5 && sakura == 1 {
 	
 	
	var hitsp = random_func(20, 5, true) ;
	
	if (hitsp == 0 ){
    	var hit1 = spawn_hit_fx( hit_player_obj.x + random_func(3, 10, true), hit_player_obj.y - 30 + random_func(1, 10, true), shit1 )
    		hit1.depth = -1000

	}
	
  	if (hitsp == 1 ){
    var hit2 = spawn_hit_fx( hit_player_obj.x + random_func(3, 10, true), hit_player_obj.y - 30 + random_func(1, 10, true), shit2 )
    	hit2.depth = -1000

     }
     
     if (hitsp == 2){
    	var hit3 = spawn_hit_fx( hit_player_obj.x + random_func(3, 10, true), hit_player_obj.y - 30 + random_func(1, 10, true), shit3 )
    		hit3.depth = -1000

     }
     
       	if (hitsp == 3){
 	var hit4 = spawn_hit_fx( hit_player_obj.x + random_func(3, 10, true), hit_player_obj.y - 30 + random_func(1, 10, true), shit4 )
 		hit4.depth = -1000
     }
     
         	if (hitsp == 4){
 	var hit5 = spawn_hit_fx( hit_player_obj.x + random_func(3, 10, true), hit_player_obj.y - 30 + random_func(1, 10, true), shit5 )
 		hit5.depth = -1000
     }
     
 	
 }
 
     
if my_hitboxID.attack == AT_EXTRA_3 {
	
	 halo -= 1   
	
}


if my_hitboxID.attack == AT_EXTRA_2 && my_hitboxID.hbox_num != 6 {
	
	if hit_player_obj.y > y {
		
		hit_player_obj.y -= 5
		
	}
	
	 if hit_player_obj.x > x + (35 * spr_dir){
			hit_player_obj.x -= 30
		}
		
	if hit_player_obj.x < x + (35 * spr_dir){
			hit_player_obj.x += 30
		}
	
}



if my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 2 {
	
	if hit_player_obj.y < y {
		
		hit_player_obj.y -= 5
		
	}
	
	halo -= 1

			hit_player_obj.x = x + (45 * spr_dir)


}

if my_hitboxID.attack == AT_FAIR && my_hitboxID.hbox_num == 3 {
	halo += 1   
	sound_play(sound_get("RI2"))
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 2) {
	 halo -= 1   
	 wavehit = 6
	 wavetime = 2
	   sound_play(sound_get("RI"),false,noone, 1.2 ,1.2)	
}

if (my_hitboxID.attack == AT_EXTRA_1 && my_hitboxID.hbox_num == 1) {
  sound_play(sound_get("RI"),false,noone, 1.2 ,1.3)	
  spawn_hit_fx( x  , y - 35 , dimg )
  spawn_hit_fx( hit_player_obj.x - 10*spr_dir , hit_player_obj.y - 65 , 305 )
}

if (my_hitboxID.attack == AT_EXTRA_3 && my_hitboxID.hbox_num > 1) {
  sound_play(sound_get("SpaceCut"),false,noone, .85 ,1.4)	
}

if (my_hitboxID.attack == AT_UAIR) && uairhit > 0 {
	 uairhit -= 1   
}

if (my_hitboxID.attack == AT_UAIR) && uairhit == 0 && halo < 6 {
	 halo -= 1   
}

if (my_hitboxID.attack == AT_USTRONG) {
	 halotimer = 180; 
	 halo += 1  
}

if (my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num == 1) {
	 halotimer = 180; 
	 halo += 1   
	 sound_play(sound_get("slice"))
}

if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 3) {
	 halotimer = 180; 
	 halo += 1   
}

if (my_hitboxID.attack == AT_FSTRONG) {
	 halotimer = 180; 
}

if (my_hitboxID.attack == AT_DSTRONG) {
	 halotimer = 180; 
	 if my_hitboxID.hbox_num < 3 {
	 	halo -= 1
	 }
}

if (my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num == 2) {
	set_attack (AT_DAIR)
	window = 10
	window_timer = 0
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 3) {
	
	 halo -= 1   
	 wavehit -= 1
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 5) {
	
	 halo -= 1   
	 wavehit -= 1
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1) {
	
	 halo -= 1   
}

if my_hitboxID.attack == AT_TAUNT {
	
	 halo += 5   
	halotimer = 180; 
}

if halo < 6 {     
 halo += 1    
 halotimer = 180; 
} 

if my_hitboxID.type == 1 {
   
   if hitstop > 15 {
   	 hit_player_obj.hitstop += 1
   	 hitstop += 1
   }
   

   
   if hitstop > 5 {
   	 hit_player_obj.hitstop += 1
   	 hitstop += 1
   }	
	
}
