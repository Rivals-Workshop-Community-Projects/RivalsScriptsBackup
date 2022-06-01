///





if attack == AT_NSPECIAL  {
    
   
    if spr_dir == 1 && hsp < 0 {
        hsp *= -1
    }
    
    if spr_dir == -1 && hsp > 0 {
        hsp *= -1
    }
    
   //     shu = hit_fx_create( sprite_get( "shuriken2" ), 9 );
   // if hitbox_timer % 2 == 0 {
   //  spawn_hit_fx (x  , y + 10 - random_func(1, 20, true) , shu)
   // }
          
} 

if attack == AT_FSPECIAL  {
	   if hitbox_timer <= 1 {
   }
	
}


if attack == AT_USPECIAL  {
	   if hitbox_timer <= 1 {
   }
	
}


if attack == AT_DSPECIAL && hbox_num == 1{

if player_id.move_cooldown[AT_UTHROW] > 0 {
    		destroyed = 1
    		dfx = spawn_hit_fx(x, y , 302)
    		dfx.pause = 5
    		sound_play(asset_get("sfx_bird_sidespecial_start")); 
    		sound_play(asset_get("sfx_spin"));
    		shake_camera(4,4)
}

if player_id.state == PS_PARRY {
	x += (floor((player_id.x - x)/10))
	y += (floor((player_id.y - y)/10))

}

if hitbox_timer = 1 {
   if player_id.move_cooldown[AT_EXTRA_1] == 0 {
	vsp = 0
	hsp = 0
   } else {
   	vsp = -6
	
    if player_id.x < player_id.hit_player_obj.x {
		hsp = 3
   } else {
   	   hsp = -3
   }
   }
	
}
	nearbyhitbox = collision_circle( x-12, y-12, 34, asset_get("pHitBox"), true, true ) 
	
	if nearbyhitbox != noone && nearbyhitbox.hit_priority > 0 && player_id.cloneinv == 0{
		if nearbyhitbox.player_id != player_id && nearbyhitbox.type == 1{
			shake_camera(4, 6)
			player_id.cloneout = 0
                 destroyed = 1
    		dfx = spawn_hit_fx(x, y , 302)
    		dfx.pause = 5
                  sound_play(asset_get("sfx_holy_lightning")); 
                  sound_play(asset_get("sfx_clairen_hit_strong"))	
                  // create_hitbox (AT_NSPECIAL, 11, player_id.x, player_id.y - 30)
                  clonetime = 0
	    }
	    
	    if nearbyhitbox.player_id != player_id  && nearbyhitbox.type == 2{
	    	///if player_id.move_cooldown[AT_EXTRA_2] <= 12 {
	    	///player_id.move_cooldown[AT_EXTRA_2] = 20
            ///sound_play(sound_get("RI")); 
            ///shake_camera(4, 6)
            ///spawn_hit_fx (nearbyhitbox.x - 10 + random_func(2,20,true), y  - random_func(2,40,true) , 302 )
	    	///}
			///nearbyhitbox.hsp *= -1 + random_func(1,6,true)/10
			///if nearbyhitbox.x > x {
			///nearbyhitbox.x += 10
			///nearbyhitbox.hsp += 0.2
			///} else {
			///nearbyhitbox.x -= 10	
			///nearbyhitbox.hsp -= 0.2
			///}
			///if nearbyhitbox.vsp > 0 {
			///	nearbyhitbox.vsp = 0
			///} 
			///nearbyhitbox.air_friction = 0
			///nearbyhitbox.spr_dir *= -1
			///if nearbyhitbox.vsp > -8 {
			///nearbyhitbox.vsp -= 7 + random_func(1,4,true)/2
			///}
			//nearbyhitbox.grav = 0.2 + abs(nearbyhitbox.hsp/40)
	       	//nearbyhitbox.hitbox_timer = 1
			//nearbyhitbox.hit_priority = 0
			///nearbyhitbox.destroyed = true

	    }
	    
	}   
	
	
            if (place_meeting(x + hsp, y + vsp, asset_get("par_block"))) {
                 y -= 5
                 vsp -= 0.4
             }

player_id.clonedir = spr_dir

if player_id.attacking == false {
    spr_dir = player_id.spr_dir
}

if hitbox_timer < 4 {
    player_id.clonetime = hitbox_timer 
}
    
if y > (room_height/2 + 400) {
    	shake_camera(4, 6)
			player_id.cloneout = 0
                 destroyed = 1
                 clonetime = 0
                  // create_hitbox (AT_NSPECIAL, 11, player_id.x, player_id.y - 30)
                  sound_play(asset_get("sfx_holy_lightning")); 
                  sound_play(asset_get("sfx_clairen_hit_strong"))	
}

if player_id.attacking and player_id.attack = AT_DSPECIAL && player_id.cloneout = 1{
        
    
    if player_id.window == 1 && player_id.window_timer > 6{
    	player_id.move_cooldown[AT_DSPECIAL] = 60
        ddfx = spawn_hit_fx(player_id.x, player_id.y - 40, 302)
        ddfx.pause = 5
        player_id.window = 3
        player_id.window_timer = 0
        player_id.x = x
        player_id.y = y + 36
        player_id.vsp = -4
		player_id.cloneout = 0
		destroyed = 1
		clonetime = 0
    }
}
   
    player_id.clonex = x
    player_id.cloney = y
    
    if hitbox_timer = 299 {
        hitbox_timer = 20
    }
    
    if player_id.attacking == false  {
        hsp /= 1.1
    }
    
    if player_id.attacking and (player_id.attack = AT_DSTRONG or player_id.attack = AT_USTRONG or player_id.attack = AT_FSTRONG) {
    	spr_dir = player_id.spr_dir
    	if player_id.window > 1 {
    	vsp = 0
    	hsp = 0
    	}
    	with player_id {
    		if window == 1 {
    		if right_down && other.hsp < 6 {
    			other.hsp += 1
    		}
    		if left_down && other.hsp > -6  {
    			other.hsp -= 1
    		}
    		other.hsp /= 1.06
    		}
    	}
    	
    	if (player_id.window == 3 && player_id.window_timer > 10) {
    		destroyed = 1
    		dfx = spawn_hit_fx(x, y , 302)
    		dfx.pause = 5
    		sound_play(asset_get("sfx_bird_sidespecial_start")); 
    		sound_play(asset_get("sfx_spin"));
    		shake_camera(4,4)
    	}
    }
    

    
    if player_id.attacking and player_id.attack = AT_NSPECIAL {
        hsp = player_id.hsp/1.2  
        spr_dir =  player_id.spr_dir 
        if player_id.window < 5 {
            if vsp < 10 {
    	   		vsp += 0.3
    	   	} else {
    	   		vsp = 10
    	   	}
        }
    	   	
        if player_id.vsp < -2 && player_id.window < 5{
        vsp = player_id.vsp 
        y -= 1
        } 
        
        if player_id.window >= 5{
        vsp = player_id.vsp 	
        }

        
        if player_id.hitpause == false {
        if player_id.window == 6 and player_id.window_timer == 3 {
            create_hitbox(AT_NSPECIAL, 5, 0, 0)
            create_hitbox(AT_NSPECIAL, 6, 0, 0)
        }
        if player_id.window == 8 and player_id.window_timer == 3 {
            create_hitbox(AT_NSPECIAL, 7, 0, 0)
            create_hitbox(AT_NSPECIAL, 8, 0, 0)
        }
        }
        
        if (player_id.window == 6 or player_id.window == 8 ) && player_id.window_timer > 16 {
    		destroyed = 1
    		dfx = spawn_hit_fx(x, y , 302)
    		dfx.pause = 5
    		sound_play(asset_get("sfx_bird_sidespecial_start")); 
    		sound_play(asset_get("sfx_spin"));
    		shake_camera(4,4)
    	}
    	
    }
    
    
    if player_id.attacking and player_id.attack = AT_USPECIAL   {
        vsp = player_id.vsp
        hsp /= 1.08
        spr_dir =  player_id.spr_dir
         if player_id.window == 4  && player_id.window_timer > 16 {
    		destroyed = 1
    		dfx = spawn_hit_fx(x, y , 302)
    		dfx.pause = 5
    		sound_play(asset_get("sfx_bird_sidespecial_start")); 
    		sound_play(asset_get("sfx_spin")); 
    		shake_camera(4,4)
    	}
    }

    
        
    if player_id.attacking and player_id.attack = AT_FSPECIAL and player_id.hitpause == false {
    	
    	if player_id.window == 4  && player_id.window_timer == 1{
    		destroyed = 1
    		dfx = spawn_hit_fx(x, y , 302)
    		dfx.pause = 5
    		sound_play(asset_get("sfx_bird_sidespecial_start")); 
    		sound_play(asset_get("sfx_spin")); 
    		shake_camera(4,4)
    	}
    	
    	        spr_dir =  player_id.spr_dir
    if player_id.window == 3 {
    x += floor((player_id.x - x) / 20)
	y += floor((player_id.y - y) / 20)
	fall_through = true
	if player_id.x - x < 0 {
		hsp -= 0.7
	} else {
		hsp += 0.7
	} 
	
	if player_id.y - y < 0 {
		vsp -= 1
	} else {
	    
	} 
	
    }
    
    if player_id.window == 4 or player_id.window == 1 {
    	
    if player_id.window == 1 {
    	vsp /= 2
    }	
        if free && vsp > -4{
      vsp -= 0.5
        }
      hsp /= 1.07
    }
            
    }
    
    
            cpar1 = hit_fx_create( sprite_get( "cpar1" ), 15 );
            cpar2 = hit_fx_create( sprite_get( "cpar2" ), 20 );
    if hitbox_timer % 6 == 0 {
     spawn_hit_fx (x - 30 + random_func(2, 60, true)   , y + 10 - random_func(1, 70, true) , cpar1)
    }
    
    if hitbox_timer % 6 == 3{
     spawn_hit_fx (x - 30 + random_func(2, 60, true)   , y + 10 - random_func(1, 70, true) , cpar2)
    }     
} 


