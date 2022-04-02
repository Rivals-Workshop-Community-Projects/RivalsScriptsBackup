/// my_hitboxID.attack

switch attack {
    
  case AT_FSPECIAL :
  
      if (place_meeting(x, y , asset_get("par_block"))) or hitbox_timer >= 119{
        hitbox_timer = 999
        spawn_hit_fx(x,y+10,14)
	  	sound_play(asset_get("sfx_shovel_hit_med1"),false, noone, .6, 1.5)
	  	with player_id {
	  		set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_HSPEED, 0 );
            set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_VSPEED, -3 );
	  	}
     		create_hitbox(AT_DSPECIAL,2,x,y - 20)
      }
      
      if hitbox_timer < 90 {
       with (asset_get("pHitBox")) {
        if player_id == other.player_id {
          if attack == AT_DSPECIAL && hbox_num == 2 {
            var angle = point_direction(x, y, other.x + other.hsp*3, other.y + other.vsp*3);

            hsp += lengthdir_x(0.8, angle)
            vsp += lengthdir_y(0.8, angle)
            
            hsp = clamp(hsp, -7, 7);
            vsp = clamp(vsp, -7, 7);

          }
        }
       }
    
    
    if hitbox_timer % 2 == 0 {
    spawn_hit_fx(x + 10 - random_func(1,21,true) - hsp , y + 10 - random_func(1,21,true) - vsp, droplet  )
    }
    
    }
      
  break;    
  
  case AT_DSPECIAL :
     if hbox_num == 2 {
           if hitbox_timer > 10 {
            with (asset_get("pHitBox")) {
              if player_id != other.player_id { 
                     	       if type == 1 {
                     	       	detectionhb = collision_circle( x, y , 40, other, true, true ) 
                     	       	if detectionhb != noone {
                     	       		other.destroyed = true 
                     	       		sound_play(asset_get("sfx_waterhit_medium"),false, noone, 1, 1.4)
                     	       		shake_camera(2,2)
                     	       	}
                     	       }
              }
              
            }
           }
    
     
      
      
      if (place_meeting(x, y , asset_get("par_block"))) {
	  	vsp -= 0.3
      }
         if hitbox_timer < 5*6 - 1 { 
            image_index = hitbox_timer/5
         } else {
         	image_index = (get_gameplay_time()/5)%6 + 6
         }
         
         vsp /= 1.1
         hsp /= 1.1
         
         if hitbox_timer == 5*12 - 1 {
             hitbox_timer = 5*6
         }
        
        with player_id {
            if x > other.x {
                other.spr_dir = 1
            } else {
                other.spr_dir = -1
            }
            if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
                if attack == AT_DSPECIAL && window <= 2{
                	if has_rune("L") {
      	               if window_timer = 1 && window == 1 {
                        with other {
                            sound_stop(asset_get("sfx_orcane_dsmash"))
                            sound_play(asset_get("sfx_orcane_dsmash"),false,noone,1,1)
                            gone = spawn_hit_fx(x,y,aexp)
                            gone.spr_dir = spr_dir*-1
                        }
                       }
                       if window_timer == 2 && window == 1 {
                           with other {
                               create_hitbox(AT_DSPECIAL,3,x,y)
                           }
                       }
                    }
      
                    other.image_index = 12 + window_timer/(20/7)
                    if window_timer = 19 {
                        with other {
                            sound_stop(asset_get("sfx_orcane_dsmash"))
                            sound_play(asset_get("sfx_orcane_dsmash"),false,noone,1,1)
                            gone = spawn_hit_fx(x,y,aexp)
                            gone.spr_dir = spr_dir*-1
                        }
                    }
                    if window_timer == 1 && window == 2 {
                        with other {
                            create_hitbox(AT_DSPECIAL,3,x,y)
                            hitbox_timer = 1000 
                        }
                    }
                }
            }
        } 
     }
  break;     
  
}