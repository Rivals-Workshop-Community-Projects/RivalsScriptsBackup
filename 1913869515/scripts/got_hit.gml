move_cooldown[AT_USPECIAL] = 0 ;

if move_cooldown[AT_TAUNT] == 0 && !soft_armor && !super_armor && zvoice != 0 {
	 sound_stop(zvoice)
	 zrandom += random_func(2,2,true) + 1
	 
	  if abs(old_hsp) + abs(old_vsp) > 15 or hitstop > 20 {
	      if zrandom % 2 == 0 {
                zvoice = sound_play(sound_get("h1"),false,noone,.9,1.15 + random_func(1,11,true)/100);
          }
          
          if zrandom % 2 ==  1 {
               zvoice = sound_play(sound_get("h2"),false,noone,.9,1.15 + random_func(1,11,true)/100);
          }
	 }
	 move_cooldown[AT_TAUNT] = floor(hitstop)
}

zbayo = 0
intro = 1

voicecd = -10

iaido = 0
ziaido = 0
iaicancel = 0
iaidir = spr_dir

move_cooldown[AT_EXTRA_2] = 0

reset_window_value(AT_TAUNT, 18, AG_WINDOW_SFX);



if attack == AT_DSPECIAL && super_armor && enemy_hitboxID.type == 1{
	
	enhanceee = true 
	
	if halox < 8 {
        halo = 2
	 	ohalo = 2
        dmhit = 0
	 } else {
	 	halo = 3
	 	ohalo = 3
        dmhit = 1
	 }
	    
	         
	hit_player_obj.hitstop += 20
	
		if zvoice != 0{
			voicecd = 100
            zvoice = sound_play(sound_get("counter"));
        }
        
	 spawn_hit_fx ( x  , y - 30 , SC );
	        take_damage(player,-1,floor(enemy_hitboxID.damage * -1))
	        offense = 1
	        offensetimer = 0
            zcountered = 1
            window = 4
            window_timer = 4
            super_armor = false
            hit_player_obj.hitstop += 30
            sound_play(sound_get("RI"));
			var shortest_dist = 9999;
			var shortest_id = noone;
			
			with (asset_get("oPlayer")) {
				if (player != other.player) {
					var curr_dist = point_distance(x,y,other.x,other.y);
					if (curr_dist < shortest_dist) {
						shortest_dist = curr_dist;
						shortest_id = id;
					}
				}
			}

			if (shortest_id.x < x) {
				spr_dir = 1;
			} else {
				spr_dir = -1;
			}
			x = shortest_id.x + (-80 * spr_dir)
			y = shortest_id.y + (0 * spr_dir)
			
			create_hitbox(AT_DSPECIAL , 1 , x - (50 * spr_dir) , y - 105 ); 
			create_hitbox(AT_DSPECIAL , 1 , x + (10 * spr_dir), y - 105 ); 
			create_hitbox(AT_DSPECIAL , 1 , x + (70 * spr_dir) , y - 105 ); 
           
}

if attack == AT_DSPECIAL && super_armor && enemy_hitboxID.type == 2{
	
	enhanceee = true 
	
	 if halox < 8 {
        halo = 2
	 	ohalo = 2
                dmhit = 0
	 } else {
	 	halo = 3
	 	ohalo = 3
                dmhit = 1
	 }

	    
	    if zvoice != 0{
	    	voicecd = 100
            zvoice = sound_play(sound_get("counter"));
        }
        
        
	    
	      fx = spawn_hit_fx ( x  , y - 30 , SC );
		  fx.spr_dir = 0.7*spr_dir 
		  fx.image_yscale = 0.7
	        take_damage(player,-1,floor(enemy_hitboxID.damage * -1))
	       
            super_armor = false
            sound_play(sound_get("RI"),false,noone,1,1.3);
            

			if (hit_player_obj.x < x) {
				spr_dir = -1;
			} else {
				spr_dir = 1;
			}
			old_hsp = 0
			old_vsp = 0
			hitpause = true 
			hitstop = 20
			invincible = true 
			invince_time = 20
			zcountered = 1
			move_cooldown[AT_FSPECIAL] = 0
			set_attack(AT_UTILT)
			window = 1
			window_timer = 5
			
}


if get_player_color(player) == 5 && zvoice == 1 {
 	
 	
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
