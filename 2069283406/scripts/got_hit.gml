move_cooldown[AT_USPECIAL] = 0 ;
dspecon = 0
//intro = 1


	/*
	if countering == 1 {
		
		if enemy_hitboxID.type == 2 {
			invincible = true
			invince_time = 30
			
			hitstop = 10
			
			state_timer = 999
			enemy_hitboxID.hsp *= -2
			enemy_hitboxID.vsp = - 20
			spawn_hit_fx(x,y - 40, 304)
			sound_play(sound_get("RI"),false,noone,1,1.35);
			sound_play(sound_get("parry"),false,noone,.6,1.35);
			countering = 3 
		
		//old_hsp = -4*spr_dir
		//old_vsp = -4
		//hsp = -4*spr_dir
		//vsp = -4
		state = prev_state
		attack = AT_FSPECIAL
		window = 1
		window_timer = 0
		
		}
		
		
		
		
	}
	*/
	


canceltime = 0

     if attack == AT_NSPECIAL && fireon >= 3{
     	    firerange = -100
    fireon = 0
    sound_play(asset_get("sfx_spin"));
    sound_play(asset_get("sfx_ori_grenade_aim"));
     }
     
 move_cooldown[AT_NSPECIAL] = 0 ;
 
if introhit = 0 {
	introhit = -1
}

if firerange > 0 {
    firerange -= 30
}


if enemy_hitboxID.type == 1 && fireon > 0 {
	     spawn_hit_fx(floor ( hit_player_obj.x) , floor ( hit_player_obj.y) , firepar1 );
	    firetimer -= 1
    firerange = -100
    if fireon == 3 {
    sound_play(asset_get("sfx_burnapplied"));
        sound_play(asset_get("sfx_spin"));
    sound_play(asset_get("sfx_ori_grenade_aim"),false,noone,1,1.6);
    }
      fireon = 0 
}


if fireon >= 3 && firerange < 0{
    firerange = 0
}

if get_player_color(player) == 5 && sakura == 1 {
 	
 	
	var hitsp = random_func(20, 5, true) ;
	
	if (hitsp == 0 ){
    	var hit1 = spawn_hit_fx( x + random_func(3, 10, true), y  - 30 + random_func(1, 10, true), shit1 )
    		hit1.depth = -1000

	}
	
  	if (hitsp == 1 ){
    var hit2 = spawn_hit_fx( x + random_func(3, 10, true), y  - 30 + random_func(1, 10, true), shit2 )
    	hit2.depth = -1000

     }
     
     if (hitsp == 2){
    	var hit3 = spawn_hit_fx( x + random_func(3, 10, true), y  - 30 + random_func(1, 10, true), shit3 )
    		hit3.depth = -1000

     }
     
       	if (hitsp == 3){
 	var hit4 = spawn_hit_fx( x + random_func(3, 10, true), y  - 30 + random_func(1, 10, true), shit4 )
 		hit4.depth = -1000
     }
     
         	if (hitsp == 4){
 	var hit5 = spawn_hit_fx( x + random_func(3, 10, true), y  - 30 + random_func(1, 10, true), shit5 )
 		hit5.depth = -1000
     }
     
 	
 }