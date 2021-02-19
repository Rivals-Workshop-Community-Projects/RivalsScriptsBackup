///
///

if (curse_target == 0 or (admw == 0 and admb == 0)) and hit_player_obj != self{
	curse_target = hit_player_obj
}

if introhit = 0 {
	introhit = 1
}

intro = 1

if hit_player_obj == curse_target {


if my_hitboxID.attack == AT_FTILT or my_hitboxID.attack == AT_DTILT or my_hitboxID.attack == AT_JAB 
or my_hitboxID.attack == AT_UTILT or my_hitboxID.attack == AT_DATTACK {
	if admw == 4 {
}
	
    if karmatimer == 0 and soultimer == 0 {
    if admw < 4 {
  admw += 1
    }
    } else {
    spawn_hit_fx (hit_player_obj.x,hit_player_obj.y - 40, wh )
}
}

if my_hitboxID.attack == AT_FSTRONG or my_hitboxID.attack == AT_DSTRONG or my_hitboxID.attack == AT_USTRONG{
	
	
	


	var hits = random_func(5, 4, true) ;
	
	if (hits == 0 ){
    	spawn_hit_fx( hit_player_obj.x + random_func(3, 40, true)*spr_dir, hit_player_obj.y - 50 + random_func(1, 10, true), shit3 )
    }
	
  	if (hits == 1 ){
        	spawn_hit_fx( hit_player_obj.x + random_func(3, 40, true)*spr_dir, hit_player_obj.y - 50 + random_func(1, 10, true), shit4 )
     }
     
     if (hits == 2){
    	spawn_hit_fx( hit_player_obj.x + random_func(3, 40, true)*spr_dir, hit_player_obj.y - 50 + random_func(1, 10, true), shit5 )
     }
     
    if (hits == 3){
    	spawn_hit_fx( hit_player_obj.x + random_func(3, 40, true)*spr_dir, hit_player_obj.y - 50 + random_func(1, 10, true), shit6 )
     }
	


	
	
	
		if admb == 3 {
var ADdmg = floor(my_hitboxID.damage)
}

    if karmatimer == 0 and soultimer == 0 {
    if admb < 3 {
  admb += 1
    }
    } else {
    
    spawn_hit_fx (hit_player_obj.x,hit_player_obj.y - 40, bh )
}
}


if karmatimer > 0 or soultimer < 0 {	
    	var ADdmg = floor(my_hitboxID.damage)
with hit_player_obj {
		take_damage( player, -1 , ADdmg * -1)
		
}		

if soultimer < 0 {
	var karmicD = floor(my_hitboxID.damage/1.5)
     karma += karmicD	

}
    var karmic = my_hitboxID.damage
     karma += karmic
}


if my_hitboxID.attack == AT_FSPECIAL or my_hitboxID.attack == AT_USPECIAL {
		var hits = random_func(5, 4, true) ;
	
	if (hits == 0 ){
    	spawn_hit_fx( hit_player_obj.x + random_func(3, 40, true)*spr_dir, hit_player_obj.y - 50 + random_func(1, 10, true), shit3 )
    }
	
  	if (hits == 1 ){
        	spawn_hit_fx( hit_player_obj.x + random_func(3, 40, true)*spr_dir, hit_player_obj.y - 50 + random_func(1, 10, true), shit4 )
     }
     
     if (hits == 2){
    	spawn_hit_fx( hit_player_obj.x + random_func(3, 40, true)*spr_dir, hit_player_obj.y - 50 + random_func(1, 10, true), shit5 )
     }
     
    if (hits == 3){
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
	   		    if karmatimer == 0 and soultimer == 0 {
                if admb < 3 {
              admb += 1
                }
                } else {
                spawn_hit_fx (hit_player_obj.x,hit_player_obj.y - 40, bh )
                }
                if karmatimer == 0 and soultimer == 0 {
                if admw < 4 {
              admw += 1
                }
                } else {
                spawn_hit_fx (hit_player_obj.x,hit_player_obj.y - 40, wh )
                }
	}
	
}


if my_hitboxID.attack == AT_NSPECIAL {
	

if my_hitboxID.hbox_num == 1 or my_hitboxID.hbox_num == 4 {

	   		    if karmatimer == 0 and soultimer == 0 {
                if admb < 3 {
              admb += 1
                }
                } else {
                spawn_hit_fx (hit_player_obj.x,hit_player_obj.y - 40, bh )
                }
                if karmatimer == 0 and soultimer == 0 {
                if admw < 4 {
              admw += 1
                }
                } else {
                spawn_hit_fx (hit_player_obj.x,hit_player_obj.y - 40, wh )
                }
	    }

if my_hitboxID.hbox_num == 2 {	
	
		if karmatimer == 0 and soultimer == 0 {
                if admw < 4 {
              admw += 1
                }
                } else {
                spawn_hit_fx (hit_player_obj.x,hit_player_obj.y - 40, wh )
                }
                
	if karmatimer == 0 and soultimer == 0 {
                if admb < 3 {
              admb += 1
                }
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
              admw += 1
                }
                } else {
                spawn_hit_fx (hit_player_obj.x,hit_player_obj.y - 40, wh )
                }
   }
	
	if my_hitboxID.hbox_num > 2 {	
		
			var hits = random_func(5, 4, true) ;
	
	if (hits == 0 ){
    	spawn_hit_fx( hit_player_obj.x + random_func(3, 40, true)*spr_dir, hit_player_obj.y - 50 + random_func(1, 10, true), shit3 )
    }
	
  	if (hits == 1 ){
        	spawn_hit_fx( hit_player_obj.x + random_func(3, 40, true)*spr_dir, hit_player_obj.y - 50 + random_func(1, 10, true), shit4 )
     }
     
     if (hits == 2){
    	spawn_hit_fx( hit_player_obj.x + random_func(3, 40, true)*spr_dir, hit_player_obj.y - 50 + random_func(1, 10, true), shit5 )
     }
     
    if (hits == 3){
    	spawn_hit_fx( hit_player_obj.x + random_func(3, 40, true)*spr_dir, hit_player_obj.y - 50 + random_func(1, 10, true), shit6 )
     }
     

		
	if karmatimer == 0 and soultimer == 0 {
                if admb < 3 {
              admb += 1
                }
                } else {
                spawn_hit_fx (hit_player_obj.x,hit_player_obj.y - 40, bh )
                }
}
	
}
}

if my_hitboxID.attack == AT_NSPECIAL {
	
		var hits = random_func(5, 4, true) ;
	
	if (hits == 0 ){
    	spawn_hit_fx( hit_player_obj.x + random_func(3, 40, true)*spr_dir, hit_player_obj.y - 50 + random_func(1, 10, true), shit3 )
    }
	
  	if (hits == 1 ){
        	spawn_hit_fx( hit_player_obj.x + random_func(3, 40, true)*spr_dir, hit_player_obj.y - 50 + random_func(1, 10, true), shit4 )
     }
     
     if (hits == 2){
    	spawn_hit_fx( hit_player_obj.x + random_func(3, 40, true)*spr_dir, hit_player_obj.y - 50 + random_func(1, 10, true), shit5 )
     }
     
    if (hits == 3){
    	spawn_hit_fx( hit_player_obj.x + random_func(3, 40, true)*spr_dir, hit_player_obj.y - 50 + random_func(1, 10, true), shit6 )
     }
     

if my_hitboxID.hbox_num == 1 or my_hitboxID.hbox_num == 4 {
	
	if my_hitboxID.hbox_num == 4  {
		sound_play(sound_get("slicen"))
	}
	if nshit < 2 {
	nshit += 1
	}
	if nshit == 2 {
		sound_play(sound_get("slicef"))
	}

}
	
}