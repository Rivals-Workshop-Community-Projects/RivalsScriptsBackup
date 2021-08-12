///

if attack == AT_USPECIAL && (hbox_num != 2) && (hbox_num < 5){
	hsp /= 1.1
	if hitbox_timer == 1 {
		hsp = player_id.hsp
	}
	
	
	if hitbox_timer == 6 {
		vsp = 0.4
	}
	
	if hitbox_timer > 6 {
    can_hit_self = true
    if hitbox_timer % 2 == 0 {
        create_hitbox (AT_USPECIAL, 2 , x, y)
    }
	} else {
		vsp /= 1.1
	}
	
	
    
    
    if player_id.attacking == true and player_id.attack == AT_USPECIAL && player_id.window == 1 {
    	destroyed = 1
    }
    
}






if attack == AT_USPECIAL && (hbox_num == 2 ){
	

    can_hit_self = true

    
}

if attack == AT_DSPECIAL && (hbox_num == 1 ){
    
      create_hitbox (AT_DSPECIAL, 2 , x, y)
      if hitbox_timer % 6 == 0 {
      spawn_hit_fx (x - 536*spr_dir,y, 194)
      }
    
}

if attack == AT_EXTRA_3 && (hbox_num == 1 ){
    
    if hitbox_timer > 10 && hitbox_timer % 10 == 0 && hitbox_timer < 31*10{
        image_index += 1
    }
    
     if hitbox_timer == 10*4 {
         sound_play(sound_get("uspec"),false,noone,0.2)
     }
     if hitbox_timer == 10*8 {
         sound_play(sound_get("uspec"),false,noone,0.2)
     }
     if hitbox_timer == 10*16 {
         sound_play(sound_get("uspec"),false,noone,0.2)
     }
     if hitbox_timer == 10*23 {
         sound_play(sound_get("hstrong"),false,noone,0.4)
     }
     if hitbox_timer == 10*24 {
         sound_play(sound_get("sansdie"))
     }     
     
     if hitbox_timer > 31*10 {
         hitbox_timer = 32*11
         	nearbyhitbox = collision_circle( x-12, y-12, 34, asset_get("pHitBox"), true, true ) 
	        if nearbyhitbox != noone && nearbyhitbox.hit_priority > 0{
	        		shake_camera(4, 10)
	        			destroyed = true	
	        			sound_play(sound_get("hstrong"),false,noone,1)
	        			sound_play(sound_get("sansdie"))
	        }  
     }
}

if attack == AT_EXTRA_3 && (hbox_num == 2){
    	x += (player_id.x - x) / 20
	y += (player_id.y - y - 40) / 20
	fall_through = true
 if hitbox_timer == 89 {
     destroyed = true
     sound_play(sound_get("fstrong2"))
 }
 
  if hitbox_timer % 10 == 0  && hitbox_timer < 50 {
      sound_play(sound_get("click"))
  }
	
    
}