//
///hlaser
plasma_safe = true
if attack == AT_DTILT {
if hbox_num == 1 {
    depth = -5
    if hitbox_timer == 1 {
      sound_play(sound_get("handout"),false,noone,.8,1)
    }
    
    if hitbox_timer < 10 {
      if hitbox_timer % 3 == 0 {    
      sprite_index = sprite_get("hand1")
      image_index = 2 
      }
      else {
      sprite_index = asset_get("empty_sprite")    
      }
      x += 10 - random_func(1,21,true)
      y += 10 - random_func(2,21,true)
    }
    
    if hitbox_timer == 10 {
      sprite_index = sprite_get("hand1")
      image_index = 2 
        sound_play(sound_get("lsready"),false,noone,.8,.95)
        vfx = spawn_hit_fx(x + 550*spr_dir,y,hbeam)
        vfx.depth = -6
    }
    
    
    if hitbox_timer > 12 + 4*10 {
      if hitbox_timer % 3 == 0 {    
      sprite_index = sprite_get("hand1")
      image_index = 2 
      }
      else {
      sprite_index = asset_get("empty_sprite")    
      }
      x += 10 - random_func(1,21,true)
      y += 10 - random_func(2,21,true)
    }
    
    if hitbox_timer == 11 + 4*10 {
         player_id.spr_dir = spr_dir
        shake_camera(4,4)
        create_hitbox(AT_DTILT,2,x + 600*spr_dir,y - 2)
        sound_play(sound_get("flash"),false,noone,.8,.6)
        sound_play(sound_get("lsfire"),false,noone,.8,.6)
    }
    
    if hitbox_timer == 30 + 4*10 {
       destroyed = true   
    }
  
}

///vlaser
if hbox_num == 3 {
    depth = -5
    if hitbox_timer == 1 {
      sound_play(sound_get("handout"),false,noone,.8,1)
    }
    
    if hitbox_timer < 10 {
      if hitbox_timer % 3 == 0 {    
      sprite_index = sprite_get("hand1")
      image_index = 1 
      }
      else {
      sprite_index = asset_get("empty_sprite")    
      }
      x += 10 - random_func(1,21,true)
      y += 10 - random_func(2,21,true)
    }
    
    if hitbox_timer == 10 {
      sprite_index = sprite_get("hand1")
      image_index = 1 
        sound_play(sound_get("lsready"),false,noone,.8,.95)
        vfx = spawn_hit_fx(x ,y + 550,vbeam)
        vfx.depth = -6
    }
    
    
    if hitbox_timer > 12 + 4*10 {
      if hitbox_timer % 3 == 0 {    
      sprite_index = sprite_get("hand1")
      image_index = 1 
      }
      else {
      sprite_index = asset_get("empty_sprite")    
      }
      x += 10 - random_func(1,21,true)
      y += 10 - random_func(2,21,true)
    }
    
    if hitbox_timer == 11 + 4*10 {
        shake_camera(4,4)
         player_id.spr_dir = spr_dir
        create_hitbox(AT_DTILT,4,x ,y + 600)
        sound_play(sound_get("flash"),false,noone,.8,.6)
        sound_play(sound_get("lsfire"),false,noone,.8,.6)
    }
    
    if hitbox_timer == 30 + 4*10 {
       destroyed = true   
    }
  
}
//fist
if hbox_num == 5 {
    depth = 0

    
    if hitbox_timer < 10 {
      if hitbox_timer % 3 == 0 {    
      sprite_index = sprite_get("hand1")
      image_index = 3
      }
      else {
      sprite_index = asset_get("empty_sprite")    
      }
      x += 10 - random_func(1,21,true)
      y += 10 - random_func(2,21,true)
    }
    
    if hitbox_timer < 45 {
      y -= floor(30 - hitbox_timer)/3
    }
    
    if hitbox_timer == 45 {
        hit_priority = 9
        vfx = spawn_hit_fx(x ,y - 20,302)
        vfx.pause = 6
    sound_play(sound_get("gunfire"),false,noone,.8,1)
      vsp = 8
    }
    
    if hitbox_timer > 45 && hitbox_timer%3 == 0{
       vfx2 = spawn_hit_fx(x + 30 - random_func(1,61,true),y,14)   
       vfx2.depth = 2
    }
    
    if (place_meeting(x, y - 30, asset_get("par_block"))) {
        sound_play(asset_get("sfx_abyss_explosion"),false,noone,1,1.2)
        sound_play(asset_get("sfx_blow_heavy1"),false,noone,1,.8)
        shake_camera(4,4)
        spawn_hit_fx(x ,y,13)  
        spawn_hit_fx(x + 60,y - 20,14)   
        spawn_hit_fx(x - 60,y - 20,14)   
        spawn_hit_fx(x + 80,y - 20,13)   
        spawn_hit_fx(x - 80,y - 20,13)   
         player_id.spr_dir = spr_dir
        create_hitbox(AT_DTILT,6,floor(x) - 8*spr_dir,floor(y) - 12)
        destroyed = true
    }
  
  
}

///point
if hbox_num == 7 {
    depth = 0
    
    if hitbox_timer < 20 or hitbox_timer > 60 {
      if hitbox_timer % 3 == 0 {    
      sprite_index = sprite_get("hand1")
      image_index = 4
      }
      else {
      sprite_index = asset_get("empty_sprite")    
      }
      x += 2 - random_func(1,5,true)
      y += 2 - random_func(2,5,true)
    }
    if hitbox_timer == 1{
        sound_play(asset_get("sfx_absa_boltcloud"),false,noone,1,1)
    }
    if hitbox_timer > 1 && hitbox_timer < 60 && hitbox_timer%5 == 0{ 
        x += 2 - random_func(1,5,true)
      y += 2 - random_func(2,5,true)
        sprite_index = sprite_get("hand1")
      image_index = 4
        vfx3 = spawn_hit_fx(x + 24*spr_dir,y - 14,305)  
        vfx3.pause = 6
    }
    
    if hitbox_timer == 60{
        vfx4 = spawn_hit_fx(x + 24*spr_dir,y - 14,306)  
        vfx4.pause = 6
        shake_camera(4,4)
        sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,1,1.2)
    }
    
     if hitbox_timer == 64{
          player_id.spr_dir = spr_dir
        create_hitbox(AT_DTILT,8,x + 24*spr_dir,y - 14)
    }
    
    if hitbox_timer == 80{
       destroyed = true    
    }
}
///grab
if hbox_num == 9 {
    if hitbox_timer%10 == 0 {
        player_id.spr_dir = spr_dir
        create_hitbox(AT_DTILT,10,x,y)
        sound_play(sound_get("handout"),false,noone,.6,.75)
    }
    if hitbox_timer = 50 or hitbox_timer = 90{
        y -= 460
        x -= 140*spr_dir
    }
}

if hbox_num == 10 {
    if hitbox_timer < 15 {
      if hitbox_timer % 3 == 0 {    
      sprite_index = sprite_get("hand1")
      image_index = 2
      }
      else {
      sprite_index = asset_get("empty_sprite")    
      }
      x += 2 - random_func(1,5,true)
      y += 2 - random_func(2,5,true)
    } else if hitbox_timer < 20 {
      sprite_index = sprite_get("hand1")
      image_index = 2
      x += 2 - random_func(1,5,true)
      y += 2 - random_func(2,5,true)
    } else if hitbox_timer < 26 {
      sprite_index = sprite_get("hand1")
      image_index = 3
    } else if hitbox_timer < 45 {
     if hitbox_timer % 3 == 0 {    
      sprite_index = sprite_get("hand1")
      image_index = 3
      }
      else {
      sprite_index = asset_get("empty_sprite")    
      }   
      x += 2 - random_func(1,5,true)
      y += 2 - random_func(2,5,true)
    }
    
    if hitbox_timer == 20 {
        hit_priority = 9
        sound_play(asset_get("sfx_blow_weak2"),false,noone,.8,1.4)
    }
    if hitbox_timer == 26 {
        hit_priority = 0
        image_xscale = 0
    }
    if hitbox_timer == 35 {
        destroyed = true
    }
}

if hbox_num == 11 {
    if hitbox_timer > 60 {
     if hitbox_timer % 3 == 0 {    
      sprite_index = sprite_get("hand1")
      image_index = 3
      }
      else {
      sprite_index = asset_get("empty_sprite")    
      }   
      x += 2 - random_func(1,5,true)
      y += 2 - random_func(2,5,true)
    } else {
    sprite_index = sprite_get("hand1")
     image_index = 3
    }
}
///gun
if hbox_num == 12 {
    y += floor( (player_id.hit_player_obj.y + 10 - y)/40)
     if hitbox_timer < 20 or hitbox_timer > 100 {
      if hitbox_timer % 3 == 0 {    
      sprite_index = sprite_get("hand1")
      image_index = 6
      }
      else {
      sprite_index = asset_get("empty_sprite")    
      }
    } else {
        sprite_index = sprite_get("hand1")
      image_index = 6
    } 
    
    if hitbox_timer > 30 && hitbox_timer%20 == 10 {
        shake_camera(4,4)
        player_id.spr_dir = spr_dir
        sound_play(sound_get("SGF"),false,noone,.75,1)
        y -= 20
        vfxg = spawn_hit_fx(x + 80*spr_dir,y - 10,304)   
        vfxg.pause = 5
        create_hitbox(AT_DTILT,13,x + 80*spr_dir,y - 10)
    }
    
}

if hbox_num == 13 {
    if hitbox_timer == 1 {
        vsp = (1 - random_func(1,3,true))/2
    }
    bulletfx = spawn_hit_fx(x ,y + 10 - random_func(1,21,true),13)
    bulletfx.spr_dir = 0.6
    bulletfx.image_yscale = 0.6
}


if hbox_num >= 20 && hbox_num <= 23{
    if hitbox_timer == 1 {
        bulletfx2 = spawn_hit_fx(x ,y, 302)
        bulletfx2.pause = 5
    }
if hbox_num == 20 {
  image_index = 0   
}
if hbox_num == 21 {
  image_index = 1   
}
if hbox_num == 22 {
  image_index = 2   
}
if hbox_num == 23 {
  image_index = 3   
}
}
///sword
if hbox_num == 14 {
    depth = -6
x += floor( (player_id.hit_player_obj.x - x - 10*spr_dir)/30)
    if hitbox_timer == 1 {
        vfx4 = spawn_hit_fx(x + 24*spr_dir,y - 14,306)  
        vfx4.pause = 3
        shake_camera(4,4)
    }
    
    if hitbox_timer < 20 {
      if hitbox_timer % 3 == 0 {    
      sprite_index = sprite_get("hand2")
      image_index = hitbox_timer%4 
      }
      else {
      sprite_index = asset_get("empty_sprite")    
      }
    }
    
    if hitbox_timer < 30 {
        x += floor( (player_id.hit_player_obj.x - x - 10*spr_dir)/20)
    }
    
     if hitbox_timer > 56 {
        y += 10   
     }
    if hitbox_timer < 60 {
        x += 10 - random_func(1,21,true)
    sprite_index = sprite_get("hand2")
      image_index = hitbox_timer%4 
      y -= floor(50 - hitbox_timer)/10
    }
    
    if hitbox_timer == 60 {
        sound_play(sound_get("slash"),false,noone,1,1)
        sound_play(sound_get("SpaceCut"),false,noone,1,1)
        x = floor(x)
        y = floor(y)
         player_id.spr_dir = spr_dir
        shake_camera(10,10)
        hit_priority = 9
        vfx = spawn_hit_fx(x ,y - 20,302)
        vfx.pause = 6
    create_hitbox(AT_DTILT,15,x +4*spr_dir,y + 400)    
    create_hitbox(AT_DTILT,16,x -6*spr_dir,y + 200)  
    create_hitbox(AT_DTILT,16,x -6*spr_dir,y )  
      vsp = 8
      destroyed = true 
      vfx = spawn_hit_fx(x +20*spr_dir ,y + 400,slash)
        vfx.depth = -6
    }
}

if hbox_num == 16 {
    spawn_hit_fx(x ,y + 100 - random_func(1,201,true),p2)
       hsp *= 1.02 + (abs(y)/10000)
}

if hbox_num == 17 {
    spawn_hit_fx(x ,y + 100 - random_func(1,201,true),p2)
    if hitbox_timer == 2 {
        spr_dir *= -1
    }
       hsp *= 1.02 + (abs(y)/10000)
}

///obamium 

if hbox_num == 18 {
    depth = -6
    with (pHitBox) {
    hitcollide = collision_circle( x, y , 44, other, true, true ) 
    if hitcollide != noone && type == 1 && player_id != other.player_id  {
    	with other {
    	    sound_stop(asset_get("sfx_ice_shatter_big"))
            sound_stop(asset_get("sfx_abyss_hex_hit"))
            sound_play(asset_get("sfx_ice_shatter_big"),false,noone,0.6,1)
            sound_play(asset_get("sfx_abyss_hex_hit"),false,noone,.5,1)
            destroyed = true
    	}
    }
    }
    
    if loopcount == 3 {
            sound_stop(asset_get("sfx_ice_shatter_big"))
            sound_stop(asset_get("sfx_abyss_hex_hit"))
            sound_play(asset_get("sfx_ice_shatter_big"),false,noone,0.6,1)
            sound_play(asset_get("sfx_abyss_hex_hit"),false,noone,.5,1)
            destroyed = true
    }
    depth = 0
   if hitbox_timer == 1 {
       vsp = -5
       vfx = spawn_hit_fx(x ,y - 20,302)
       vfx.pause = 5
   }  else if hitbox_timer < 60 {
       vsp /= 1.1
   }
      
      if hitbox_timer > 40 && image_index == 8 {
          sound_play(asset_get("sfx_boss_fireball"),false,noone,1,1.2)
          hitbox_timer = 20
          create_hitbox(AT_DTILT,19,x,y)
          loopcount += 1
      }
      
}

if hbox_num == 19 {
    depth = -6
    if hitbox_timer % 4 == 0 {
        spawn_hit_fx(x + 10 - random_func(2,21,true) ,y + 10 - random_func(1,21,true),p2)
    }
    if hitbox_timer == 1 {
        var angle = point_direction(x, y, player_id.hit_player_obj.x - 20 - random_func(2,41,true), player_id.hit_player_obj.y - 16 - random_func(1,40,true) );
            hsp = lengthdir_x(4, angle)
            vsp = lengthdir_y(4, angle)
    }
}
} else {
    sprite_index = sprite_get("hand1")
    hitbox_timer -= 1
    
    if player_id.phaseh <= 9 {
    if player_id.move_cooldown[AT_DAIR] <= 0 {
        image_index = 0 
    } else {
        image_index = 1
        x += 5 - random_func(1,11,true)
      y += 5 - random_func(2,11,true)
    }
    } else {
        image_index = (x/3)%5
        x += 10 - random_func(1, 21,true)
      y += 10 - random_func(2,21,true)
    }
    
    if hbox_num == 1 {
        
        if player_id.shieldg < 2 {
            destroyed = true 
        }
        spr_dir = 1
        x += floor((player_id.x - x - 80)/15)
        y += floor((player_id.y - y - 10)/15)
    }
    
    if hbox_num == 2 {
        if player_id.shieldg < 3 {
            destroyed = true 
        }
        spr_dir = -1
        x += floor((player_id.x - x + 80)/15)
        y += floor((player_id.y - y - 10)/15)
    }
    
    if hbox_num == 3 {
        if player_id.shieldg < 4 {
            destroyed = true 
        }
        spr_dir = 1
        x += floor((player_id.x - x - 46)/15)
        y += floor((player_id.y - y + 40)/15)
    }

    if hbox_num == 4 {
        if player_id.shieldg < 5 {
            destroyed = true 
        }
        spr_dir = -1
        x += floor((player_id.x - x + 46)/15)
        y += floor((player_id.y - y + 40)/15)
        
    }
    
    if hbox_num == 5 {
        if player_id.shieldg < 6 {
            destroyed = true 
        }
        spr_dir = 1
        x += floor((player_id.x - x - 40)/15)
        y += floor((player_id.y - y - 50)/15)
    }
    
    if hbox_num == 6 {
        if player_id.shieldg < 7 {
            destroyed = true 
        }
        spr_dir = -1
        x += floor((player_id.x - x + 40)/15)
        y += floor((player_id.y - y - 50)/15)
    }
    
}