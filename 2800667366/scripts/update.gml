//


followArray = array_create(2,-4);
with (oPlayer) if (state != PS_DEAD) for (var i = 0; i<array_length_1d(other.followArray); ++i) 
if (other.followArray[i] == -4) {other.followArray[i] = id; break;}




  music_play_file("music")
  
  with (pHitBox) {
      if "warptime" not in self {
          warptime = 0
      } else {
          if warptime = 10 {
              destroyed = true 
              sound_play(asset_get("sfx_clairen_hit_strong"),false,noone,1,1)
          }
      }
           if x + hsp > room_width/2 + 600 {
              x = room_width/2 - 600
              warptime++
          }
          
           if x + hsp < room_width/2 - 600 {
              x = room_width/2 + 600
              warptime++
          }
          
          if y + vsp > room_height/2 + 500 {
              y = room_height/2 - 300
              warptime++
          }
          
          if y + vsp < room_height/2 - 300 {
              y = room_height/2 + 500
              warptime++
          }   
  }
    
  with oPlayer {
      if state_cat == SC_HITSTUN && !hitpause 
      && y < room_height/2 - 120 + 120 
      && y > room_height/2 - 120 - 100 
      && x < room_width/2 + 110 
      && x > room_width/2 - 110 {
          other.nearbyp = self
      }
  
  }
   
   
   if nearbyp != 0 {
       
       
       spawnhitbox = 1
       with nearbyp {
           if get_player_damage(player) < 999 {
             spawn_hit_fx(x, y - 30, 67)
             sound_play(asset_get("sfx_clairen_hit_strong"),false,noone,1,1)
             take_damage(player,-1,1)
           } else {
              spawn_hit_fx(x, y - 30, 67)
             sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,1,1)
             sound_play(asset_get("sfx_boss_vortex_end"),false,noone,1,.5)
             sound_play(asset_get("sfx_boss_vortex_end"),false,noone,1,1)
             take_damage(player,-1,999) 
             spawn_hit_fx(x ,y - 40 ,306 )  
             spawn_hit_fx(x ,y - 40 ,305 )  
             sucked = 90
             other.finish = 90
           }
       }
       
       nearbyp = 0
   }


with oPlayer {
    

   if state == PS_DEAD {
        instance_destroy(self)
    }
    
     if "sucked" in self {
         if sucked > 0 {
             if get_gameplay_time() % 4 == 0 {
                 sound_play(asset_get("sfx_boss_vortex_end"),false,noone,.4,1.6)
                 shake_camera(4,4)
                fx =  spawn_hit_fx(x - 20 + random_func(1,41,true),y - 40 + random_func(2,41,true),67 )  
                fx.depth = 12
             }
             hitpause = true 
             hitstop = 5
             sucked --
             invincible = true 
             invince_time = 5
             hsp = 0
             vsp = 0
             old_hsp = 0
             old_vsp = 0
             
             if sucked < 60 {
             x += floor((room_width/2 - x)/20) - 10 + random_func(1,21,true)
             y += floor((room_height/2 - 110 - y)/20) - 10 + random_func(2,21,true)
             } else {
             
             }
             
             if sucked == 1 {
                 sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,1,1)
             sound_play(asset_get("sfx_boss_vortex_end"),false,noone,1,.5)
             sound_play(asset_get("sfx_boss_vortex_end"),false,noone,1,1)
             spawn_hit_fx(x ,y - 40 ,306 )  
             spawn_hit_fx(x ,y - 40 ,305 )    
                 y = 9999
                 sucked = -1
             }
         }
     } else {
         warptime = 0
         sucked = 0
     }
    
    should_make_shockwave = false 
   if state_cat == SC_HITSTUN {
       if hitpause {
           take_damage(player,-1,1) 
           warptime = 0
       }
      //if get_gameplay_time() % 2 == 0 state_timer -= 1
      if !free && abs(hsp) > 12 {
          old_vsp = -10
          vsp = - 10
          state = PS_HITSTUN
      }
   }  else {
       warptime = 0
   }
   
   if x + hsp > room_width/2 + 600 {
       if state_cat == SC_HITSTUN {
           warptime += 2
           state_timer /= max(1,floor(10/warptime))
           take_damage(player,-1,10)
       }
       sound_play(asset_get("sfx_ori_bash_hit"))
       sound_play(asset_get("sfx_buzzsaw_hit"),false,noone,1,.6)
       shake_camera(4,6)
        spawn_hit_fx(x,y - 30, 304)
       x = room_width/2 - 600
       if warptime <= 6 {
       if abs(hsp) < 50 hsp *= 1.2
       if abs(vsp) < 50 vsp *= 1.2
       }
       spawn_hit_fx(x,y - 30, 306)
       take_damage(player,-1,10)
       djumps = 0
   }
   
    if x + hsp < room_width/2 - 600 {
       if state_cat == SC_HITSTUN {
           warptime += 2
           state_timer /= max(1,floor(10/warptime))
           take_damage(player,-1,10)
       }
       sound_play(asset_get("sfx_ori_bash_hit"))
       sound_play(asset_get("sfx_buzzsaw_hit"),false,noone,1,.6)
       shake_camera(4,6)
        spawn_hit_fx(x,y - 30, 304)
       x = room_width/2 + 600
       if warptime <= 6 {
       if abs(hsp) < 50 hsp *= 1.2
       if abs(vsp) < 50 vsp *= 1.2
       }
       spawn_hit_fx(x,y - 30, 306)
       take_damage(player,-1,10)
       djumps = 0
   }
   
   if y + vsp > room_height/2 + 500 && sucked != -1 {
       if state_cat == SC_HITSTUN {
           warptime += 2
           state_timer /= max(1,floor(10/warptime))
           take_damage(player,-1,10)
       }
       sound_play(asset_get("sfx_ori_bash_hit"))
       sound_play(asset_get("sfx_buzzsaw_hit"),false,noone,1,.6)
       shake_camera(4,6)
        spawn_hit_fx(x,y - 30, 304)
       y = room_height/2 - 300
       if warptime <= 6 {
       if abs(hsp) < 50 hsp *= 1.2
       if abs(vsp) < 50 vsp *= 1.2
       }
       spawn_hit_fx(x,y - 30, 306)
       take_damage(player,-1,10)
       djumps = 0
   }
   
   if y + vsp < room_height/2 - 300 {
       if state_cat == SC_HITSTUN {
           warptime += 2
           state_timer /= max(1,floor(10/warptime))
           take_damage(player,-1,10)
       }
       sound_play(asset_get("sfx_ori_bash_hit"))
       sound_play(asset_get("sfx_buzzsaw_hit"),false,noone,1,.6)
       shake_camera(4,6)
        spawn_hit_fx(x,y - 30, 304)
       y = room_height/2 + 500
       if warptime <= 6 {
       if abs(hsp) < 50 hsp *= 1.2
       if abs(vsp) < 50 vsp *= 1.2
       }
       spawn_hit_fx(x,y - 30, 306)
       take_damage(player,-1,10)
       djumps = 0
   }
   
   if get_gameplay_time() == 2 {
         take_damage(player,-1,-666)
   }
    

}


    with obj_article1 do_the_thing();
    with obj_article2 do_the_thing();
    with obj_article3 do_the_thing();
    with obj_article_solid do_the_thing();
    with obj_article_platform do_the_thing();


#define do_the_thing
    if x  > room_width/2 + 600 {
          x = room_width/2 - 599
      }
      
       if x  < room_width/2 - 600 {
          x = room_width/2 + 599
      }
      
      if y  > room_height/2 + 500 {
          y = room_height/2 - 299
      }
      
      if y < room_height/2 - 300 {
          y = room_height/2 + 299
      }   
    
    
