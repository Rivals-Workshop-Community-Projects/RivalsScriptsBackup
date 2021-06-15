///
///

		with hit_player_obj {
		take_damage(player,-1, other.admb*-1)
	}
	
if admw == 4 && (my_hitboxID.sound_effect == sound_get("slice1") or my_hitboxID.sound_effect == sound_get("slice2")
or my_hitboxID.sound_effect == sound_get("slice3")) {
	

	
	sound_play(sound_get("strong3"),false,noone,0.6,0.9 + random_func(1,20,true)/30)
}


if my_hitboxID.sound_effect != sound_get("slice1") && my_hitboxID.sound_effect != sound_get("slice2")
&& my_hitboxID.sound_effect != sound_get("slice3") && my_hitboxID.sound_effect != asset_get("sfx_holy_lightning") {
	

	if  admb == 3 {
	sound_play(sound_get("strong3"),false,noone,0.7,0.6 + random_func(1,10,true)/30)
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



if my_hitboxID.attack == AT_FTILT or my_hitboxID.attack == AT_DTILT or my_hitboxID.attack == AT_JAB 
or my_hitboxID.attack == AT_UTILT or my_hitboxID.attack == AT_DATTACK {
	if admw == 4 {
}
	
    if karmatimer == 0 and soultimer == 0 {
    if admw < 4 {
  
  if admw == 1 {
  	admw += 1
  }
  
  admw += 1
  

  if admb > 0 {
  admb -= 1
  }
    }
    } else {
    spawn_hit_fx (hit_player_obj.x,hit_player_obj.y - 40, wh )
    }
}

if my_hitboxID.attack == AT_FSTRONG or my_hitboxID.attack == AT_DSTRONG or my_hitboxID.attack == AT_USTRONG{
	
	
	


	
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
	


	
	
	
		if admb == 3 {
var ADdmg = floor(my_hitboxID.damage)
}

    if karmatimer == 0 and soultimer == 0 {
    if admb < 3 {
  admb += 1
  
  admw -= 1
    if admw == 2 {
  	admw -= 1
  }
    }
    } else {
    
    spawn_hit_fx (hit_player_obj.x,hit_player_obj.y - 40, bh )
}
}


if karmatimer > 0 or soultimer < 0 {	
    	var ADdmg = floor(my_hitboxID.damage)
with hit_player_obj {
		
}		

if soultimer < 0 {
	var karmicD = floor(my_hitboxID.damage/1.5)
     karma += karmicD	

}
    var karmic = my_hitboxID.damage
     karma += karmic
}


if my_hitboxID.attack == AT_FSPECIAL or my_hitboxID.attack == AT_USPECIAL {
	
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
     
	if my_hitboxID.hbox_num == 1 {
	hit_player_obj.y = y
	}
	
	if my_hitboxID.attack == AT_USPECIAL {
	if my_hitboxID.hbox_num == 2 {
	hit_player_obj.x = x
	}
	}
	if my_hitboxID.hbox_num == 1 {

	}
	
}


if my_hitboxID.attack == AT_NSPECIAL {
	

if my_hitboxID.hbox_num == 1 or my_hitboxID.hbox_num == 4 {


	    }
if my_hitboxID.hbox_num == 3 {
	if karmatimer == 0 and soultimer == 0 {

                } else {
                spawn_hit_fx (hit_player_obj.x,hit_player_obj.y - 40, wh )
                }
}
if my_hitboxID.hbox_num == 2 {	
	if karmatimer == 0 and soultimer == 0 {

                } else {
                spawn_hit_fx (hit_player_obj.x,hit_player_obj.y - 40, bh )
                }
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

	
    if karmatimer == 0 and soultimer == 0 {
    if admw < 4 {
  
  if admw == 1 {
  	admw += 1
  }
  
  admw += 1
  

  if admb > 0 {
  admb -= 1
  }
    }
    } else {
    spawn_hit_fx (hit_player_obj.x,hit_player_obj.y - 40, wh )
    }
   }
	
if my_hitboxID.hbox_num > 2 {	
		
	
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
     

		
    if karmatimer == 0 and soultimer == 0 {
    if admb < 3 {
  admb += 1
  
  admw -= 1
    if admw == 2 {
  	admw -= 1
  }
    }
    } else {
    
    spawn_hit_fx (hit_player_obj.x,hit_player_obj.y - 40, bh )
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
     

if my_hitboxID.hbox_num == 1 or my_hitboxID.hbox_num == 4 {
	
	if my_hitboxID.hbox_num == 4  {
		sound_play(sound_get("slicen"))
	}
	if nshit < 2{
	nshit += 1
	}
	if nshit == 2 {
		sound_play(sound_get("slicef"))
	}

}
	
}

if (my_hitboxID.attack == AT_FSPECIAL or my_hitboxID.attack == AT_USPECIAL  or 
(my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.type == 1 )) {

if my_hitboxID.attack == AT_NSPECIAL {
	sound_play(sound_get("slicef"))
}	
	 move_cooldown[AT_NSPECIAL] = 10
	 
	if nshit < 2{
	nshit = 2
	}

		
	
}