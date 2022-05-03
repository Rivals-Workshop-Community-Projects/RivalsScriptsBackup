   


  if dorito_owner.attack == AT_DSPECIAL && dorito_num!= 3 && dorito_num!= 5 && dorito_owner.window == 1 && dorito_owner.window_timer == 1 && dorito_owner.hitpause == 0 
  && (dorito_owner.state == PS_ATTACK_GROUND or dorito_owner.state == PS_ATTACK_AIR){
      spawn_hit_fx(x,y,302)
      dorito_lifetime = 1
      var angle = point_direction(x, y, dorito_owner.x , dorito_owner.y - 40);
           
            dorito_hsp = lengthdir_x(10, angle)
            dorito_vsp = lengthdir_y(10, angle)
      
            sound_play(asset_get("sfx_ice_shatter_big"))
            sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,1,1.2)
            
        if dorito_hsp > 0 {
            spr_dir = 1
        }  else {
            spr_dir = -1
        }
            
  }
  
  if dorito_owner.attack == AT_NSPECIAL && dorito_num!= 3 && dorito_num!= 5 && dorito_owner.window == 2 && dorito_owner.window_timer == 11 && dorito_owner.hitpause == 0
     && (dorito_owner.state == PS_ATTACK_GROUND or dorito_owner.state == PS_ATTACK_AIR) {
        create_hitbox(AT_DSPECIAL,2,floor(x),floor(y))
      spawn_hit_fx(x,y + 60,fx_ustrong)
            fx2 = spawn_hit_fx(x,y - 60,fx_ustrong)
            fx2.draw_angle = 180
  destroyed = true 
   sound_play(asset_get("sfx_ice_shatter_big"))
            sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,1,1.2)
  }

           
            
  dorito_owner.move_cooldown[AT_EXTRA_1] = 15
  if pausing {
      dorito_lifetime --
      pausing -- 
      x -= dorito_hsp 
      y -= dorito_vsp
  }
    transcendent = true
    if dorito_num<= 2 {
        image_index = (dorito_lifetime/(4 - hbox_num))%4
        
        if dorito_lifetime == 60 or dorito_owner.attack == AT_DSPECIAL or x < 40 or x > room_width - 40{
        	ax = create_hitbox(AT_NSPECIAL,4,floor(x),floor(y) - 8)
        	ax.spr_dir = spr_dir*-1
            spawn_hit_fx(x,y + 60,fx_ustrong)
            fx2 = spawn_hit_fx(x,y - 60,fx_ustrong)
            fx2.draw_angle = 180
            sound_play(asset_get("sfx_ice_shatter_big"))
            dorito_lifetime = 999 
        }
        
        if dorito_num== 1 {
            if dorito_lifetime%5 == 0 && !pausing {
                fx = spawn_hit_fx(x- dorito_hsp,y ,fx_fstrong )
                fx.spr_dir = .3
                fx.image_yscale = .3
                fx.draw_angle = random_func(1,360,true)
            }
        }
        
        if dorito_num== 2 {
            fx = spawn_hit_fx(x- dorito_hsp,y ,fx_fstrong )
                fx.spr_dir = .3
                fx.image_yscale = .3
                fx.draw_angle = random_func(1,360,true)
                
            if dorito_lifetime%4 == 0 && !pausing {
                
                create_hitbox(AT_NSPECIAL,3,floor(x),floor(y))
            }
        }
    }
    
    if dorito_num== 4 {
        
        if dorito_lifetime < 25 && !pausing {
            dorito_hsp /= 1.07
            dorito_vsp /= 1.07
        }
        
        if y > room_height or y < 10 or x > room_width or x < 10 {
            destroyed = true 
   sound_play(asset_get("sfx_ice_shatter_big"))
            sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,1,1.2)
            
        }
        
      image_index = 4 + (dorito_lifetime/(2))%8
      
      if dorito_lifetime%4 == 0 && !pausing {
                create_hitbox(AT_NSPECIAL,5,floor(x),floor(y))
        }
  }
  
