if state == PS_RESPAWN
{
  if state_timer > 90 {    
  spawn_hit_fx(x - 15 + random_func(1,31,true), y + 40 - random_func(2,21,true),droplet)
  }
  
  if state_timer == 60 {
      sound_play(asset_get("sfx_boss_vortex_end"),false,noone,1,1.1)
      waking = spawn_hit_fx(x,y - 46,awaken)
      waking.depth = -15
  }
  
  if state_timer == 75 {
      sound_play(asset_get("sfx_kragg_rock_pillar"),false,noone,1,.8)
  }
  
  if state_timer == 90 {
      vfx = spawn_hit_fx(x,y-40,306)
      vfx.pause = 8
      sound_play(asset_get("sfx_kragg_rock_shatter"),false,noone,1,.8)
  }
}

if get_gameplay_time() < 3 {
    waking = spawn_hit_fx(x,y - 46,awaken)
    waking.depth = -15
} else if get_gameplay_time() == 15 {
    sound_stop(asset_get("sfx_kragg_rock_pillar"))
    sound_play(asset_get("sfx_kragg_rock_pillar"),false,noone,1,.8)
} else if get_gameplay_time() == 30 {
    vfx = spawn_hit_fx(x,y-40,306)
      vfx.pause = 8
    sound_stop(asset_get("sfx_kragg_rock_shatter"))
    sound_play(asset_get("sfx_kragg_rock_shatter"),false,noone,1,.8)
}

if move_cooldown[AT_EXTRA_2] > 0 {
    with (asset_get("pHitBox")) {
        if player_id == other.id {
          if attack == AT_DSPECIAL && hbox_num == 2 {
            var angle = point_direction(x, y, other.targeting.x + other.targeting.hsp + other.targeting.old_hsp, other.targeting.y - 30 + other.targeting.vsp + other.targeting.old_vsp );

            hsp += lengthdir_x(0.8, angle)
            vsp += lengthdir_y(0.8, angle)
            

          }
        }
     }
}
with asset_get("oPlayer") {
    
   if "Tengia_pain_id" in self {
       
       //print(Tengia_pain)
       if Tengia_pain_id == other {
           
       if Tengia_pain_time > 0 {
           if Tengia_pain_time < 10 {
               with other {
                 spawn_hit_fx((other.x + x)/2 - 35 + random_func(14,71,true), (other.y + y)/2 - 20 - random_func(13,21,true),droplet)
               spawn_hit_fx((other.x + x*2)/3 - 35 + random_func(16,71,true), (other.y + y*2)/3 - 20  - random_func(15,21,true),droplet)
               spawn_hit_fx((other.x*2 + x)/3 - 35 + random_func(18,71,true), (other.y*2 + y)/3 - 20  - random_func(19,21,true),droplet)
               spawn_hit_fx((other.x + x*6)/7 - 35 + random_func(12,71,true), (other.y + y*6)/7 - 20 - random_func(10,21,true),droplet)
               spawn_hit_fx((other.x*6 + x)/7 - 35 + random_func(13,71,true), (other.y*6 + y)/7 - 20 - random_func(11,21,true),droplet)
               
               spawn_hit_fx((other.x + x)/2 - 35 + random_func(4,71,true), (other.y + y)/2 - 20 - random_func(3,21,true),droplet)
               spawn_hit_fx((other.x + x*2)/3 - 35 + random_func(6,71,true), (other.y + y*2)/3 - 20  - random_func(5,21,true),droplet)
               spawn_hit_fx((other.x*2 + x)/3 - 35 + random_func(8,71,true), (other.y*2 + y)/3 - 20  - random_func(9,21,true),droplet)
               spawn_hit_fx((other.x + x*6)/7 - 35 + random_func(11,71,true), (other.y + y*6)/7 - 20 - random_func(10,21,true),droplet)
               spawn_hit_fx((other.x*6 + x)/7 - 35 + random_func(12,71,true), (other.y*6 + y)/7 - 20 - random_func(13,21,true),droplet)
               }
           }
           
           with Tengia_pain_id {
               bfx = spawn_hit_fx(other.x - 35 + random_func(1,71,true), other.y - 90 - random_func(2,31,true),droplet)
           }
           if char_height != other.char_height {
               if Tengia_pain_time%45 == 30 {
                   take_damage(player,-1,1)
                   sound_stop(asset_get("sfx_blow_weak1"))
                   sound_play(asset_get("sfx_blow_weak1"),false,noone,.6,.55 - Tengia_pain_time/900)
                }else if Tengia_pain_time%45 == 20 {
                   sound_stop(asset_get("sfx_blow_weak1"))
                   sound_play(asset_get("sfx_blow_weak1"),false,noone,.45,.5 - Tengia_pain_time/900)
                }
  
               } else {
                   if Tengia_pain_time%60 == 20 {
                       take_damage(player,-1,-1)
                       sound_play(asset_get("sfx_waterwarp_start"),false, noone, .7, 1.3 - Tengia_pain_time/900)
                   }
               }
           Tengia_pain_time -= 1
       }
       
       if ((Tengia_pain_time <= 0) or state == PS_DEAD or state == PS_RESPAWN) && Tengia_pain != 0 {
               	sound_play(asset_get("sfx_waterhit_heavy2"),false, noone, 1, .7)
                sound_play(asset_get("sfx_boss_vortex_end"),false, noone, .8, .8)
           shake_camera(6,6)
           if state != PS_DEAD && state != PS_RESPAWN {
           take_damage(player,-1,Tengia_pain)
           }
           with other {
           fx_s = hit_fx_create( sprite_get( "fx_snap" ), 20 );       
           spawn_hit_fx(other.x,other.y - 120, fx_s)
           take_damage(player,-1,floor(other.Tengia_pain*-0.35)) 
           fxds = spawn_hit_fx(x, y - 20, fx_ds)
           fxds.depth = -15
           set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_HSPEED, 0 );
           set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_VSPEED, -2 );
           create_hitbox(AT_DSPECIAL,2,floor(x),floor(y) - 20)
           
           if has_rune("O") == true {
               vfx = spawn_hit_fx(floor(other.x),floor(other.y),306)
               vfx.pause = 8
             with other { if get_player_damage(player) >= 66 { set_player_damage(player,666) y = room_height + 666} }
           }
           
           }
           
           
           
           Tengia_pain = 0
           Tengia_pain_time = 0
           
           
        }
       }
   }
}

if move_cooldown[AT_NSPECIAL_2] == 0 {
with oPlayer if (activated_kill_effect) {
  if hit_player_obj == other {
  	with other {
  	    sound_play(asset_get("sfx_ori_energyhit_heavy"),false, noone, 1, 1.2)
  		sound_play(asset_get("sfx_absa_kickhit"),false, noone, 1, .8)
        sound_play(asset_get("sfx_boss_vortex_end"),false, noone, 1, 1.2)
        sound_play(asset_get("sfx_boss_vortex_end"),false, noone, 1, .8)
        move_cooldown[AT_NSPECIAL_2] = 120
  	}
  }
}
}