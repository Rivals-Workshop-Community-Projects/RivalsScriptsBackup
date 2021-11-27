///
///
move_cooldown[AT_NSPECIAL_2] = 0

if my_hitboxID.attack == AT_USTRONG   {
	    hitstop -= 4
        hit_player_obj.hitstop -= 4
}

if  (my_hitboxID.attack == AT_UAIR && my_hitboxID.hbox_num > 2) {
	
	hitstop -= 2
    hit_player_obj.hitstop -= 2
}

if my_hitboxID.attack != AT_NSPECIAL && my_hitboxID.attack != AT_FSPECIAL 
&& my_hitboxID.attack != AT_USPECIAL && my_hitboxID.attack != AT_DSPECIAL && my_hitboxID.attack != AT_TAUNT {
	
if (my_hitboxID.sound_effect == sound_get("slice1") or my_hitboxID.sound_effect == sound_get("slice2")
or my_hitboxID.sound_effect == sound_get("slice3")) and my_hitboxID.damage > 1 {
	

	if admw == 4 && admb == 0 {
	    with hit_player_obj {
        	take_damage(player,-1, floor( (other.my_hitboxID.damage*-0.5)) )
        }
        sound_stop(sound_get("slice1"))
		sound_stop(sound_get("slice2"))
		sound_stop(sound_get("slice3"))
		
	    sound_play(asset_get("sfx_blow_medium2"),false,noone,.4 + my_hitboxID.damage/15 , 2 - min((hit_player_obj.hitstop*hit_player_obj.hitstop)/120 , 1.2) )
	    sound_play(asset_get("sfx_shovel_hit_med2"),false,noone,.6 + my_hitboxID.damage/15 , 2 - min((hit_player_obj.hitstop*hit_player_obj.hitstop)/120 , 1.2) )

	} if admb == 3 {
		spawn_hit_fx (hit_player_obj.x,hit_player_obj.y - 40, 306 )
		spawn_hit_fx (hit_player_obj.x,hit_player_obj.y - 40, wh )
		if karmatimer == 0 and soultimer == 0 { 
		hit_player_obj.hitstop += floor(hitstop/2) + 10
		} else {
		hit_player_obj.hitstop += floor(hitstop/2)	
		}
		
		with hit_player_obj {
        	take_damage(player,-1, floor( (other.my_hitboxID.damage*0.5)) )
        }

	    sound_play(sound_get("strong3"),false,noone,0.6,0.9 + random_func(1,20,true)/30)	
	}
	
}


if my_hitboxID.sound_effect != sound_get("slice1") && my_hitboxID.sound_effect != sound_get("slice2")
&& my_hitboxID.sound_effect != sound_get("slice3") && my_hitboxID.sound_effect != asset_get("sfx_holy_lightning") and my_hitboxID.damage > 1  {
	

        
	if  admb == 3 && admw == 0 {
		
	    with hit_player_obj {
        	take_damage(player,-1, floor( (other.my_hitboxID.damage*-0.5)) )
        }
		sound_stop(sound_get("slice1"))
		sound_stop(sound_get("slice2"))
		sound_stop(sound_get("slice3"))
	    sound_stop(sound_get("slicen"))
		sound_stop(sound_get("slicef"))
		sound_stop(sound_get("slicen1"))
		sound_stop(sound_get("slicef2"))
		sound_stop(sound_get("strong1"))
		sound_stop(sound_get("strong3"))
		
	    sound_play(asset_get("sfx_blow_heavy2"),false,noone,.4 + my_hitboxID.damage/15 , 2 - min((hit_player_obj.hitstop*hit_player_obj.hitstop)/120 , 1.2) )
	    sound_play(asset_get("sfx_shovel_hit_med1"),false,noone,.6 + my_hitboxID.damage/15 , 2 - min((hit_player_obj.hitstop*hit_player_obj.hitstop)/120 , 1.2) )
        
        if attack != AT_DAIR {
        hitstop -= 2
        hit_player_obj.hitstop -= 2
        }
        
	} if admw == 4 {
        
         spawn_hit_fx (hit_player_obj.x,hit_player_obj.y - 40, bh )		
	if (random_func(5, 4, true) == 0 ){
    	spawn_hit_fx( hit_player_obj.x + random_func(3, 40, true)*spr_dir, hit_player_obj.y - 50 + random_func(1, 10, true), shit3 )
    }
	
  	if (random_func(5, 4, true) == 1 ){
        	spawn_hit_fx( hit_player_obj.x + random_func(3, 40, true)*spr_dir, hit_player_obj.y - 50 + random_func(1, 10, true), shit4 )
     }
     
     if (random_func(5, 4, true) == 2){
    	spawn_hit_fx( hit_player_obj.x + random_func(3, 40, true)*spr_dir, hit_player_obj.y - 50 + random_func(1, 10, true), shit5 )
     }
     
    if (random_func(5, 4, true) == 3){
    	spawn_hit_fx( hit_player_obj.x + random_func(3, 40, true)*spr_dir, hit_player_obj.y - 50 + random_func(1, 10, true), shit6 )
     }
     
		
		sound_play(sound_get("strong3"),false,noone,0.7,0.6 + random_func(1,10,true)/30)
	}
}

}


move_cooldown[AT_EXTRA_1] = 20 + my_hitboxID.damage*4





if introhit = 0 {
	introhit = 1
}

intro = 1


if  karmatimer > 2 {
	with hit_player_obj {
		take_damage(player,-1,floor(other.my_hitboxID.damage/2))
	}
	
	
}



if (my_hitboxID.attack == AT_FTILT or my_hitboxID.attack == AT_DTILT or my_hitboxID.attack == AT_JAB 
or my_hitboxID.attack == AT_UTILT or my_hitboxID.attack == AT_DATTACK) and my_hitboxID.damage > 1  {
//	if admw == 4 {
//}
//	
//    if karmatimer == 0 and soultimer == 0 {
//    if admw < 4 {
//  
//  if admw == 1 {
//  	admw += 1
//  }
//  
//  admw += 1
//  
//
//  if admb > 0 {
//  admb -= 1
//  }
//    }
//    } else {
//    spawn_hit_fx (hit_player_obj.x,hit_player_obj.y - 40, wh )
//    }
//  
if karmatimer == 0 and soultimer == 0 {
 admw = 4 
 admb = 0
}

}

if my_hitboxID.attack == AT_FSTRONG or my_hitboxID.attack == AT_DSTRONG or my_hitboxID.attack == AT_USTRONG{
	
	
	

	
	
//		if admb == 3 {
//var ADdmg = floor(my_hitboxID.damage)
//}
//
//    if karmatimer == 0 and soultimer == 0 {
//    if admb < 3 {
//  admb += 1
//  
//  admw -= 1
//    if admw == 2 {
//  	admw -= 1
//  }
//    }
//    } else {
//    
//    spawn_hit_fx (hit_player_obj.x,hit_player_obj.y - 40, bh )
//}
//}
if karmatimer == 0 and soultimer == 0 {
admb = 3
admw = 0
}

if karmatimer > 0 or soultimer < 0 {	
    	var ADdmg = floor(my_hitboxID.damage)
with hit_player_obj {
		
}		

}

if soultimer < 0 {
	var karmicD = floor(my_hitboxID.damage/1.5)
     karma += karmicD	

}
    var karmic = my_hitboxID.damage
     karma += karmic
}


if my_hitboxID.attack == AT_FSPECIAL or my_hitboxID.attack == AT_USPECIAL or my_hitboxID.attack == AT_DSPECIAL {
	
	if (random_func(5, 4, true) == 0 ){
    	spawn_hit_fx( hit_player_obj.x + random_func(3, 40, true)*spr_dir, hit_player_obj.y - 50 + random_func(1, 10, true), shit3 )
    }
	
  	if (random_func(5, 4, true) == 1 ){
        	spawn_hit_fx( hit_player_obj.x + random_func(3, 40, true)*spr_dir, hit_player_obj.y - 50 + random_func(1, 10, true), shit4 )
     }
     
     if (random_func(5, 4, true) == 2){
    	spawn_hit_fx( hit_player_obj.x + random_func(3, 40, true)*spr_dir, hit_player_obj.y - 50 + random_func(1, 10, true), shit5 )
     }
     
    if (random_func(5, 4, true) == 3){
    	spawn_hit_fx( hit_player_obj.x + random_func(3, 40, true)*spr_dir, hit_player_obj.y - 50 + random_func(1, 10, true), shit6 )
     }

	

	
}


if my_hitboxID.attack == AT_NSPECIAL {
	

if my_hitboxID.hbox_num == 1 or my_hitboxID.hbox_num == 4 {
  sound_play(sound_get("slice1"))
}
	    
	    
if my_hitboxID.hbox_num == 3 {
                spawn_hit_fx (hit_player_obj.x,hit_player_obj.y - 40, wh )

}

if my_hitboxID.hbox_num == 2 {	

                spawn_hit_fx (hit_player_obj.x,hit_player_obj.y - 40, bh )
            
}	


}

if  my_hitboxID.attack == AT_DAIR {
		if my_hitboxID.hbox_num == 4 {
			sound_play(sound_get("slice1"))
		}
}

if  my_hitboxID.attack == AT_NAIR or  my_hitboxID.attack == AT_FAIR 
or my_hitboxID.attack == AT_UAIR or  my_hitboxID.attack == AT_DAIR{
	if my_hitboxID.hbox_num <= 2 {

//	
  //  if karmatimer == 0 and soultimer == 0 {
  //  if admw < 4 {
  //
  //if admw == 1 {
  //	admw += 1
  //}
  //
  //admw += 1
  //
//
  //if admb > 0 {
  //admb -= 1
  //}
  //  }
  //  } else {
  //  spawn_hit_fx (hit_player_obj.x,hit_player_obj.y - 40, wh )
  //  }
  // }
if karmatimer == 0 and soultimer == 0 {  
  admw = 4 
 admb = 0
}
	} else {	
		

		
//    if karmatimer == 0 and soultimer == 0 {
//    if admb < 3 {
//  admb += 1
//  
//  admw -= 1
//    if admw == 2 {
//  	admw -= 1
//  }
//    }
//    } else {
//    
//    spawn_hit_fx (hit_player_obj.x,hit_player_obj.y - 40, bh )
//}
//}
if karmatimer == 0 and soultimer == 0 {
 admb = 3
 admw = 0
}

}
}

if my_hitboxID.attack == AT_NSPECIAL {
	

	
	if (random_func(5, 4, true)== 0 ){
    	spawn_hit_fx( hit_player_obj.x + random_func(3, 40, true)*spr_dir, hit_player_obj.y - 50 + random_func(1, 10, true), shit3 )
    }
	
  	if (random_func(5, 4, true) == 1 ){
        	spawn_hit_fx( hit_player_obj.x + random_func(3, 40, true)*spr_dir, hit_player_obj.y - 50 + random_func(1, 10, true), shit4 )
     }
     
     if (random_func(5, 4, true) == 2){
    	spawn_hit_fx( hit_player_obj.x + random_func(3, 40, true)*spr_dir, hit_player_obj.y - 50 + random_func(1, 10, true), shit5 )
     }
     
    if (random_func(5, 4, true) == 3){
    	spawn_hit_fx( hit_player_obj.x + random_func(3, 40, true)*spr_dir, hit_player_obj.y - 50 + random_func(1, 10, true), shit6 )
     }
     

if my_hitboxID.type == 1{
	
	
	
	
	if nshit < 2{
	nshit += 1
	}


}
	
}

if (my_hitboxID.attack == AT_FSPECIAL or my_hitboxID.attack == AT_USPECIAL  or 
(my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.type == 1 )) {


	 move_cooldown[AT_NSPECIAL] = 10
	 
	if nshit < 2{
	nshit = 2
	}

		
	
}