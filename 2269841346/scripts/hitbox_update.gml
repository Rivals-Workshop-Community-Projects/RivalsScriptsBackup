///

    
if attack == AT_FSPECIAL && hbox_num < 4 {
	
	if has_rune("H") {
		if hitbox_timer == 9 {
			vsp *= -4
		}
		if hitbox_timer % 10 == 0 && hitbox_timer < 60{
			vsp *= -1.2
		}
	}
    hams = hit_fx_create( sprite_get( "hamburgers" ), 16);
    
    if hitbox_timer % 4 == 0 {
    			    spawn_hit_fx (x,y, hams)
    }
    
    if !free && (place_meeting(x, y + 2, asset_get("par_block"))) {
        destroyed = true
        if !has_rune("O") {
            	create_hitbox(AT_FSPECIAL , 5 , x , y );
        }
    }
    
    if !free {
     	sound_play(sound_get("slice"));
     	hsp /= 2
     	spawn_hit_fx(x,y,27)
    	y += 6
    }
}
    
if attack == AT_FSPECIAL && hbox_num == 5 {
	
var heal_player = instance_place(x, y, oPlayer)
if (heal_player != noone) {
	if  heal_player.url == player_id.url {
		tauntpar2 = hit_fx_create( sprite_get( "tauntpar2" ), 20);
  	    	sound_play(asset_get("sfx_ice_shieldup"));
			spawn_hit_fx( x  , y , 27 )
		if heal_player.batt < 5 {	
		heal_player.batt += 1
		}
		destroyed = 1
	}
   }


			
}

if attack == AT_DSPECIAL && (hbox_num == 1 or hbox_num == 3) {
	
	if has_rune("H") {
			if hitbox_timer < 10 { 
			vsp *= 1.2
			hsp *= 1.2
            } else {
            vsp /= 1.2	
            hsp /= 1.2
            }

	}
	
	
	    if hitbox_timer % 15 == 0 or hitbox_timer == 2 or (hitbox_timer > 45 && hitbox_timer % 3 == 0)  {
            sound_play(asset_get("sfx_ell_steam_hit"))
            spawn_hit_fx (x , y, 109)
        }
        
	if hitbox_timer > 60  {
	   spawn_hit_fx (x , y - 10 , 253)
	    spawn_hit_fx (x , y - 10 , 204)
	    sound_play(sound_get("exp2")); 
	   sound_play(asset_get("sfx_abyss_explosion")); 
	    create_hitbox(AT_DSPECIAL , 2 , x  , y );
	    destroyed = 1
	    shake_camera(2, 10)
	}
	

    if !free {
    	for (var i = 1; i <= 4; i++) can_hit[i] = (i == player);	
     hsp /= 2.5

      sound_play(sound_get("shell2"));
      vsp = floor(150 - hitbox_timer)/40 * -1
 	
    }
           
}

if attack == AT_DSPECIAL && hbox_num == 2 {
 can_hit_self = true   
}



if attack == AT_NSPECIAL && hbox_num == 1 {
    
    	if has_rune("H") {
    	  if x < player_id.x {
    	  	hsp += 0.1
    	  } else {
    	  	hsp -= 0.1
    	  }	
    	}
     if hitbox_timer % 2 == 0 {
     spawn_hit_fx (x  + 18 - random_func(1, 36, true), y - 40 , 108)
    }
    
 if hitbox_timer == 1 {
     shake_camera(2, 6)
     sound_play(asset_get("sfx_troupple_rumble"));
     sound_play(asset_get("sfx_ell_eject"));
 }   
  can_hit_self = true   
 
    
    
    if !free && (place_meeting(x, y + 2, asset_get("par_block"))) {
     destroyed = 1
     exp2 = hit_fx_create( sprite_get( "exp2" ), 42 );
     spawn_hit_fx (x,y, exp2)
     	   spawn_hit_fx (x - 100 , y + 20 , 253)
     	    spawn_hit_fx (x + 100 , y + 20 , 253)
     	    
     	    spawn_hit_fx (x - 50 , y + 20 , exp2)
     	    spawn_hit_fx (x + 50 , y + 20 , exp2) 
     	    
       sound_play(sound_get("RI")); 
        sound_play(sound_get("exp2")); 
	   sound_play(asset_get("sfx_abyss_explosion")); 

	 shake_camera(4, 12)
	 
	 	    create_hitbox(AT_NSPECIAL , 2 , x  , y - 20 );
	 	    	    create_hitbox(AT_NSPECIAL , 3 , x  , y + 20 );
	 	   
 }   
 
}

if attack == AT_NSPECIAL && (hbox_num == 2 or hbox_num == 3)  {

		can_hit_self = true

}

if attack == AT_DSPECIAL && hbox_num == 6 && !free {
	 create_hitbox(AT_DSPECIAL , 5 , x  , y - 16 );
	 destroyed = 1
}

if attack == AT_DSPECIAL && hbox_num == 5 {

if hitbox_timer == 1 && free {
	destroyed = true
}

if hitbox_timer == 1 && !free{
	y += 8 
	hitbox_timer = 2
}

}


if attack == AT_DTILT && hbox_num == 3 {
	if hitbox_timer > 20 {
		can_hit_self = true
	}
}

if attack == AT_DTILT && hbox_num == 4 {
	if hsp < 0 && spr_dir = 1 {
	   hsp *= -1	
	}
	
	
    if hsp > 0 && spr_dir = -1 {
	   hsp *= -1	
	}
	
	hsp *= 1.02
	vsp *= 1.02

     spawn_hit_fx (x  + 18 - random_func(1, 36, true), y - 40 , 108)
    
    
 
		can_hit_self = true

 
 
    
    if !free or (place_meeting(x + hsp, y + vsp, asset_get("par_block"))) {
     destroyed = 1
     exp2 = hit_fx_create( sprite_get( "exp2" ), 42 );
     	    spawn_hit_fx (x , y + 20 , exp2)

     	    

        sound_play(sound_get("exp2")); 

	 shake_camera(4, 12)
	 
	 	    create_hitbox(AT_NSPECIAL , 2 , x  , y - 20 );
    }

}


if attack == AT_DTILT && hbox_num == 5 {
	
		if hitbox_timer == 1 {
		spawn_hit_fx (x , y - 30 , 304)
	}
		player_id.move_cooldown[AT_FSPECIAL_2] = 20
	player_id.move_cooldown[AT_NSPECIAL_2] = 20
	if free {
		if hitbox_timer % 15 == 0 {
			spawn_hit_fx (x  + 18 - random_func(1, 36, true), y , 109)
			create_hitbox(AT_DTILT,4,x,y - 40)
			sound_play(asset_get("sfx_abyss_explosion")); 
		}
		vsp += 0.3
		hsp = 7*spr_dir
		image_index = 0
	}
	
	if !free {
		
		
	    if hitbox_timer % 10 == 5 {
			spawn_hit_fx (x  + 18 - random_func(1, 36, true), y , 109)
			create_hitbox(AT_FSPECIAL,5,x,y - 30)
				sound_play(asset_get("sfx_ell_eject")); 
		}
		
		if hsp == 6*spr_dir {
			sound_play(sound_get("bike3")); 
		}
		vsp = 0 
		hsp += 0.1*spr_dir
		image_index = 1
	}
	
	if hitbox_timer == 150 {
	  spawn_hit_fx (x  + 18 - random_func(1, 36, true), y , 113)	
	  vsp = -12
	  hsp *= -1
	  spr_dir*= -1
	  sound_play(sound_get("bike3")); 
	}
	
	if  (place_meeting(x + hsp, y, asset_get("par_block"))) {
     y -= 5
     vsp = 0
    }
	
}


if attack == AT_DTILT && hbox_num == 6 {
	player_id.move_cooldown[AT_FSPECIAL_2] = 20 
		player_id.move_cooldown[AT_NSPECIAL_2] = 20
		hsp = 3.5*spr_dir
	
	if hitbox_timer == 1 {
		spawn_hit_fx (x , y - 30 , 304)
	}
	if hitbox_timer < 60 {
		vsp = 3.7
	} else {
	   if hitbox_timer % 20 == 15 {
			spawn_hit_fx (x  + (66 - random_func(1, 36, true))*spr_dir, y - 30 , 109)
			create_hitbox(AT_DTILT,8,x,y - 30)
				sound_play(sound_get("gun3")); 
		}
		
			   if hitbox_timer % 20 == 5 {
			spawn_hit_fx (x  - (46 - random_func(1, 36, true))*spr_dir, y - 30 , 109)
			create_hitbox(AT_DTILT,7,x,y - 30)
				sound_play(sound_get("gun3"),false,noone,0.6); 
		}
		
		if vsp > -5{
		vsp -= 0.16
		}
	}
	
	   if hitbox_timer % 20 == 0 {
			spawn_hit_fx (x  + (66 - random_func(1, 36, true))*spr_dir, y - 30 , 109)
			create_hitbox(AT_DTILT,7,x,y - 30)
				sound_play(sound_get("gun3")); 
		}
		
		 if hitbox_timer % 20 == 10 {
			spawn_hit_fx (x  - (46 - random_func(1, 36, true))*spr_dir, y - 30 , 109)
			create_hitbox(AT_DTILT,8,x,y - 30)
				sound_play(sound_get("gun3"),false,noone,0.6); 
		}
	
}

if attack == AT_DTILT && hbox_num == 7 {
	
	if hsp < 0 && spr_dir = 1 {
	   hsp *= -1	
	}
	
	
    if hsp > 0 && spr_dir = -1 {
	   hsp *= -1	
	}
	
	
	var dattacks1 = hit_fx_create( sprite_get( "dattacks1" ), 24 );

	spawn_hit_fx( x , y, dattacks1 )
	
	spawn_hit_fx( x - 30, y, dattacks1 )
	
	spawn_hit_fx( x + 30, y, dattacks1 )
	
	
	
	
}

if attack == AT_DTILT && hbox_num == 8 {
	
	if hsp > 0 && spr_dir = 1 {
	   hsp *= -1	
	}
	
	
    if hsp < 0 && spr_dir = -1 {
	   hsp *= -1	
	}
	
	
	var dattacks1 = hit_fx_create( sprite_get( "dattacks1" ), 12 );

	spawn_hit_fx( x , y, dattacks1 )
	
	spawn_hit_fx( x - 30, y, dattacks1 )
	
	spawn_hit_fx( x + 30, y, dattacks1 )
	
	
	
	
}