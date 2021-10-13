move_cooldown[AT_USPECIAL] = 0 ;
zbayo = 0

if offense == 1 {
offense = 0
offensetimer = 0
		var halodeact = spawn_hit_fx( x - (16 * spr_dir) , y - 50 , 302 )
    		halodeact.depth = depth + 10
    		
    		
		sound_play(asset_get("sfx_jumpair"));
}


intro = 1

//if introhit = 0 {
//	introhit = -1
//}

zFhittimer = 0
zbayo = 0
move_cooldown[AT_EXTRA_2] = 0
if move_cooldown[AT_EXTRA_1] = 0 {
move_cooldown[AT_EXTRA_3] = 0
}
move_cooldown[AT_EXTRA_1] = 20
reset_window_value(AT_TAUNT, 18, AG_WINDOW_SFX);



if attack == AT_DSPECIAL && super_armor && enemy_hitboxID.type == 1{
	
	hit_player_obj.hitstop += 20
			        if zvoice == 1{
         if get_player_color(player) == 1{
            	      sound_play(sound_get("counterV"));
            
            } 
            
            
            if get_player_color(player) == 4{
            	      sound_play(sound_get("counterD"));
            
            } 
            
            if get_player_color(player) != 1 and get_player_color(player) != 4 {
            sound_play(sound_get("counter"));
            }
        }
	 spawn_hit_fx ( x  , y - 20 , SC );
	        take_damage(player,-1,floor(enemy_hitboxID.damage * -1))
	        offense = 1
	        offensetimer = 0
	        if halo < 3 {
	        	halo += 1
	        }
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