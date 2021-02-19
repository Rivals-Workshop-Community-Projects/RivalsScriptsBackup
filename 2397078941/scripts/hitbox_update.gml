///

if player_id.nolan == 0 {
if attack == AT_NSPECIAL or attack == AT_USPECIAL{
	
	if x < room_width and x > 0 and y < room_height { 
        	player_id.move_cooldown[AT_NSPECIAL] = 2
	} else {
		destroyed = 1
		sound_play(asset_get("sfx_abyss_seed_explode"))
	}
	

}

if attack == AT_FSPECIAL && hbox_num <= 4 {
     spawn_hit_fx (x  - 18*spr_dir , y + 10 - random_func(1, 20, true), esp)
}

if (attack == AT_NSPECIAL or attack == AT_USPECIAL) && hbox_num == 1 && hitbox_timer % 3 == 0{
    spawn_hit_fx (x  + 10 - random_func(2, 20, true) , y + 10 - random_func(1, 20, true), esp)
}

if (attack == AT_NSPECIAL or attack == AT_USPECIAL) && hbox_num == 1 {
     if (place_meeting(x + hsp, y + vsp , asset_get("par_block"))) {
         spawn_hit_fx(x,y,301)
	  		create_hitbox(AT_NSPECIAL, 2, x , y )
	  		shake_camera(2,6)
	  		sound_play(asset_get("sfx_abyss_seed_explode"))
	  		destroyed = 1
      }
      
     
}

if attack == AT_NSPECIAL && hbox_num == 2 {
    
    if hitbox_timer < 10 {
    if x < player_id.x + 100*player_id.spr_dir {
        hsp += 0.06
    }
    
    if x > player_id.x + 99*player_id.spr_dir {
        hsp -= 0.06
    }
    }
    
    with player_id {
        if attack == AT_USPECIAL && window == 4 && window_timer == 1 && other.hitbox_timer < 10 {
            other.destroyed = 1
        }
    }
    
    
    if hsp < 0 {
        spr_dir = -1
    } 
    
    if hsp > 0 {
        spr_dir = 1
    }
     vsp /= 1.04
     hsp /= 1.05
     
     if hitbox_timer > 10 {
     vsp /= 1.04
     hsp /= 1.05
     }
     if hitbox_timer >  60 {
         hsp = 0
         vsp = 0
         image_index = 8
     if hitbox_timer == 72 {
        with ownerplayer {
            shake_camera(4,10)
			sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,1)	
			create_hitbox(AT_FSPECIAL,6,other.x,other.y)
        }
         image_index = 8
         shake_camera(4,9)
	    sound_play(asset_get("sfx_abyss_seed_explode"))
         sound_play(asset_get("sfx_abyss_explosion"))
         spawn_hit_fx(x,y,306)
         
     }
     }
     
     
     if hitbox_timer == 90 {
     	hitbox_timer = 1
     }
     
     if hitbox_timer = 30 {
         hsp = 0
         vsp = 0
         hit_priority = 10 
         image_xscale *= 2
         image_yscale *= 2
         image_index = 8
         shake_camera(4,9)
	  		sound_play(asset_get("sfx_abyss_seed_explode"))
         sound_play(asset_get("sfx_abyss_explosion"))
         spawn_hit_fx(x,y,306)
     }
     
        if hitbox_timer = 36 { 
            image_xscale *= 2
            image_yscale *= 2
        }
        
        
     if hitbox_timer = 40 {

       destroyed = true   
     }
     spawn_hit_fx (x  + 15 - random_func(2, 30, true) , y + 10 - random_func(1, 30, true), esp)

      
      
     if hitbox_timer < 10 && hitbox_timer > 2 {
         hitbox_timer -= 1
         
     if (place_meeting(x, y + 30 , asset_get("par_block"))) {
	  	vsp -= 0.3
	  	y += 1
      }
      
     }
     
     
     
      nearbyhitbox = collision_circle( x, y , 32, asset_get("pHitBox"), true, true ) 
	if nearbyhitbox != noone {
	    
	    if nearbyhitbox.type == 2 && nearbyhitbox.hit_effect_x != -0.666 && hitbox_timer > 1 && hitbox_timer < 10 && hitbox_timer > 0{
	        
            hsp = nearbyhitbox.hsp/4
            vsp = nearbyhitbox.vsp/4
            hitbox_timer = -6
	        image_index = 8
	        with player_id {
	        	spawn_hit_fx(x, y - 50, tauntpar1)
	        	spawn_hit_fx(x, y - 10, tauntpar1)
	        	spawn_hit_fx(x + 10, y - 30, tauntpar1)
	        	spawn_hit_fx(x - 10, y - 30, tauntpar1)
	        	sound_play(asset_get("sfx_ori_taunt2"),false,noone,1.5);
	        	sound_play(asset_get("sfx_abyss_hex_hit"),false,noone,0.5)
	        	take_damage(player, -1, -1 * floor(5+ other.nearbyhitbox.damage/4))
	        }
	        nearbyhitbox.destroyed = 1
	        destroyed = true
	    }
	    
	     if nearbyhitbox.type == 2 && nearbyhitbox.hit_effect_x == -0.666 && hitbox_timer < 60  && nearbyhitbox.player_id.nolan == 0{
	         sound_play(asset_get("sfx_abyss_hex_hit"))
	         spawn_hit_fx(x,y,laser4)
	         hitbox_timer = 60
	         ownerplayer = nearbyhitbox.player_id
	     }
	    
		if nearbyhitbox.type == 1  && hitbox_timer < 10 && nearbyhitbox.hit_effect_x != 0.666{
		    for (var i = 1; i < 20; i++) can_hit[i] = true
			damage += nearbyhitbox.damage
			
			player = nearbyhitbox.player
			      image_index = 0 
			      
			nearbyhitbox.hitbox_timer -= 1
		    nearbyhitbox.image_xscale *= 1.1
		    nearbyhitbox.image_yscale *= 1.1
			
		     spawn_hit_fx(x,y,302) 
		    shake_camera(4,4)
		    sound_play(asset_get("sfx_abyss_hex_hit"))
             
            
		    
               if nearbyhitbox.attack != AT_JAB {
               if (nearbyhitbox.kb_angle > 0 and nearbyhitbox.kb_angle <= 45) or
               nearbyhitbox.kb_angle  == 361{
                   hsp = 12 * nearbyhitbox.spr_dir
                   vsp = -3
               } 
               
               if nearbyhitbox.kb_angle > 45 and nearbyhitbox.kb_angle <= 90 {
                   hsp = 3 * nearbyhitbox.spr_dir
                   vsp = -9
               }  
               
               if nearbyhitbox.kb_angle > 90 and nearbyhitbox.kb_angle <= 135 {
                   hsp = -3 * nearbyhitbox.spr_dir
                   vsp = -9
               }  
               
               if nearbyhitbox.kb_angle > 135 and nearbyhitbox.kb_angle <= 180 {
                   hsp = -9 * nearbyhitbox.spr_dir
                   vsp = -6
               }  
               
              if nearbyhitbox.kb_angle > 180 and nearbyhitbox.kb_angle <= 215 {
                   hsp = -8 * nearbyhitbox.spr_dir
                   vsp = 3
               }  
               
               if nearbyhitbox.kb_angle > 215 and nearbyhitbox.kb_angle <= 250 {
                   hsp = -4 * nearbyhitbox.spr_dir
                   vsp = 9
               }  
               
               if nearbyhitbox.kb_angle > 250 and nearbyhitbox.kb_angle <= 295 {
                   hsp = 6 * nearbyhitbox.spr_dir
                   vsp = 9
               }  
               
               
               if nearbyhitbox.kb_angle > 295 and nearbyhitbox.kb_angle <= 325 {
                   hsp = 8 * nearbyhitbox.spr_dir
                   vsp = 5
               }  
               
               
               if nearbyhitbox.kb_angle > 325 and nearbyhitbox.kb_angle <= 360 {
                   hsp = 12 * nearbyhitbox.spr_dir
                   vsp = 5
               }  
               } else {
               	   hsp = 8 * nearbyhitbox.spr_dir
                   vsp = -2
               }
               
                   
		    
		    
		    hitbox_timer = 15
	    }
	    
	    if nearbyhitbox.type == 1  && hitbox_timer < 10 && nearbyhitbox.hit_effect_x == 0.666 && nearbyhitbox.player_id.nolan == 0{
	        player = nearbyhitbox.player
	        
	        if nearbyhitbox.attack == AT_USPECIAL {
	        with nearbyhitbox.player_id {
	            window = 4
		        window_timer = 0
		        hsp = 0
		        vsp = -22
		        set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
	        }
	         image_index = 0 
	         spawn_hit_fx(x,y,302) 
		    shake_camera(4,4)
		    sound_play(asset_get("sfx_abyss_hex_hit"))
	        hsp = 15 * nearbyhitbox.spr_dir
            vsp = 0
            hitbox_timer = 15
	        }
	        
	        if nearbyhitbox.attack == AT_DSPECIAL  && nearbyhitbox.hbox_num = 1 {
	        with nearbyhitbox.player_id {
	        
                	
	        	soft_armor = 999
	            window = 1
	            window_timer = 1
	            vsp = -9
	            hsp = 0
	            create_hitbox(AT_NSPECIAL,3,x,y)
	        }
		    sound_play(asset_get("sfx_abyss_hex_hit"))
	        destroyed = 1
	        	  		sound_play(asset_get("sfx_abyss_seed_explode"))
         sound_play(asset_get("sfx_abyss_explosion"))
	       }
	       
	    }
	}
	
     
}



if attack == AT_NSPECIAL && hbox_num == 3 {
	    if hsp < 0 {
        spr_dir = -1
    } 
    
    if hsp > 0 {
        spr_dir = 1
    }

     	with player_id {
                if window < 3 {
                	
               	if window == 1 {
               	other.hsp = (x - 30*spr_dir - other.x) / 3
	           	other.vsp = ((y) - 40 - other.y) / 3
               	} else {
               	other.hsp = (x + 40*spr_dir - other.x) / 3
	           	other.vsp = ((y) + 20 - other.y) / 3	
               	}
                }       
                
     	}
     	
     	
     if player_id.window == 3 or player_id.attacking == false or player_id.has_hit_player = true {
     	destroyed = 1
     	    sound_play(asset_get("sfx_ori_energyhit_medium"))
     	    spawn_hit_fx(x + 20*spr_dir, y + 10, 306)
	  		create_hitbox(AT_NSPECIAL, 4, x + 20*spr_dir, y + 10 )
      }
      
      
}  

}

else 

{
	
			
		if attack == AT_DTILT && hbox_num == 2 {
			
			hitbox_timer -= 1
			
		}
		
		if attack == AT_FSPECIAL && hbox_num < 4 {
		
		if !free && (place_meeting(x, y + 2, asset_get("par_block"))) {
    	destroyed = 1
    	create_hitbox(AT_FSPECIAL , 4 , x , y );
        }
		
		if !free {
        sound_play(asset_get("sfx_blow_medium3"));
        spawn_hit_fx(x,y, 109)
    	y += 6
    	hsp/= 2
    	img_spd += 0.5
        }
    
		}
		
		
	if attack == AT_FSPECIAL && hbox_num == 4 {
		
		 if !free {
    	destroyed = 1
    	sound_play(asset_get("sfx_land_light"));
    	create_hitbox(AT_FSPECIAL , 5 , x , y );
        }
		
		}
		
		
		
			
		if attack == AT_FSPECIAL && hbox_num == 5 {
			
					
var heal_player = instance_place(x, y, oPlayer)
if (heal_player != noone) {
	
	if  heal_player.url != 2154720280 && heal_player.url != player_id.url  {
  			sound_play(asset_get("sfx_bite"));
			spawn_hit_fx( x  , y , tauntpar1 )
		take_damage( heal_player.player, -1 , -2 )
			destroyed = 1
	}
	
	
	if  heal_player.url == 2154720280 or heal_player.url == player_id.url {
		tauntpar2 = hit_fx_create( sprite_get( "tauntpar2" ), 20);
  	    	sound_play(asset_get("sfx_orca_bite"));
			spawn_hit_fx( heal_player.x  , heal_player.y , tauntpar1 )
			spawn_hit_fx( x  , y , tauntpar1 )
		heal_player.supply += 1
		destroyed = 1
	}
   }

			hitbox_timer -= 1

			
}

if attack == AT_DSPECIAL && hbox_num == 1 && !free && player_id.milkpizz != 1  {
	destroyed = 1 
	spawn_hit_fx( x  , y , 195 )
    	spawn_hit_fx( x  , y , 156 )
    	sound_play(sound_get("explosionshake"));
    	create_hitbox(AT_DSPECIAL , 2 , x , y );
	
}



if attack == AT_DSPECIAL && hbox_num == 3 {
	
    if hitbox_timer % 6 == 0 {
		create_hitbox(AT_DSPECIAL , 4 , x , y );
    }
	
	if hitbox_timer < 60 {
	hsp /= 1.015
	}
    
    if hitbox_timer == 60 {
    	spr_dir *= -1
    }
    
    if hitbox_timer > 60 && hitbox_timer < 110 {
       hsp += 0.2 * spr_dir	
    }
}




/// Coin


	if attack == AT_DSPECIAL && hbox_num == 6 {
		
		
		 if !free {
    	destroyed = 1
    	create_hitbox(AT_DSPECIAL , 5 , x , y );
        }
		
		}
		
		
		
			
		if attack == AT_DSPECIAL && hbox_num == 5 {

var heal_player = instance_place(x, y, oPlayer)
if (heal_player != noone) {
	
	if  heal_player.url != 2154720280 && heal_player.url != player_id.url  {
	tauntpar2 = hit_fx_create( sprite_get( "tauntpar2" ), 20);
  	    	sound_play(asset_get("sfx_coin_collect"));
			spawn_hit_fx( heal_player.x  , heal_player.y , tauntpar2 )
			spawn_hit_fx( x  , y , 109 )
		take_damage( heal_player.player, -1 , -1 )
			destroyed = 1
	}
	
	if  heal_player.url == 2154720280  or heal_player.url == player_id.url  {
		tauntpar2 = hit_fx_create( sprite_get( "tauntpar2" ), 20);
  	    	sound_play(asset_get("sfx_coin_collect"));
			spawn_hit_fx( heal_player.x  , heal_player.y , tauntpar2 )
			spawn_hit_fx( x  , y , 109 )
		take_damage( heal_player.player, -1 , -1 )	
		heal_player.supply += 1
		destroyed = 1
	}
   }
   
			hitbox_timer -= 1

   }
		

}