//sound_play(asset_get("sfx_birdflap"));

if attack == AT_DSTRONG && hbox_num > 4 {
    af = hit_fx_create( sprite_get( "af" ), 15);
    if get_gameplay_time() % 1 == 0 && hitbox_timer < 30{
		spawn_hit_fx (x,y + 40, af)
	}
}

if attack == AT_DSPECIAL && hbox_num == 3 {

if hitbox_timer == 1 {
   sjump = 0    
}

if hitbox_timer < 599 {
  player_id.scuttle = 1
}

if hitbox_timer == 599 {
    player_id.scuttle = 0
}

vsp /= 1.1
hsp /= 1.1

if hitbox_timer % 60 == 0 {
    sound_play(asset_get("sfx_jumpair"));
    spr_dir *= -1
    vsp = -4
    y -= 10
    hsp = 6*spr_dir*-1
    sjump += 1
    if sjump >= 5 {
      sound_play(sound_get("CCloop"));  
    }
}

if hitbox_timer % 60 < 10 {
  vsp += 0.4   
}

if sjump >= 5 {
   if hitbox_timer % 4 == 0 {
       spawn_hit_fx (x,y,302)
   } 
} 

var heal_player = instance_place(x, y, oPlayer)
if (heal_player != noone) && heal_player.vsp > 0 {
	
	if  heal_player.url != player_id.url  {
  	    	sound_play(sound_get("nspecial_egghit"));
			spawn_hit_fx( x  , y , 109 )
			player_id.scuttle = -60
            heal_player.vsp = -8
            destroyed = true
	}
	
	if  heal_player.url == player_id.url {
	    if sjump < 5 {
  	    	sound_play(sound_get("nspecial_egghit"));
	    }
			spawn_hit_fx( x  , y , 109 )
            player_id.scuttle = -60
            heal_player.vsp = -8
            destroyed = true
            heal_player.mariospeed += 3 + 6*sjump*(sjump/4)
            
            if sjump >= 5 {
              	create_hitbox(AT_DSPECIAL , 4 , x , y - 10 );  
              	sound_play(asset_get("sfx_abyss_explosion"));  
              	spawn_hit_fx( x  , y , 306 )
            }
	}
   }
   

}
	
	
if attack == AT_DSPECIAL && hbox_num == 4 {	
   if hitbox_timer % 30 == 0 { 
      sound_play(sound_get("CCloop"));    
   }
   
   if hitbox_timer == 299 {
       
    spawn_hit_fx (x,y, 156)   
   }
    
    
with oPlayer{
	if clone continue
	var heal_player = instance_place(x, y, other)
	if (heal_player != noone) {
	
    	if  url != other.player_id.url {
			x += 4 * (1 - (get_gameplay_time()%3))        
             if other.hitbox_timer % 5 == 0 {
              sound_play(asset_get("sfx_ori_energyhit_weak"));
              take_damage(player, -1 , 1 )
            }
            
        }
        
	    if  url == other.player_id.url {
	        if other.hitbox_timer % 4 == 0 {
  	    		mariospeed += 1
	        }
	    }
   }    
    
}
}    

