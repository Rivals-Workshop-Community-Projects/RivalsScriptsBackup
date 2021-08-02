///

if attack == AT_FAIR or attack == AT_EXTRA_1  {
    
    vsp /= 1.05
    hsp /= 1.05
  
if attack == AT_EXTRA_1 {
	vsp /= 1.06
    hsp /= 1.06
    
    if player_id.move_cooldown[AT_DSPECIAL] == 28 {
    	create_hitbox(AT_EXTRA_1, hbox_num,x,y - floor(vsp*4))
    	create_hitbox(AT_EXTRA_1, hbox_num, x - floor(hsp*4),y)
    	sprite_index = sprite_get("danmaku2");
    	hsp /= 2
    	vsp /= 2
    }
    
    
}    
    if player_id.move_cooldown[AT_EXTRA_1] > 0 {
        image_xscale = 0
        image_yscale = 0
    } else {
        image_xscale = 30/200
        image_yscale = 30/200
    }
    
}


if attack == AT_USPECIAL{
    
    vsp += 0.4
    if hitbox_timer == 1 {
        player_id.vsp = -8
        vsp = -6 + hbox_num
    }
    
    if hitbox_timer > 20 {
        vsp = 0
    }
    
    if hitbox_timer == 20 {
         image_xscale *= 3
         image_yscale *= 3
        can_hit_self = true
        hit_priority = 9
		shake_camera (4,8)
	   spawn_hit_fx (x , y - 10 , 253)
	    spawn_hit_fx (x , y - 10 , 204)
	    sound_play(sound_get("exp1")); 
	   sound_play(asset_get("sfx_abyss_explosion")); 
	    player_id.move_cooldown[AT_USPECIAL] = 999
	    vsp = -4
	    hsp = 0
	}
	
	if hitbox_timer == 25 {
         image_xscale *= 2
         image_yscale *= 2
	}
    
}

if attack == AT_TAUNT {
	
	
	x = player_id.x
	y = player_id.y - 30
	
	
	    with asset_get("pHitBox") {
	
		nearbyhitbox = collision_circle( x-12, y-12, 34,other, true, true ) 
	
	    
	    if nearbyhitbox != noone && player_id != other.player_id  && hitpause != 15.225 && type == 2 && hit_priority != 0{
	    	
	        image_xscale *= 1.2
            image_yscale *= 1.2
        
	    	damage *= 2
	    	hitpause = 15.225
	    	transcendent = true
	    	hitbox_timer = 0
	    	can_hit_self = true
	    	kb_value += 5
	    	kb_scale += 0.4
            hitpause += 10
	    	hit_priority = 9
	    	
	    	with other {
	    	hitbox_timer = -60	
            sound_stop(sound_get("RI")); 
            sound_play(sound_get("RI")); 
            shake_camera(4, 6)
	    	}
	    	
            spawn_hit_fx (x - 10 + random_func(2,20,true), y  - random_func(2,40,true) , 302 )
	    	
			hsp *= -1
			vsp *= -1
			spr_dir *= -1
			//nearbyhitbox.grav = 0.2 + abs(nearbyhitbox.hsp/40)
	       	//nearbyhitbox.hitbox_timer = 1
			//nearbyhitbox.hit_priority = 0
			///nearbyhitbox.destroyed = true

	    }
	    
	}   
	
}

if attack == AT_NSPECIAL{
   
   if get_gameplay_time() % 3 == 0 {
   	spawn_hit_fx(x,y - 4,bulletfx)
   }	

	
  if player_id.crossout == 3  {
   	   
   	   if hitbox_timer < 20 && hit_priority == 1{
   	   	  vsp /= 1.05
   	   	  hsp /= 1.05
   	   }
   	   
       if hitbox_timer == 20 && hit_priority == 1{
   	      vsp = (player_id.crossy - y)/10
   	      hsp = (player_id.crossx - x)/10
   	      spawn_hit_fx(x -6*spr_dir , y  , 14)	
   	      sound_stop(sound_get("shot1"))
   	      sound_play(sound_get("shot1"),false,noone,0.6,1.3)
   	      hitbox_timer = -30
   	      hit_priority = 9
       }
   }
  
	
	   if  player_id.crossout == 3 && (vsp > 13 or vsp < -13 or hsp > 13 or hsp < -13) {
   	   	vsp /= 1.2
   	   	hsp /= 1.2
   	   }
   	   
}
	
if attack == AT_DSPECIAL && hbox_num == 3{
	 
	 spr_dir = 1
	if hitbox_timer < 15 {
		hsp /= 1.06
		vsp /= 1.06
	} else {
		spawn_hit_fx(x,y,powerfx)
		hsp = (player_id.x - x)/(17 - (hitbox_timer)/2)
		vsp = (player_id.y - 30 - y)/(17 - (hitbox_timer)/2)
	}
	
	if hitbox_timer == 30 {
		print(player_id.redP)
		sound_play(asset_get("sfx_coin_collect"),false,noone,0.7,1.4)
		player_id.redP += 10
		player_id.move_cooldown[AT_USPECIAL_GROUND] = 22
		hitbox_timer = 999
	}
	
	
	
}

if attack == AT_FSPECIAL{
	
if hitbox_timer % 5 == 0 {	
 spawn_hit_fx(x - 10 + random_func(1,20,true) , y - 20 + random_func(2,20,true) , 14)	
}

  if player_id.crossout == 3  {
  	
  	if hitbox_timer % 5 == 3 && hitbox_timer > 20{	
     spawn_hit_fx(x - 10 + random_func(1,20,true) , y - 20 + random_func(2,20,true) , 14)	
    }

       if hitbox_timer == 20 {
   	      vsp = (player_id.crossy - y)/10
   	      hsp = (player_id.crossx - x)/10
   	      spawn_hit_fx(x -6*spr_dir , y  , 302)	
   	      sound_stop(sound_get("shot1"))
   	      sound_play(sound_get("shot1"),false,noone,0.6,1.3)
   	      grav = 0
       }
       
       if  (vsp > 15 or vsp < -15 or hsp > 15 or hsp < -15) {
   	   	vsp /= 1.2
   	   	hsp /= 1.2
   	   }
   	   
  }

}
