intro = 1
if introhit = 0 {
	introhit = 1
}

move_cooldown[AT_EXTRA_3] = hitstop/2
maxdraw = hitstop/2
hitdmg = my_hitboxID.damage/10

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
			hit_player_obj.x -= 16
		}
		
	if hit_player_obj.x < x + (35 * spr_dir){
			hit_player_obj.x += 16
		}
	
}



if my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 2 {
	
	if hit_player_obj.y < y {
		
		hit_player_obj.y -= 5
		
	}
	

			hit_player_obj.x = x + (45 * spr_dir)

		

}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 2) {
	 halo -= 1   
	 wavehit = 8
	 wavetime = 20
}

if (my_hitboxID.attack == AT_EXTRA_1 && my_hitboxID.hbox_num == 1) {
 spawn_hit_fx( x  , y - 35 , dimg )
}

if (my_hitboxID.attack == AT_UAIR) && uairhit > 0 {
	 uairhit -= 1   
}

if (my_hitboxID.attack == AT_UAIR) && uairhit == 0 && halo < 6 {
	 halo -= 1   
}

if (my_hitboxID.attack == AT_USTRONG) {
	 halotimer = 180; 
	 halo += 2   
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
