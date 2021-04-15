///

if attack == AT_FSPECIAL && hbox_num == 3{
	
  if spr_dir == 1 && hsp < 0 {
  	hsp *= -1
  }
  
  if spr_dir == -1 && hsp > 0 {
  	hsp *= -1
  }
	

	
	if  hitbox_timer % 5 == 0 {
		i2 = hit_fx_create( sprite_get( "inkpar5" ), 26);
			spawn_hit_fx( x + 8*spr_dir , y + 50 - random_func(4, 36, true) , i2 )
    }
	
}

if attack == AT_NSPECIAL && hbox_num == 8{
	vsp /= 1.1
	hsp /= 1.1
	if hitbox_timer == 1 {
		vsp = player_id.hit_player_obj.vsp -3 + random_func(1, 6, true) 
		hsp = player_id.hit_player_obj.hsp -3 + random_func(2, 6, true)
	}
	
	
	var heal_player = instance_place(x, y, oPlayer)	
	if (heal_player != noone) && hitbox_timer > 6 {
	if  heal_player.url == player_id.url && heal_player.state_cat != SC_HITSTUN && heal_player.isyellow = 0 {
  	    sound_play(asset_get("sfx_diamond_small_collect"),false,noone,0.4);
		heal_player.ink += 5
		destroyed = 1
		bhl = hit_fx_create( sprite_get( "blackhit" ), 6);
		spawn_hit_fx (x,y,bhl)
		heal_player.move_cooldown[AT_EXTRA_2] = 60
	}
	
   }
   
   if player_id.attacking &&  player_id.attack == AT_NSPECIAL && window < 2{
   	hitbox_timer = 7
   	x += (player_id.x - x) / 60
	y += (player_id.y - y) / 60
	fall_through = true
	if player_id.x - x < 0 {
		hsp -= 0.6
	} else {
		hsp += 0.6
	}
	
	if player_id.y - y < 0 {
		vsp -= 0.6
	} else {
		vsp += 0.6
	}
   }
   
   if player_id.inkshield > 0 {
    x += (player_id.x - x) / 60
	y += (player_id.y - y) / 60
	fall_through = true
	if player_id.x - x < 0 {
		hsp -= 0.2
	} else {
		hsp += 0.2
	}
	
	if player_id.y - y < 0 {
		vsp -= 0.2
	} else {
		vsp += 0.2
	}
   	
   }
	
}


if attack == AT_FSPECIAL && hbox_num > 3{
	  if spr_dir == 1 && hsp < 0 {
  	hsp *= -1
  }
  
  if spr_dir == -1 && hsp > 0 {
  	hsp *= -1
  }

	
	if  hitbox_timer % 5 == 0 {
		i2 = hit_fx_create( sprite_get( "inkpar5" ), 26);
			spawn_hit_fx( x + 8*spr_dir , y + 38 , i2 )
    }
	
}


if attack == AT_DSPECIAL {
		
		player_id.move_cooldown[AT_DSPECIAL] = 2
summon = hit_fx_create( sprite_get( "summon" ), 40 );
				i1 = hit_fx_create( sprite_get( "inkpar5" ), 26);
				i2 = hit_fx_create( sprite_get( "inkpar6" ), 26);
///Zetta
if hbox_num == 1 {
	
	if hitbox_timer == 1 {
	waiting = 1
	} else {
		waiting += 1
	}
	
	
	vsp = 0
	hsp = 0
	if (hitbox_timer >= 5*4 && hitbox_timer < 16*4 ) or hitbox_timer >= 27*4 {
	nearbyhitbox = collision_circle( x-12, y-12, 34, asset_get("pHitBox"), true, true ) 
	if nearbyhitbox != noone && nearbyhitbox.hit_priority > 0{
		if nearbyhitbox.player_id != player_id {
			shake_camera(4, 4)
			player_id.zettahit = 0
			create_hitbox(AT_DSPECIAL , 11 , x  , y + 10  );
				destroyed = true	
				spawn_hit_fx( x , y + 10  , i2 )
				spawn_hit_fx( x , y + 10  , i1 )
				spawn_hit_fx( x  , y , 305 )
				sound_play(asset_get("sfx_poison_hit_strong"))
	    }
	}   
   } 
   
   if hitbox_timer == 1 or hitbox_timer == 36*4 {
   	spawn_hit_fx( x , y - 20  , summon )
					sound_play(asset_get("sfx_orca_soak")) 
   }
   
   if hitbox_timer == 4*4 {
   	sound_play(asset_get("sfx_spin")) 
   }
   
    if hitbox_timer == 6*4 {
   	sound_play(asset_get("sfx_bird_sidespecial")) 
   }
   
      if hitbox_timer == 14*4 {
   	sound_play(sound_get("SpaceCut")) 
   }
   
   
   if hitbox_timer == 16*4 {
   	spawn_hit_fx(x, y, 304)
   	sound_play(sound_get("RCE"))
   	
   	    spawn_hit_fx( x , y - 50  , i2 )
   	    spawn_hit_fx( x - 55, y - 55  , i2 )
   	    spawn_hit_fx( x + 55 , y - 55  , i2 )
   	    spawn_hit_fx( x + 80 , y + 10  , i2 )
   	    spawn_hit_fx( x - 80 , y + 10  , i2 )
   	    
   }
   
   if hitbox_timer >= 20*4 && hitbox_timer < 23*4 {
  	if waiting %4 == 0 && waiting < 90 {
  		hitbox_timer -= 4
  		image_index -= 1
  	}
  }
  
   if hitbox_timer == 32*4 {
   	sound_play(sound_get("RI"))
   }
   
   if hitbox_timer == 17*4 + 2 {
   	spawn_hit_fx( x , y - 100  , i2 )
   	    spawn_hit_fx( x - 110 , y - 70  , i2 )
   	    spawn_hit_fx( x + 110 , y - 70  , i2 )
   	    spawn_hit_fx( x + 160 , y + 20  , i2 )
   	    spawn_hit_fx( x - 160 , y + 20  , i2 )
   }
   
   if hitbox_timer == 23*4 {
   	shake_camera(2, 10)
   	SC = hit_fx_create( sprite_get( "SC" ), 12 );
   	create_hitbox(AT_DSPECIAL , 12 , x - 300 , y - 10  );
   	spawn_hit_fx(x - 300 , y - 10  , SC )
   	create_hitbox(AT_DSPECIAL , 12 , x + 300 , y - 10  );
   	spawn_hit_fx(x + 300 , y - 10  , SC )
   }
   
   if hitbox_timer == 24*4 {
   	shake_camera(4, 10)
   	SC = hit_fx_create( sprite_get( "SC" ), 12 );
   	create_hitbox(AT_DSPECIAL , 12 , x - 250 , y - 10  );
   	spawn_hit_fx(x - 250 , y - 10  , SC )
   	create_hitbox(AT_DSPECIAL , 12 , x + 250 , y - 10  );
   	spawn_hit_fx(x + 250 , y - 10  , SC )
   }
   
   if hitbox_timer == 25*4 {
   	shake_camera(4, 10)
   	SC = hit_fx_create( sprite_get( "SC" ), 12 );
   	create_hitbox(AT_DSPECIAL , 12 , x - 180 , y - 10  );
   	spawn_hit_fx(x - 180 , y - 10  , SC )
   	create_hitbox(AT_DSPECIAL , 12 , x + 180 , y - 10  );
   	spawn_hit_fx(x + 180 , y - 10  , SC )
   }
   
    if hitbox_timer == 26*4 {
    	shake_camera(4, 10)
   	SC = hit_fx_create( sprite_get( "SC" ), 12 );
   	create_hitbox(AT_DSPECIAL , 12 , x - 110 , y - 10  );
   	spawn_hit_fx(x - 110 , y - 10  , SC )
   	create_hitbox(AT_DSPECIAL , 12 , x + 110 , y - 10  );
   	spawn_hit_fx(x + 110 , y - 10  , SC )
   }
   
    if hitbox_timer == 27*4 {
    	shake_camera(4, 10)
   	SC = hit_fx_create( sprite_get( "SC" ), 12 );
   	create_hitbox(AT_DSPECIAL , 12 , x - 50 , y - 10  );
   	spawn_hit_fx(x - 50 , y - 10  , SC )
   	create_hitbox(AT_DSPECIAL , 12 , x + 50 , y - 10  );
   	spawn_hit_fx(x + 50 , y - 10  , SC )
   }
   
   if hitbox_timer == 33* 4 {
   	if player_id.zettahit = 1 {
   		create_hitbox(AT_DSPECIAL , 13 , player_id.hit_player_obj.x , player_id.hit_player_obj.y - 30  );
   	}
   	player_id.zettahit = 0
   }
}


///Alex 
if hbox_num == 2 {
    
    if x < player_id.hit_player_obj.x {
    	spr_dir = 1
    } else {
    	spr_dir = -1
    }
	if (hitbox_timer >= 5*4) {
	nearbyhitbox = collision_circle( x-12, y-12, 34, asset_get("pHitBox"), true, true ) 
	if nearbyhitbox != noone && nearbyhitbox.hit_priority > 0{
		if nearbyhitbox.player_id != player_id {
			shake_camera(8, 4)
			    hsp = 0
			    create_hitbox(AT_DSPECIAL , 21 , x , y + 10  );
				spawn_hit_fx( x + 20*spr_dir  , y , 304 )
				sound_play(asset_get("sfx_zetter_downb")) 
				sound_play(sound_get("RI"))
				hitbox_timer = 4*4
				image_index = 3
				x -= 10*spr_dir
				nearbyhitbox.destroyed = true
	    }
	}   
	}
	
	if hitbox_timer == 1 or hitbox_timer == 29*4 {
   	spawn_hit_fx( x , y - 20  , summon )
					sound_play(asset_get("sfx_orca_soak")) 
   }
   
   if hitbox_timer == 5*4 {
   	sound_play(asset_get("sfx_swipe_heavy1")) 
   }
   
   if hitbox_timer == 7*4 {
   	shake_camera(8, 8)
   	create_hitbox(AT_DSPECIAL , 22 , x , y  );
   	sound_play(asset_get("sfx_zetter_downb")) 
   	sound_play(sound_get("RI")) 
   }
   
   if hitbox_timer == 12*4 {
   	sound_play(sound_get("RZ")) 
   }
   
   if hitbox_timer >= 12*4 && hitbox_timer < 19*4{
   	if player_id.alexhit = 1 {
   		x += floor((player_id.hit_player_obj.x - x)/10)
   		y += floor((player_id.hit_player_obj.y - 20 - y)/4)
   	}
   	if x >= player_id.hit_player_obj.x - 40 and x <= player_id.hit_player_obj.x + 40 {
   		hitbox_timer = 20*4
   		image_index = 20
   	}
   		if  hitbox_timer % 4 == 0 {
		i2 = hit_fx_create( sprite_get( "inkpar5" ), 26);
			spawn_hit_fx( x + 8*spr_dir , y + 28 , i2 )
         }
   	hsp = 14*spr_dir
   }
   
    if hitbox_timer == 19*4 {
    	y -= 4
    	   	hsp = 2 * spr_dir
   	sound_play(asset_get("sfx_swipe_heavy2")) 
   }
   
   if hitbox_timer <= 19*4 {
   	vsp = 0
   }
   
    if hitbox_timer == 20*4 {
    	y -= 10
    	hsp = 5 * spr_dir
    	vsp = -9
   	sound_play(asset_get("sfx_swipe_medium2")) 
   }
   if hitbox_timer == 20*4 {
   create_hitbox(AT_DSPECIAL , 23 , x + 30*spr_dir , y - 30  );
   }
   
   if hitbox_timer == 23*4 {
   create_hitbox(AT_DSPECIAL , 24 , x + 30*spr_dir , y - 30  );
   }
   
    if hitbox_timer == 22*4 {
    	player_id.alexhit = 0
        hsp = 1 * spr_dir
    	vsp = -7
   	sound_play(asset_get("sfx_swipe_medium1")) 
   }
   
}

///Mayu
if hbox_num == 3 {
	

	
	if hitbox_timer == 1 {
	waiting = 1
	} else {
		waiting += 1
	}
	
  if player_id.mayuhit = 1{
  	hitbox_timer = 15*4 - 2
  	image_index = 14
  	player_id.mayuhit = 0
  }
  
  if hitbox_timer >= 5*4 && hitbox_timer < 9*4 {
  	if waiting %8 == 0 {
  	if x < player_id.hit_player_obj.x {
    	spr_dir = 1
    } else {
    	spr_dir = -1
    }
  		hsp += 1*spr_dir
  		hitbox_timer -= 4
  		image_index -= 1
  	}
  }
  
	if (hitbox_timer >= 5*4){
	nearbyhitbox = collision_circle( x-12, y-12, 34, asset_get("pHitBox"), true, true ) 
	if nearbyhitbox != noone && nearbyhitbox.hit_priority > 0{
		if nearbyhitbox.player_id != player_id {
			shake_camera(4, 4)
			player_id.mayuhit = 0
			create_hitbox(AT_DSPECIAL , 31 , x  , y + 10  );
				destroyed = true	
				spawn_hit_fx( x , y + 10  , i2 )
				spawn_hit_fx( x , y + 10  , i1 )
				spawn_hit_fx( x  , y , 305 )
				sound_play(asset_get("sfx_poison_hit_strong"))
	    }
	}   
   } 
   
   if hitbox_timer == 1 or hitbox_timer == 38*4 {
   	spawn_hit_fx( x , y - 20  , summon )
					sound_play(asset_get("sfx_orca_soak")) 
   }
   
    if hitbox_timer == 5*4  {
	  sound_play(sound_get("SpaceCutB")) 
	  spawn_hit_fx( x , y - 20  , 305 )
	  sound_play(asset_get("sfx_swipe_heavy1")) 
    }
    
    if hitbox_timer == 10*4  {
    	hsp = 0
    	shake_camera(2, 14)
    	sound_play(sound_get("RZm")) 
    	        y -= 20
    	        vsp = -6
    }
    
    if hitbox_timer >= 10*4 and hitbox_timer <= 14*4  {  
    		create_hitbox(AT_DSPECIAL , 25 , x + 6*spr_dir  , y - 20  );
    	x += 20 * spr_dir
        if  hitbox_timer % 2 == 0 {
			spawn_hit_fx( x + 8*spr_dir , y + 28 , i2 )
        }
    }
    
    if hitbox_timer == 15*4  {
    	create_hitbox(AT_DSPECIAL , 16 , x  , y + 10  );
    	sound_play(asset_get("sfx_swipe_weak1")) 
    	sound_play(asset_get("sfx_ice_shieldup")) 
    	sound_play(sound_get("SpaceCutB")) 
    }
    
    if hitbox_timer == 17*4  {
    	create_hitbox(AT_DSPECIAL , 14 , x  , y + 10  );
    	sound_play(asset_get("sfx_swipe_weak1")) 
    	sound_play(asset_get("sfx_ice_shieldup")) 
    	sound_play(sound_get("SpaceCutB")) 
    }
    
    if hitbox_timer == 19*4  {
    	create_hitbox(AT_DSPECIAL , 15 , x  , y + 10  );
    	sound_play(asset_get("sfx_swipe_weak2")) 
    	sound_play(asset_get("sfx_ice_shieldup"))
    	sound_play(sound_get("SpaceCutB")) 
    }
    
    if hitbox_timer == 22*4  {
    	create_hitbox(AT_DSPECIAL , 16 , x  , y + 10  );
    	sound_play(asset_get("sfx_swipe_weak1")) 
    	sound_play(asset_get("sfx_swipe_heavy1")) 
    	sound_play(asset_get("sfx_ice_shieldup"))
    	sound_play(asset_get("sfx_ice_on_player")) 
    	sound_play(sound_get("SpaceCutB")) 
    }
    
   if hitbox_timer == 25*4  {
   	create_hitbox(AT_DSPECIAL , 15 , x  , y + 10  );
    	sound_play(asset_get("sfx_swipe_weak1")) 
    	sound_play(asset_get("sfx_swipe_heavy2")) 
    	sound_play(asset_get("sfx_ice_on_player"))
    	sound_play(sound_get("SpaceCutB")) 
    }
    
    if hitbox_timer == 29*4  {
    	create_hitbox(AT_DSPECIAL , 14 , x  , y + 10  );
    	sound_play(asset_get("sfx_swipe_weak1")) 
    	sound_play(asset_get("sfx_swipe_heavy1")) 
    	sound_play(asset_get("sfx_ice_on_player"))
    	sound_play(sound_get("SpaceCutB")) 
    }
    
    if hitbox_timer == 32*4  {
    	create_hitbox(AT_DSPECIAL , 17 , x  , y + 10  );
    	y -= 20
    	vsp = -10
    	sound_play(asset_get("sfx_swipe_medium2")) 
    	sound_play(asset_get("sfx_swipe_heavy2")) 
    	sound_play(asset_get("sfx_ice_shieldup")) 
    	sound_play(asset_get("sfx_ice_on_player")) 
    	sound_play(sound_get("SpaceCut")) 
    }
    
    if hitbox_timer > 14*4 {
    if x < player_id.hit_player_obj.x {
    	spr_dir = 1
    } else {
    	spr_dir = -1
    }
    }
    if (hitbox_timer < 32*4 and hitbox_timer >= 14*4) or hitbox_timer < 10*4 {
    		vsp = 0
    }
    
    
}

///Saji
if hbox_num == 4 {
	
	if hitbox_timer == 1 {
	waiting = 1
	heath = 1 
	} else {
		waiting += 1
	}
	
	if (hitbox_timer >= 5*4 && hitbox_timer <= 10*4){
	nearbyhitbox = collision_circle( x-12, y-12, 34, asset_get("pHitBox"), true, true ) 
	if nearbyhitbox != noone && nearbyhitbox.hit_priority > 0{
		if nearbyhitbox.player_id != player_id {
			
			if heath > 0 {
				heath-= 1
				waiting = 0
				hsp = -2*spr_dir
				x -= 40*spr_dir
				shake_camera(4, 4)
				spawn_hit_fx( x , y + 10  , i2 )
				spawn_hit_fx( x , y + 10  , i1 )
				spawn_hit_fx( x  , y , 302 )
				sound_play(asset_get("sfx_poison_hit_strong"))
				hitbox_timer = 3*4 - 2
				image_index = 3
			}else {
			shake_camera(4, 4)
			create_hitbox(AT_DSPECIAL , 19 , x  , y + 10  );
				destroyed = true	
				spawn_hit_fx( x , y + 10  , i2 )
				spawn_hit_fx( x , y + 10  , i1 )
				spawn_hit_fx( x  , y , 305 )
				sound_play(asset_get("sfx_poison_hit_strong"))
			}
	    }
	}   
   } 
   
   if hitbox_timer == 1 or hitbox_timer == 20*4 {
   	spawn_hit_fx( x , y - 20  , summon )
					sound_play(asset_get("sfx_orca_soak")) 
   }
   
   if hitbox_timer < 10*4 - 2{
   	vsp = 0
   }
   
   
    if hitbox_timer >= 8*4 && hitbox_timer < 9*4 {
  	if waiting %4 == 0 && waiting < 50{
  	if x < player_id.hit_player_obj.x {
    	spr_dir = 1
    } else {
    	spr_dir = -1
    }
  		hsp += 1*spr_dir
  		hitbox_timer -= 4
  		image_index -= 1
  	}
    }
  
  
  if hitbox_timer == 7*4 - 2 {
  	sound_play(asset_get("sfx_swipe_heavy2")) 
  	sound_play(asset_get("sfx_ice_on_player")) 
  }
  
   if hitbox_timer == 10*4 - 2 {
   	hsp /= 4
   	shake_camera(1, 16)
   	spawn_hit_fx( x  , y , 304 )
   	y -= 50
   	vsp = -14
   	sound_play(sound_get("Fstrong")) 

   }
   
   if hitbox_timer >= 10*4 - 2 && hitbox_timer <= 17*4 - 2 && (hitbox_timer % 2 == 0 or hitbox_timer == 10*4 - 2 or hitbox_timer == 11*4 - 2) {
   	create_hitbox(AT_DSPECIAL , 18 , x + 6*spr_dir  , y - 20  );
   	sound_play(asset_get("sfx_ice_shieldup")) 
   	if hitbox_timer % 6 == 0 or hitbox_timer == 10*4 - 2 {
   	create_hitbox(AT_FSPECIAL , 6 , x + 20*spr_dir  , y  );
   	sound_play(asset_get("sfx_ice_on_player")) 
   	spawn_hit_fx( x  , y , 305 )
   	}
   }
   
    if hitbox_timer == 17*4 - 2 {
   	vsp = -6
   	hsp = 0
   	sound_play(sound_get("RI")) 
   }
}

///Akai
if hbox_num == 5 {
	
	if player_id.akaihit == 1 && hitbox_timer < 34*5{
		player_id.hit_player_obj.x += floor((x + 80*spr_dir - player_id.hit_player_obj.x)/10)
		player_id.hit_player_obj.y += floor((y + 30 - player_id.hit_player_obj.y)/12)
	}
	
	if hitbox_timer == 1 {
		heath = 0
		waiting = 0
	}
	
	if hitbox_timer == 11*5 - 1 {
		if waiting < 100 {
			hsp += 0.2*spr_dir
			hitbox_timer = 11*5 - 2
			waiting += 1 
			image_index = 10
			
		if waiting > 20 && waiting < 100 {
			shake_camera(4, 6)
				spawn_hit_fx( x , y + 20  , i2 )
				spawn_hit_fx( x , y + 20  , i1 )
				sound_play(asset_get("sfx_ori_bash_use"))
				sound_play(sound_get("SpaceCut")) 
				if player_id.hit_player_obj.x > room_width/2 {
				spr_dir = -1
				x = player_id.hit_player_obj.x + 40*spr_dir
				}
				if player_id.hit_player_obj.x <= room_width/2 {
				spr_dir = 1
				x = player_id.hit_player_obj.x - 40*spr_dir
				}
				hsp = -6* spr_dir
				waiting = 115
				hitbox_timer = 10*5
				spawn_hit_fx( x , y + 20  , i2 )
				spawn_hit_fx( x , y + 20  , i1 )
		}
		}
	}
	
	hsp /= 1.2
	vsp = 0
	if (hitbox_timer >= 5*5 && hitbox_timer < 12*5){
	nearbyhitbox = collision_circle( x-12, y-12, 34, asset_get("pHitBox"), true, true ) 
	if nearbyhitbox != noone && nearbyhitbox.hit_priority > 0{
		if nearbyhitbox.player_id != player_id {
			
	if x < player_id.hit_player_obj.x {
    	spr_dir = 1
    } else {
    	spr_dir = -1
    }
    
           if heath > 0 {
				heath-= 1
				waiting = 0
				hsp = -2*spr_dir
				x -= 40*spr_dir
				shake_camera(4, 4)
				spawn_hit_fx( x , y + 10  , i2 )
				spawn_hit_fx( x , y + 10  , i1 )
				spawn_hit_fx( x  , y , 302 )
				sound_play(asset_get("sfx_poison_hit_strong"))
				hitbox_timer = 3*4 - 2
				image_index = 3
			}else {
			shake_camera(4, 4)
			player_id.akaihit = 0
                hsp = -9 * spr_dir
                hitbox_timer = 40*5
				spawn_hit_fx( x , y + 10  , i2 )
				spawn_hit_fx( x , y + 10  , i1 )
				spawn_hit_fx( x  , y , 305 )
				sound_play(asset_get("sfx_poison_hit_strong"))
			}
			
	    }
	}   
   }
   
	if hitbox_timer % 5 == 1  { 
	image_index = hitbox_timer/5 - 1
	}
	
	   if hitbox_timer == 1 or hitbox_timer == 41*5 {
   	spawn_hit_fx( x , y - 20  , summon )
					sound_play(asset_get("sfx_orca_soak")) 
   }
   
    if hitbox_timer == 5*5 {
    	sound_play(sound_get("SpaceCut")) 
    }
    

	
	if hitbox_timer == 12*5 {
			hsp = 12*spr_dir
           sound_play(asset_get("sfx_bird_downspecial")) 
    	   	   	sound_play(asset_get("sfx_swipe_medium1")) 
    }
    
    if hitbox_timer == 15*5 {
    		hsp = 7*spr_dir
           sound_play(asset_get("sfx_bird_downspecial")) 
    	   	sound_play(asset_get("sfx_swipe_medium2")) 
    }
    
    if hitbox_timer == 19*5 {


        		hsp = 12*spr_dir
    	sound_play(asset_get("sfx_bird_sidespecial")) 
    	sound_play(asset_get("sfx_swipe_medium2"))
    	   	sound_play(asset_get("sfx_swipe_weak2")) 
    	   
    }
    
    if hitbox_timer == 21*5 {
    		hsp = 7*spr_dir
    	sound_play(asset_get("sfx_bird_sidespecial")) 
    	sound_play(asset_get("sfx_swipe_medium2"))
    	   	sound_play(asset_get("sfx_swipe_weak2")) 
    	   	
    }
    
    if hitbox_timer == 25*5 {

    if x < player_id.hit_player_obj.x {
    	spr_dir = 1
    } else {
    	spr_dir = -1
    }
        		hsp = 7*spr_dir
    	sound_play(asset_get("sfx_bird_downspecial")) 
    	   	sound_play(asset_get("sfx_swipe_medium1"))
    	   	sound_play(asset_get("sfx_swipe_weak1")) 
    }
    
    if hitbox_timer == 27*5 {
    		hsp = 8*spr_dir
    	sound_play(asset_get("sfx_bird_downspecial")) 
    	   	sound_play(asset_get("sfx_swipe_medium1"))
    	   	sound_play(asset_get("sfx_swipe_weak1")) 
    }
    
    if hitbox_timer == 30*5 {
    		hsp = 4*spr_dir
    if x < player_id.hit_player_obj.x {
    	spr_dir = 1
    } else {
    	spr_dir = -1
    }
    	sound_play(asset_get("sfx_bird_nspecial")) 
    	   	sound_play(asset_get("sfx_shovel_swing_heavy1"))
    	   	sound_play(asset_get("sfx_swipe_heavy1")) 
    }
    
    if hitbox_timer == 34*5 {
    	shake_camera(4, 20)
    		hsp = 12*spr_dir
    	sound_play(asset_get("sfx_bird_nspecial")) 
    	   	sound_play(sound_get("Fstrong"))
    	   	sound_play(asset_get("sfx_ice_on_player")) 
    }
    
    if hitbox_timer == 12*5 {
    	 create_hitbox(AT_DSPECIAL , 26 , x + 30*spr_dir  , y - 20  );
    }
    
    if hitbox_timer == 15*5 {
    	 create_hitbox(AT_DSPECIAL , 26 , x + 30*spr_dir  , y - 20  );
    }
    
    if hitbox_timer == 19*5 or hitbox_timer == 21*5 or hitbox_timer == 25*5  or hitbox_timer == 27*5  {
    	 create_hitbox(AT_DSPECIAL , 27 , x + 40*spr_dir  , y - 20  );
    }
    
    if hitbox_timer == 34*5 {
    	player_id.akaihit = 0
    	 create_hitbox(AT_DSPECIAL , 28 , x + 40*spr_dir  , y - 50  );
    }
    
}



if hbox_num == 17 or hbox_num == 15 or hbox_num == 14 or hbox_num == 16 
 or hbox_num == 26 or hbox_num == 27 or hbox_num == 28{

		

		
	if hbox_num == 17 {
			
		if player_id.hit_player_obj.y - 30 > y {
			y += 2
			vsp += 0.1
		} else {
			y -= 2
			vsp -= 0.1
		}
		
		if  hitbox_timer % 5 == 0 {
		i2 = hit_fx_create( sprite_get( "inkpar5" ), 26);
			spawn_hit_fx( x + 8*spr_dir , y + 50 - random_func(4, 36, true) , i2 )
        }
	}
	
  if spr_dir == 1 && hsp < 0 {
  	hsp *= -1
  }
  
  if spr_dir == -1 && hsp > 0 {
  	hsp *= -1
  }
}

}