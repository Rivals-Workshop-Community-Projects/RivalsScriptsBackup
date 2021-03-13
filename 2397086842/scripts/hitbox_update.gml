////

if attack == AT_NSPECIAL && hbox_num == 11 {
	  if (place_meeting(x, y , asset_get("par_block"))) {
	  	y += 30
    		sound_play(asset_get("sfx_absa_singlezap2"))
    		destroyed = true
      }
	
}	

if attack == AT_FSPECIAL {
	nearbyhitbox = collision_circle( x, y , 32, asset_get("pHitBox"), true, true ) 
	if nearbyhitbox != noone && nearbyhitbox.type == 2 {
		               create_hitbox(AT_NSPECIAL,7,x,y)
		               create_hitbox(AT_NSPECIAL,8,x,y)
		               create_hitbox(AT_NSPECIAL,9,x,y)
		nearbyhitbox.destroyed = true
	}
}
	

if attack == AT_NSPECIAL{
	
	if x < room_width and x > 0 and y < room_height { 
		if player_id.move_cooldown[AT_NSPECIAL] > 0{
        	player_id.move_cooldown[AT_NSPECIAL] = 5
		}
	} else {
			destroyed = true
		sound_play(asset_get("sfx_absa_singlezap1"))
	}
	

}

if attack == AT_DSPECIAL{
	    	    	if hitbox_timer % 2 == 0 {
    	spawn_hit_fx(x - 40 + random_func(1,80,true),y - 40 + random_func(2,80,true), bfx2)
    	}
    	
    	  if hitbox_timer % 2 == 1 {
    	spawn_hit_fx(x - 40 + random_func(1,80,true),y - 40 + random_func(2,80,true), bfx3)
    	}
	
}

if attack == AT_NSPECIAL  && hbox_num <= 3{

    if batted == 0 {
    	
    		
    if player_id.move_cooldown[AT_UTILT] > 0 {
    		can_hit_self = true
    }
    
    
    	if player == orig_player {
    	if hitbox_timer % 4 == 0 and (hbox_num == 2 or hbox_num == 3)  {
    	spawn_hit_fx(x - 4 + random_func(1,8,true),y - 4 + random_func(2,8,true), bfx2)
    	}
    	
    	if hitbox_timer % 4 == 2 and  hbox_num == 3 {
    	spawn_hit_fx(x - 8 + random_func(1,16,true),y - 8 + random_func(2,16,true), bfx3)
    	}
    		if hitbox_timer % 2 == 1 { 
    	spawn_hit_fx(x,y ,bfx1)
    		}
    	} else {
    		if hitbox_timer % 2 == 1 { 
    	      spawn_hit_fx(x,y ,bfx4)
    		}	
    	}
    	
    	
    	
    hsp /= 1.01
    if vsp < 0 {
    vsp /= 1.05
    }
    if hitbox_timer == 179 {
        spawn_hit_fx(x,y,0)
        sound_play(asset_get("sfx_absa_singlezap2"))
    }
    
    grav = 0.1
    if (place_meeting(x, y, asset_get("par_block"))) && vsp > 0{
    	vsp *= -1
    	spawn_hit_fx(x,y,14)
    	sound_play(asset_get("sfx_blow_medium1"))
    	if hbox_num == 3 {
    		sound_play(asset_get("sfx_absa_singlezap2"))
    	}
    }
   
    
    }


    if batted = 1 {
    	
    	if player == orig_player {
    	if hitbox_timer % 2 == 0 and (hbox_num == 2 or hbox_num == 3)  {
    	spawn_hit_fx(x - 4 + random_func(1,8,true),y - 4 + random_func(2,8,true), bfx2)
    	}
    	
    	  if hitbox_timer % 2 == 1 and  hbox_num == 3 {
    	spawn_hit_fx(x - 8 + random_func(1,16,true),y - 8 + random_func(2,16,true), bfx3)
    	}
    	spawn_hit_fx(x,y ,bfx1)
    	}else {
    	      spawn_hit_fx(x,y ,bfx4)
    	}
    	
        if hsp < 0 {
            spr_dir = -1
        } else {
            spr_dir = 1
        }
        
      if (place_meeting(x, y + vsp, asset_get("par_block"))) && vsp > 0  {
        vsp *= -0.7
        hsp *= 0.8
        vsp -= 1
    	spawn_hit_fx(x - 8*spr_dir ,y + vsp + 30,14)
    	shake_camera(2,2)	
    	sound_play(asset_get("sfx_blow_medium1"))
    	if hbox_num == 3 {
    		sound_play(asset_get("sfx_absa_singlezap2"))
    	}
      }
        grav = 0.4
    }

    

        
    nearbyhitbox = collision_circle( x, y , 32, asset_get("pHitBox"), true, true ) 
	if nearbyhitbox != noone {
		if nearbyhitbox.type == 1 && nearbyhitbox.hit_effect_x != -0.69 {
			
			if batted == 0{
			nearbyhitbox.hitbox_timer -= 1
			}

			for (var i = 1; i < 20; i++) can_hit[i] = true
		    player = nearbyhitbox.player
		    if hitbox_timer > 1 {
		    		
		     spawn_hit_fx(x,y,302) 
		    shake_camera(4,4)
		    sound_play(asset_get("sfx_ori_energyhit_medium"))
		   sound_play(asset_get("sfx_kragg_rock_land"),false,noone, 0.4 + nearbyhitbox.damage/20)
             if nearbyhitbox.hit_effect_x == 0.69 {
             if player == orig_player {
             sound_play(sound_get("bathit"),false,noone,0.5 + nearbyhitbox.damage/20)
             }
             }
             
             
      if player != orig_player && string_count("bat bat", string_lower( get_char_info(player, INFO_STR_NAME))) > 0 {
      	
      		x += floor(nearbyhitbox.x - x)/2
			y += floor(nearbyhitbox.y - y)/2
			
             	 sound_play(asset_get("sfx_absa_whip"),false,noone,1.2) 
             	sound_play(asset_get("sfx_blow_heavy2"),false,noone,1.2)
             	destroyed = 1
               switch hbox_num {
               case 1 :
               with nearbyhitbox.player_id {
               create_hitbox(AT_NSPECIAL,2,floor(other.x),floor(other.y))
               }
               break;
               
               case 2 :
               sound_play(asset_get("sfx_bird_downspecial"),false,noone,0.7)
               with nearbyhitbox.player_id {
               create_hitbox(AT_NSPECIAL,3,floor(other.x),floor(other.y))
               }
               break;
               
               case 3 :
               sound_play(asset_get("sfx_bird_downspecial"),false,noone,1)
               with nearbyhitbox.player_id {
               create_hitbox(AT_NSPECIAL,3,floor(other.x),floor(other.y))
               }
               break;     
               	
        }
        }
        
             switch hbox_num {
               case 1 :
               sound_play(asset_get("sfx_bird_downspecial"),false,noone,0.4)
               damage = 8
               break;
               
               case 2 :
               sound_play(asset_get("sfx_bird_downspecial"),false,noone,0.7)
               sound_play(sound_get("b1"),false,noone,0.6)
               damage = 12
               break;
               
               case 3 :
               sound_play(asset_get("sfx_bird_downspecial"),false,noone,1)
               sound_play(sound_get("b3"),false,noone,0.6)
               damage = 16
               break;
               
             }
		    }
		    
		    hitbox_timer = 0
               batted = 1
               if nearbyhitbox.attack != AT_JAB {
               if (nearbyhitbox.kb_angle > 0 and nearbyhitbox.kb_angle <= 45) or
               nearbyhitbox.kb_angle  == 361{
                   hsp = 12 * nearbyhitbox.spr_dir
                   vsp = -3
               } 
               
               if nearbyhitbox.kb_angle > 45 and nearbyhitbox.kb_angle <= 90 {
                   hsp = 3 * nearbyhitbox.spr_dir
                   vsp = -12
               }  
               
               if nearbyhitbox.kb_angle > 90 and nearbyhitbox.kb_angle <= 135 {
                   hsp = -3 * nearbyhitbox.spr_dir
                   vsp = -12
               }  
               
               if nearbyhitbox.kb_angle > 135 and nearbyhitbox.kb_angle <= 180 {
                   hsp = -12 * nearbyhitbox.spr_dir
                   vsp = -6
               }  
               
              if nearbyhitbox.kb_angle > 180 and nearbyhitbox.kb_angle <= 215 {
                   hsp = -10 * nearbyhitbox.spr_dir
                   vsp = 3
               }  
               
               if nearbyhitbox.kb_angle > 215 and nearbyhitbox.kb_angle <= 250 {
                   hsp = -6 * nearbyhitbox.spr_dir
                   vsp = 6
               }  
               
               if nearbyhitbox.kb_angle > 250 and nearbyhitbox.kb_angle <= 295 {
                   hsp = 12 * nearbyhitbox.spr_dir
                   vsp = 6
               }  
               
               
               if nearbyhitbox.kb_angle > 295 and nearbyhitbox.kb_angle <= 325 {
                   hsp = 12 * nearbyhitbox.spr_dir
                   vsp = 3
               }  
               
               
               if nearbyhitbox.kb_angle > 325 and nearbyhitbox.kb_angle <= 360 {
                   hsp = 12 * nearbyhitbox.spr_dir
                   vsp = 3
               }  
               } else {
               	   hsp = 5 * nearbyhitbox.spr_dir
                   vsp = -7
               }
	    }
	}
/// projectile interaction	    


    nearbyhitbox2 = collision_circle( x - hsp, y - vsp , 32, asset_get("pHitBox"), true, true ) 
	if nearbyhitbox2 != noone {
	   if nearbyhitbox2.type == 2 && nearbyhitbox2.hit_effect_x != -0.69 && hitbox_timer > 3 && nearbyhitbox2.hit_priority >= 1{
    	    for (var i = 1; i < 20; i++) can_hit[i] = true
	   	    shake_camera(4,4)
		    sound_play(asset_get("sfx_absa_singlezap1"))
            spawn_hit_fx(x,y,302)
            hitbox_timer = 0
             if nearbyhitbox2.x < x {
             x += 12
             hsp = 2.5
	   	     } else {
             x -= 12
             hsp = -2.5
	   	     }
	   	     
	   	     if nearbyhitbox2.y < y {
             y += 10
             vsp = -7
	   	     } else {
	   	     nearbyhitbox2.y += 2
             y -= 10
             vsp = -4
	   	     }
	   }
	}
	   
/// special interaction

    nearbyhitbox = collision_circle( x, y , 32, asset_get("pHitBox"), true, true ) 
	if nearbyhitbox != noone {
         if nearbyhitbox.type == 1 && nearbyhitbox.hit_effect_x == -0.69 {
            player = nearbyhitbox.player
         		
         	if 	nearbyhitbox.attack == AT_FSTRONG or  nearbyhitbox.attack == AT_USTRONG or 	nearbyhitbox.attack == AT_DSTRONG {
         	player = nearbyhitbox.player
         	spr_dir = nearbyhitbox.spr_dir
         	nearbyhitbox.hitbox_timer -= 2
         	        shake_camera(5,8)
         		spawn_hit_fx(x,y ,304)
         	 sound_play(sound_get("strongb"),false,noone,1.2)
         	  sound_play(sound_get("bathit"),false,noone,1)
         	 sound_play(asset_get("sfx_absa_whip"),false,noone,1.2) 
         	  
         	  switch hbox_num {
               case 1 :
               with nearbyhitbox.player_id {
               create_hitbox(AT_NSPECIAL,4,other.x,other.y)
               }
               break;
               
               case 2 :
               sound_play(asset_get("sfx_bird_downspecial"),false,noone,0.7)
               with nearbyhitbox.player_id {
               create_hitbox(AT_NSPECIAL,5,other.x,other.y)
               }
               break;
               
               case 3 :
               sound_play(asset_get("sfx_bird_downspecial"),false,noone,1)
               with nearbyhitbox.player_id {
               create_hitbox(AT_NSPECIAL,6,other.x,other.y)
               }
               break;
               }
               
                destroyed = true 
         	}
         	
         	if nearbyhitbox.attack == AT_FSPECIAL && (hitbox_timer > 30 or vsp > 0){
         	   sound_play(sound_get("strongb"),false,noone,1.2)
         	   shake_camera(5,8)
         	   spawn_hit_fx(x,y ,305)
         	   switch hbox_num {
               case 1 :
               with nearbyhitbox.player_id {
               create_hitbox(AT_NSPECIAL,2,other.x,other.y)
               create_hitbox(AT_NSPECIAL,10,other.x,other.y)
               }
               
               break;
               
               case 2 :
               with nearbyhitbox.player_id {
               create_hitbox(AT_NSPECIAL,3,other.x,other.y)
               create_hitbox(AT_NSPECIAL,10,other.x,other.y)
               }
               break;
               
               case 3 :
               with nearbyhitbox.player_id {
               create_hitbox(AT_NSPECIAL,3,other.x,other.y)
               create_hitbox(AT_NSPECIAL,10,other.x,other.y)
               }
               break;
              }
              destroyed = true
         	}
         	
         	 if nearbyhitbox.attack == AT_USPECIAL {
         	 	
         	   sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,1)
         	   shake_camera(5,8)
         	   spawn_hit_fx(x,y ,305)
         	   switch hbox_num {
               case 1 :
               nearbyhitbox.player_id.uspecbat += 1
               break;
               
               case 2 :
               nearbyhitbox.player_id.uspecbat += 2
               break;
               
               case 3 :
               nearbyhitbox.player_id.uspecbat += 3
               break;
              }
              destroyed = true
         	}
         }
	}
	
	
	   if player == orig_player {     
         if player_id.attacking == true and player_id.attack == AT_DSPECIAL and player_id.window == 2
         and player_id.window_timer == 1 {
         	spr_dir = player_id.spr_dir
               sound_play(sound_get("b1"),false,noone,1)
         	   shake_camera(5,8)
         	   spawn_hit_fx(x,y ,306)
         	   switch hbox_num {
               case 1 :
               create_hitbox(AT_NSPECIAL,7,x,y)
               break;
               
               case 2 :
               create_hitbox(AT_NSPECIAL,8,x,y)
               create_hitbox(AT_NSPECIAL,9,x,y)
               break;
               
               case 3 :
               create_hitbox(AT_NSPECIAL,7,x,y)
               create_hitbox(AT_NSPECIAL,8,x,y)
               create_hitbox(AT_NSPECIAL,9,x,y)
               break;
              }
              destroyed = true
         	}  
	   }


	   
         	
}



///strong bat

if attack == AT_NSPECIAL && hbox_num > 3{
	
	nearbyhitbox = collision_circle( x, y , 32, asset_get("pHitBox"), true, true ) 
		if nearbyhitbox != noone {
	        if nearbyhitbox.type == 1 && nearbyhitbox.hit_effect_x == -0.69 {
	        	player = nearbyhitbox.player
	        	spr_dir = nearbyhitbox.spr_dir
	        	if nearbyhitbox.attack == AT_FSTRONG {
	        		batted = 1
	        	}
	        	if nearbyhitbox.attack == AT_USTRONG {
	        		batted = 2
	        	}
	        	if nearbyhitbox.attack == AT_DSTRONG {
	        		batted = 3
	        	}
	        	hit_priority = 9
	        }

	       ////hitback 
	       if nearbyhitbox.type == 1 && nearbyhitbox.player_id != player_id && nearbyhitbox.hit_effect_x != -0.69  {
	       	        player = nearbyhitbox.player
                   switch hbox_num {
                     case 4 :
                     create_hitbox(AT_NSPECIAL,1,x,y)
                     break;
                     
                     case 5 :
                     create_hitbox(AT_NSPECIAL,2,x,y)
                     break;
                     
                     case 6 :
                     create_hitbox(AT_NSPECIAL,3,x,y)
                     break;
                     
                   }
                   
                   destroyed = 1
	       	
	       }
		}
	if batted == 1 {
		hsp = 7*spr_dir
		if hitbox_timer % 14 < 6 {
			y -= 22
		} 
		if hitbox_timer % 14 >= 6{
			y += 14
		}
	}
	
	if batted == 2{
		
		if hitbox_timer <= 2{
			hsp = 20*spr_dir
			vsp = -20
		} 
		
		if hitbox_timer < 20 {
			y -= 4
			vsp += 0.95
			hsp -= 2*spr_dir
		}
		
				
		if hitbox_timer >= 20 && hitbox_timer < 40 {
			vsp += 1.2
			hsp += 2*spr_dir
			y += 3
		}


		if hitbox_timer >= 40 && hitbox_timer < 60 {
			vsp -= 2.2
			hsp += 2*spr_dir
			y -= 1
		}
		
		
	}
	
    if batted == 3{
		
		if hitbox_timer <= 2{
			hsp = 20*spr_dir
			vsp = -8
		} 
		
		
		if hitbox_timer == 10{
			spawn_hit_fx(x,y,301)
			sound_play(asset_get("sfx_absa_singlezap1"))
			spr_dir *= -1
			hsp = 20*spr_dir
			vsp = 2
		} 
		
    	if hitbox_timer == 20{
			spawn_hit_fx(x,y,301)
			sound_play(asset_get("sfx_absa_singlezap1"))
			hsp *= -1
			spr_dir *= -1
			vsp = 4
		} 
		
		
	}
	    kb_value = 12
    	    	if hitbox_timer % 2 == 0 and (hbox_num >= 5) {
    	spawn_hit_fx(x - 4 + random_func(1,8,true),y - 4 + random_func(2,8,true), bfx2)
    	}
    	
    	  if hitbox_timer % 2 == 1 and  hbox_num >= 6 {
    	spawn_hit_fx(x - 8 + random_func(1,16,true),y - 8 + random_func(2,16,true), bfx3)
    	}
    	spawn_hit_fx(x,y ,bfx1)


        
	
}