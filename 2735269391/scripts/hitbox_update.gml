/// my_hitboxID.attack


with (pHitBox) {
    
    with player_id {
    	if state == PS_ATTACK_AIR {
		   upbcollide = collision_circle( x-12, y-12, 40 ,other, true, true ) 
	       if 	upbcollide != noone && other.type == 2 && attack == AT_USPECIAL && window > 2 && window_timer > 14 && other.hbox_num != 3 && other.hbox_num != 5 {
	           shake_camera(2,4)
	           old_vsp = 0
	           old_hsp = 0
	           hitstop = 2
	           hitpause = true 
	           window = 1
	           window_timer = 0 
	           vfx = spawn_hit_fx(other.x,other.y,302)
	           vfx.pause = 6
	           sound_play(asset_get("sfx_ice_shatter_big"))
	           other.vsp = 4
	           other.hitbox_timer = 1
	           if window < 2 {
	           	other.destroyed = true  
	           }
	       }
	       
	       
	       if upbcollide != noone && other.type == 2 && attack == AT_USPECIAL && window == 2 && window_timer > 2 && vsp > 0 && other.hbox_num != 3 && other.hbox_num != 5 {
	           shake_camera(4,6)
	           old_vsp = -6
	           old_hsp = 0
	           hitstop = 10
	           hitpause = true 
	           destroy_hitboxes()
		       state_timer = 200
		       sound_stop(asset_get("sfx_blow_medium3"))
	           sound_stop(asset_get("sfx_ice_shatter_big"))
		       sound_play(asset_get("sfx_blow_medium3"),false,noone,1,1)
	           sound_play(asset_get("sfx_ice_shatter_big"))
	           other.destroyed = true 
	       }
    	}
     }
     

    hitcollide = collision_circle( x, y , 44, other, true, true ) 

    if hitcollide != noone && type == 1 && player_id.char_height = 66.66 && attack == AT_FSPECIAL && other.type == 2 && other.attack != AT_FSPECIAL && other.hbox_num != 3 && other.hbox_num != 5 {
    
    	with player_id {
    		move_cooldown[AT_NSPECIAL] = 60
    		old_hsp = hsp
    		state_timer = 105
    		hitstop = 10
    		hitpause = true 
    		take_damage(player,-1,-10)
    	}
    	
    	with other {
    		spr_dir = player_id.spr_dir
    		create_hitbox(AT_FSPECIAL,2,floor(x),floor(y))
    	    shake_camera(4,4)
    	    spawn_hit_fx(x,y + 60,fx_ustrong)
            fx2 = spawn_hit_fx(x,y - 60,fx_ustrong)
            fx2.draw_angle = 180
            sound_play(asset_get("sfx_ice_shatter_big"))
            sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,1,1.4)
            destroyed = true
    	}
    	
    }
    
    if hitcollide != noone && type == 1 && player_id.char_height != 66.66 && other.type == 2 && other.hbox_num != 3 && other.hbox_num != 5 {
    	
    	with other {
    		player_id.move_cooldown[AT_DTHROW] = 180
    	    shake_camera(4,4)
    	    spawn_hit_fx(x,y + 60,fx_ustrong)
            fx2 = spawn_hit_fx(x,y - 60,fx_ustrong)
            fx2.draw_angle = 180
            sound_play(asset_get("sfx_ice_shatter_big"))
            sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,.6,1.4)
            sound_play(asset_get("sfx_boss_vortex_end"),false,noone,1,.4)
            sound_play(asset_get("sfx_boss_vortex_end"),false,noone,1,.4)
            destroyed = true
    	}
    	
    }
    
    
}
    
switch attack {
    
    
    case AT_FSPECIAL :
    
    if hitbox_timer < 10 {
    	hsp = 0.1*spr_dir 
    } else if hitbox_timer == 10 {
    	sound_play(asset_get("sfx_forsburn_consume_full"),false,noone,1,1)
    	hsp = 13*spr_dir
    }
     fx = spawn_hit_fx(x- hsp,y ,fx_fstrong )
                fx.spr_dir = .5
                fx.image_yscale = .5
                fx.draw_angle = random_func(1,360,true)
    
    break;
    
    
    case AT_USPECIAL :
    
    if hitbox_timer < 5 {
    	var angle = point_direction(x, y, player_id.hit_player_obj.x , player_id.hit_player_obj.y - 40);
           
            hsp = lengthdir_x(10, angle)
            vsp = lengthdir_y(10, angle)
    }
    
    if (hitbox_timer == 40 or player_id.attack == AT_DSPECIAL or x < 40 or x > room_width - 40){ 
        	ax = create_hitbox(AT_NSPECIAL,4,floor(x),floor(y) - 8)
        	ax.spr_dir = spr_dir*-1
            spawn_hit_fx(x,y + 60,fx_ustrong)
            fx2 = spawn_hit_fx(x,y - 60,fx_ustrong)
            fx2.draw_angle = 180
            sound_play(asset_get("sfx_ice_shatter_big"))
            hitbox_timer = 999 
     }
        
    if hsp > 0 {
    	spr_dir = 1
    } else {
    	spr_dir = -1
    }
    image_index = (hitbox_timer)%4
    
     fx = spawn_hit_fx(x- hsp,y ,fx_fstrong )
                fx.spr_dir = .4
                fx.image_yscale = .4
                fx.draw_angle = random_func(1,360,true)
                
                
    break;
    
    case AT_DSPECIAL :
    
    image_index = (hitbox_timer)%4
     with player_id {
		gotballback = collision_circle( x-12, y-12, 5 ,other, true, true ) 
	    if gotballback != noone && move_cooldown[AT_EXTRA_2] == 0 {
	        take_damage(player,-1,-10)
	        sound_play(asset_get("sfx_ice_shatter_big"))
	        other.destroyed = true 
	    }
     }
    
     fx = spawn_hit_fx(x- hsp,y ,fx_fstrong )
                fx.spr_dir = .3
                fx.image_yscale = .3
                fx.draw_angle = random_func(1,360,true)
                
                
    var angle = point_direction(x, y, player_id.x , player_id.y - 30);

            hsp = lengthdir_x(15, angle)
            vsp = lengthdir_y(15, angle)
    
    break;
    
  case AT_NSPECIAL :

  if player_id.attack == AT_DSPECIAL && hbox_num != 3 && hbox_num != 5 && player_id.window == 1 && player_id.window_timer == 1 && player_id.hitpause == 0 
  && (player_id.state == PS_ATTACK_GROUND or player_id.state == PS_ATTACK_AIR){
      vfx = spawn_hit_fx(x,y,302)
      vfx.pause = 6
      hitbox_timer = 1
      var angle = point_direction(x, y, player_id.x , player_id.y - 40);
           
            hsp = lengthdir_x(10, angle)
            vsp = lengthdir_y(10, angle)
      
            sound_play(asset_get("sfx_ice_shatter_big"))
            
        if hsp > 0 {
            spr_dir = 1
        }  else {
            spr_dir = -1
        }
            
  }
  
  if player_id.attack == AT_NSPECIAL && hbox_num != 3 && hbox_num != 5 && player_id.window == 2 && player_id.window_timer == 11 && player_id.hitpause == 0
     && (player_id.state == PS_ATTACK_GROUND or player_id.state == PS_ATTACK_AIR) {
        create_hitbox(AT_DSPECIAL,2,floor(x),floor(y))
      spawn_hit_fx(x,y + 60,fx_ustrong)
            fx2 = spawn_hit_fx(x,y - 60,fx_ustrong)
            fx2.draw_angle = 180
  destroyed = true 
   sound_play(asset_get("sfx_ice_shatter_big"))
            sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,1,1.2)
  }

           
            
  player_id.move_cooldown[AT_EXTRA_1] = 15
  if pausing {
      hitbox_timer --
      pausing -- 
      x -= hsp 
      y -= vsp
  }
    transcendent = true
    if hbox_num <= 2 {
        image_index = (hitbox_timer/(4 - hbox_num))%4
        
        if hitbox_timer == 60 or player_id.attack == AT_DSPECIAL or x < 40 or x > room_width - 40{
        	ax = create_hitbox(AT_NSPECIAL,4,floor(x),floor(y) - 8)
        	ax.spr_dir = spr_dir*-1
            spawn_hit_fx(x,y + 60,fx_ustrong)
            fx2 = spawn_hit_fx(x,y - 60,fx_ustrong)
            fx2.draw_angle = 180
            sound_play(asset_get("sfx_ice_shatter_big"))
            hitbox_timer = 999 
        }
        
        if hbox_num == 1 {
            if hitbox_timer%5 == 0 && !pausing {
                fx = spawn_hit_fx(x- hsp,y ,fx_fstrong )
                fx.spr_dir = .3
                fx.image_yscale = .3
                fx.draw_angle = random_func(1,360,true)
            }
        }
        
        if hbox_num == 2 {
            fx = spawn_hit_fx(x- hsp,y ,fx_fstrong )
                fx.spr_dir = .3
                fx.image_yscale = .3
                fx.draw_angle = random_func(1,360,true)
                
            if hitbox_timer%4 == 0 && !pausing {
                
                create_hitbox(AT_NSPECIAL,3,floor(x),floor(y))
            }
        }
    }
    
    if hbox_num == 4 {
        
        if hitbox_timer < 25 && !pausing {
            hsp /= 1.07
            vsp /= 1.07
        }
        
        if y > room_height or y < 10 or x > room_width or x < 10 {
            destroyed = true 
   sound_play(asset_get("sfx_ice_shatter_big"))
            sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,1,1.2)
            
        }
        
      image_index = 4 + (hitbox_timer/(2))%8
      
      if hitbox_timer%4 == 0 && !pausing {
                create_hitbox(AT_NSPECIAL,5,floor(x),floor(y))
        }
  }
  
  break;     
  
  
      
}