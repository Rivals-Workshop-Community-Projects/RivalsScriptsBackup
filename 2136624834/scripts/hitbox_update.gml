///
if attack != AT_NSPECIAL_2 {
   draw_xscale = spr_dir 
}

if attack == AT_NSPECIAL {
	player_id.move_cooldown[AT_NSPECIAL] = 5
}

if player == orig_player  {
	
	if attack == AT_NSPECIAL_2 && hbox_num == 1 {
		if hitbox_timer == 1 {
			x -= 30*spr_dir
			draw_xscale /= 4
			draw_yscale /= 4
			hsp = 4 - random_func(1,9,true)
			vsp = -2 - random_func(2,4,true)
		}
		
		
		if !free or y > room_height {
			destroyed = true 
			spawn_hit_fx(x,y,tauntpar1)
			x += 9999
		}
		
	}
	
if attack == AT_NSPECIAL {
	
	with pHitBox {
		if player_id.char_height == other.player_id.char_height && abs(x - other.x) < 60 && abs(y - other.y) < 60 && hit_priority != 4.2131 {
			if attack == AT_FTILT {
				sound_stop(asset_get("sfx_blow_heavy2"));
				sound_play(asset_get("sfx_blow_heavy2"));
				with other {
				   fx = spawn_hit_fx( x , y , 305 )
                   fx.pause = 4
                   spr_dir = other.spr_dir 
                   hsp = 10*spr_dir 
                   vsp = -4
				}
				hit_priority = 4.2131
				other.hitbox_timer = 0
			}
			
			if attack == AT_USTRONG {
				sound_stop(asset_get("sfx_blow_heavy2"));
				sound_play(asset_get("sfx_blow_heavy2"));
				with other {
				   fx = spawn_hit_fx( x , y , 305 )
                   fx.pause = 4
                   spr_dir = other.spr_dir 
                   hsp = 2*spr_dir 
                   vsp = -12
				}
				hit_priority = 4.2131
				other.hitbox_timer = 0
			}
			
			if attack == AT_DSTRONG {
				sound_stop(asset_get("sfx_boss_laser_hit"));
				sound_play(asset_get("sfx_boss_laser_hit"));
				with other {
				   fx = spawn_hit_fx( x , y , 305 )
                   fx.pause = 4
                   destroyed = true 
				}
				player_id.ncharge = 70
				player_id.snox = other.x
				player_id.snoy = other.y
				hit_priority = 4.2131
				other.hitbox_timer = 0
			}
			
			if attack == AT_BAIR {
				sound_stop(asset_get("sfx_blow_heavy2"));
				sound_play(asset_get("sfx_blow_heavy2"));
				with other {
				   fx = spawn_hit_fx( x , y , 305 )
                   fx.pause = 4
                   spr_dir = other.spr_dir*-1 
                   hsp = 10*spr_dir 
                   vsp = 0
				}
				hit_priority = 4.2131
				other.hitbox_timer = 0
			}
		}
	}
	
	if player_id.window == 2 && player_id.attack == AT_USPECIAL  
	&& (player_id.state == PS_ATTACK_GROUND or player_id.state == PS_ATTACK_AIR) {
    	if abs(x - player_id.x) < 70 && abs(y - player_id.y - 30) < 70 {
		

	
	if attack == AT_NSPECIAL && hbox_num == 1  {
    destroyed = 1
    create_hitbox(AT_NSPECIAL , 8,  x  , y );
    spawn_hit_fx( x , y , 305 )
    }	
    
    
	if hbox_num == 3 {
		

    destroyed = 1
    create_hitbox(AT_NSPECIAL , 6,  x  , y );
    create_hitbox(AT_NSPECIAL , 4,  x  , y );
    create_hitbox(AT_NSPECIAL , 8,  x  , y );
    fx = spawn_hit_fx( x , y , 306 )
    fx.pause = 5
     sound_play(sound_get("RI"));
	}
		
	
	if hbox_num == 2{

    destroyed = 1
    create_hitbox(AT_NSPECIAL , 7,  x  , y );
    create_hitbox(AT_NSPECIAL , 5,  x  , y );
    fx = spawn_hit_fx( x , y , 304 )
    fx.pause = 5
    sound_play(sound_get("RI2"));
	}
	
		
	}
	}
	
	with pHitBox {
		
	if attack == AT_FSPECIAL && player_id == other.player_id && hbox_num == 2 && abs(x - other.x) < 100 && 	abs(y - other.y) < 60 && hitbox_timer == 2 {
		
    with other {
	
	if attack == AT_NSPECIAL && hbox_num == 1  {
    spr_dir = player_id.spr_dir*-1
    hsp = 4*spr_dir
    vsp = -8
    fx = spawn_hit_fx( x , y , 302 )
    fx.pause = 4
    sound_play(asset_get("sfx_blow_medium2"));
    }	
    
		
	
	if hbox_num == 2{
    spr_dir = player_id.spr_dir*-1
    hsp = 3*spr_dir
    vsp = -8
     fx = spawn_hit_fx( x , y , 304 )
    fx.pause = 4
    sound_play(asset_get("sfx_blow_heavy1"));
	}
	
	if hbox_num == 3 {
	spr_dir = player_id.spr_dir*-1
	hsp = 2*spr_dir
	vsp = -8
     fx = spawn_hit_fx( x , y , 306 )
    fx.pause = 4
     sound_play(asset_get("sfx_blow_heavy2"));
	}
	
		
	}
	}
	
	
	
	}
	
}	


if attack == AT_FSTRONG  {
	
	if hbox_num >= 2 {
		sprite_index = sprite_get("icicle2")
	}
	
	if player_id.fstronghit > 1 && player_id.timefreeze < 20{
		hsp = 1*spr_dir
		hitbox_timer -= 1
	}
	
	if player_id.fstronghit = 1  && player_id.timefreeze < 20 {
		 hsp = 14 * spr_dir
	}
	 
}

	
if 	player_id.timefreeze < 1 {

if attack == AT_FSTRONG  {
	if hbox_num == 1hit_priority = 9
    if get_gameplay_time() % 4 = 0 {
	spawn_hit_fx( x , y + 14 - random_func(5, 20, true) , tauntpar1 )
	 }
	
}


if attack == AT_NSPECIAL {

	if hbox_num < 3 && (free or (player_id.attack == AT_FSPECIAL && player_id.window <= 3
	&& (player_id.state == PS_ATTACK_GROUND or player_id.state == PS_ATTACK_AIR))) {
		hitbox_timer -= 1
	}
	
	if hbox_num < 3 && hitbox_timer > (hbox_num*40) {
		sound_play(asset_get("sfx_bird_downspecial"),false,noone,.5,hbox_num/1.5);
		fx = spawn_hit_fx( x , y, 302 )
        fx.pause = 4
        y -= 2
		destroyed = true 
		createing = create_hitbox(AT_NSPECIAL,hbox_num + 1,x,y)
		createing.spr_dir = spr_dir
		createing.hsp = (3 - hbox_num)*spr_dir
		createing.nomorehit = 5
	}
	
       if "nomorehit" in self {
    	if nomorehit > 0 {
    		hit_priority = 0
    		nomorehit -- 
              if nomorehit > 10 - hbox_num*5 {
    			create_hitbox(AT_NSPECIAL_2,1,x,y)
              }
    		
    	} else {
    		hit_priority = 9
    	}
       } else {
       	hit_priority = 9
       }
	
	  if hbox_num == 5 or hbox_num == 7 or hbox_num == 8  {
	  	
	  	if !free {
	  		destroyed = 1 
	  		 create_hitbox(AT_NSPECIAL , 10,  x  , y );
	  		  sound_stop( asset_get("sfx_abyss_explosion"));
	  		  sound_play( asset_get("sfx_abyss_explosion"));
	  		  spawn_hit_fx( x , y , 305)
	  	}
	  	
	  }
	  
	   if hbox_num == 4 or hbox_num == 6  {
	  	
	  	if !free {
	  		destroyed = 1 
    create_hitbox(AT_NSPECIAL , 5,  x  , y );
    create_hitbox(AT_NSPECIAL , 7,  x  , y );
	  		 create_hitbox(AT_NSPECIAL , 9,  x  , y );
	  		  sound_stop( asset_get("sfx_abyss_explosion_big"));
	  		  sound_play( asset_get("sfx_abyss_explosion_big"));
	  		  spawn_hit_fx( x , y , 304 )
	  	}
	  	
	  }
	  
	  

 

	if player_id.fstronghit > 3 {
		
	destroyed = true
   
	}
	
	
	

	
	
}

if attack == AT_NSPECIAL  {
	

	if get_gameplay_time() % 3 == 0 {
        spawn_hit_fx( x + 20 - random_func(1, 40, true) , y - 20 + random_func(2, 40, true) , tauntpar1 )
        }
	
        
	if get_gameplay_time() % (5 + hbox_num) == 0 && !free {
	    sound_play(sound_get("ballroll"),false,noone,0.6 + (hbox_num/50), 1 - (hbox_num/50));
	    
	}
	
	if y > room_height {
		if hbox_num <= 3 {
			sound_play(asset_get("sfx_bird_downspecial"),false,noone,.5,1.4);
			sound_play(asset_get("sfx_spin"),false,noone,.5,1.4);
	    	player_id.snox = x
	    	player_id.snoy = y
		}
		destroyed = true
		
	}
}
}


if attack == AT_FSPECIAL {
	
	if player_id.state_cat == SC_HITSTUN {
		destroyed = 1
	}
	
	if player_id.fstronghit > 3{
		destroyed = 1
	}
	
	if hbox_num == 1 {
		if get_gameplay_time() % 4 = 0 {
	spawn_hit_fx( x , y + 10 - random_func(5, 20, true) , tauntpar1 )
	 }
	 
		x = player_id.x + ((hitbox_timer * 11) * spr_dir)
		y = player_id.y - 40 + player_id.fver * 6
		
		if player_id.window > 2 {
			destroyed = true
		}
	}

}



if player_id.timefreeze > 10 {
	if attack == AT_FSTRONG  {
		hit_priority = 0
    hsp /= 1.5
    hitbox_timer = -30
    }
     
     if attack == AT_NSPECIAL {
     	hit_priority = 0
    hsp /= 1.5
    vsp = 0
    hitbox_timer = -30
    }
 


}





if hitbox_timer = -28 {
	
	if attack == AT_FSTRONG {
    hsp = 14 * spr_dir
    }
     
    if attack == AT_NSPECIAL && hbox_num == 1{
    hsp = 4 * spr_dir
    }
    
    if attack == AT_NSPECIAL && hbox_num == 5{
    hsp = 4 * spr_dir
    vsp = -8
    }
    
    if attack == AT_NSPECIAL && hbox_num == 7{
    hsp = -4 * spr_dir
    vsp = -8
    }
    
    if attack == AT_NSPECIAL && hbox_num == 8{

    vsp = -10
    }
    
    
    if attack == AT_NSPECIAL && hbox_num == 2  {
    hsp = 3 * spr_dir
    }
    
    if attack == AT_NSPECIAL && hbox_num == 4 {
    hsp = -3 * spr_dir
    vsp = -8
    }
    
         if attack == AT_NSPECIAL && hbox_num == 6 {
    hsp = 3 * spr_dir
    vsp = -8
    }
    
     if attack == AT_NSPECIAL && hbox_num == 3{
    hsp = 2 * spr_dir
    }
    
    
    
}

}