

fcharge += 1
///


if old_vsp < -6 {
	old_vsp = -6
}

	if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num >= 3){
	
	vsp = -15
	
	}
	
	if (my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num <= 3){
	
	dairv = 10
	
	}

if get_player_color(player) == 5 {
 	
 	
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
 
if get_player_color(player) != 5 && my_hitboxID.attack != AT_DAIR && (my_hitboxID.attack == AT_FAIR or my_hitboxID.hitpause != 0) {
	
move_cooldown[AT_EXTRA_3] = hit_player_obj.hitstop/1.2
maxdraw = hit_player_obj.hitstop/1.2
hitdmg = my_hitboxID.damage/10

angledraw = random_func(1,360,true)  

         
}

if (my_hitboxID.attack == AT_FAIR && my_hitboxID.hitpause == 0){
	
	y -= 2
	
}
  

if (my_hitboxID.attack != AT_USPECIAL && drops == 1 && !free){
	
	fcharge += 1
	drops = 0
	
}

if (my_hitboxID.attack != AT_NSPECIAL && drops == 1 && !free){
	
	fcharge += 1
	drops = 0
	
}


if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 1){
	
	fcharge += 1

	
}



   