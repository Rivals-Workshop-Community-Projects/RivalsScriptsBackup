//


if state == PS_RESPAWN {
    invince_time = 120
    if state_timer == 90 - 15*6  {
        sound_stop(asset_get("sfx_zetter_shine_charged"))
        sound_play(asset_get("sfx_zetter_shine_charged"))
    }
    
    if state_timer == 90 - 15*6 + 6*6 {
        sound_stop(asset_get("sfx_ori_ustrong_launch"))
        sound_play(asset_get("sfx_ori_ustrong_launch"))
    }
    
      if state_timer == 90 - 15*6 + 9*6 {
      shake_camera(6,6)
      sound_stop(asset_get("sfx_ori_energyhit_medium"))
      sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,1,.6)
      }
      
     if  state_timer > (90 - 15*6) && state_timer < 90 {
         visible = true
     sprite_index = sprite_get("intro")
     image_index = (state_timer - (90 - 15*6))/6
     } else {
         
     }
     
     if  state_timer > (90 - 15*6 + 9*6 )  {
         spawn_hit_fx(x,y,res)
     } else {
         draw_indicator = false
     }
}

if get_gameplay_time() < 15*6 {
    sprite_index = sprite_get("intro")
    image_index = state_timer/6
    draw_indicator = false
    if get_gameplay_time() == 1 {
        sound_stop(asset_get("sfx_zetter_shine_charged"))
        sound_play(asset_get("sfx_zetter_shine_charged"))
    }
    if get_gameplay_time() == 6*6 {
        sound_stop(asset_get("sfx_ori_ustrong_launch"))
        sound_play(asset_get("sfx_ori_ustrong_launch"))
    }
    
    if get_gameplay_time() == 9*6 {
        shake_camera(6,6)
        sound_stop(asset_get("sfx_ori_energyhit_medium"))
        sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,1,.6)
    }
    
}

if state == PS_PRATFALL {
    sprite_index = sprite_get("doublejump")
    image_index = (state_timer/4)%3 
}

if state == PS_PRATLAND {
    sprite_index = sprite_get("landinglag")
    image_index =  min(3,state_timer/4)
}

if hitpause or state_cat == SC_HITSTUN {
    if side != 0 spr_dir = side
}
if state != PS_PARRY && state != PS_TECH_FORWARD && state != PS_TECH_BACKWARD
&& state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD && state != PS_AIR_DODGE && state != PS_TECH_GROUND && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR
&& get_gameplay_time() > 120 && state_cat != SC_HITSTUN && !hitpause{
draw_y = 9999
} else {

    if state == PS_PARRY or state == PS_AIR_DODGE {
    spr_dir = side
    }
}

if state_timer > 5 {
    thrusting = 0
} 

if state_timer > 12 {
    twirl = 0
}

switch state {
    case PS_CROUCH:
    if state_timer == 1 {
        user_event(1)
    }
    if (side == -1 && right_down) or (side == 1 && left_down) {
    sprite_index = sprite_get("moonwalk")
    image_index = state_timer/6 
    hsp = -1.5*side
    if state_timer%(6*4) == 0 {
        sound_play(asset_get("sfx_dash_start"),false,noone,1,.8)
    }
    
    if state_timer % 3 == 0 {
    spawn_hit_fx(x + random_func(1,20,true)*side, y - 10 + random_func(2,20,true),p1)
    spawn_hit_fx(x + random_func(3,20,true)*side, y - 10 + random_func(4,20,true),p2)
    }
    
    }
    
    if (side == 1 && right_down) or (side == -1 && left_down)  {
    sprite_index = sprite_get("walk")
    image_index = state_timer/7
     hsp = 2*side
    if floor(state_timer%(7*3)) == 0 {
        sound_play(asset_get("sfx_land"),false,noone,.7,1.4)
    }
    
    if state_timer % 3 == 0 {
    spawn_hit_fx(x - random_func(1,20,true)*side, y - 10 + random_func(2,20,true),p1)
    spawn_hit_fx(x - random_func(3,20,true)*side, y - 10 + random_func(4,20,true),p2)
    }
    
    }
    
    break;
    
    case PS_DASH_STOP:
    case PS_DASH_TURN :
    case PS_DASH_START :
    case PS_DASH :
    case PS_WALK_TURN :
    if taunt_pressed {
        set_state(PS_IDLE)
    }
    if hsp > 0 && left_pressed {
        thrusting += 1
        twirl += 1
        state_timer = 0
    }
    if hsp < 0 && right_pressed {
        thrusting += 1
        twirl += 1
        state_timer = 0
    }
    if right_down && left_down {
        thrusting += 1
    }
    
    if (side == -1 && right_down) or (side == 1 && left_down) {
    sprite_index = sprite_get("moonwalk")
    image_index = state_timer/5 
    
    if state_timer%(5*4) == 0 && state == PS_DASH {
        sound_play(asset_get("sfx_dash_start"),false,noone,1,.7)
    }
    
    } else {
    sprite_index = sprite_get("walk")
    image_index = state_timer/5.5
    
    if floor(state_timer%(5.5*3)) == 0 && state == PS_DASH{
        sound_play(asset_get("sfx_land"),false,noone,.8,1.3)
    }
    
    }
    
    if thrusting > 3 {
        if get_gameplay_time() % 22 == 0 {
            user_event(1)
        }
        x -= hsp
        sprite_index = sprite_get("landinglag")
        image_index = 1 + (get_gameplay_time()/5)%2 
    } else if twirl > 0 {
        sprite_index = sprite_get("doublejump")
        image_index =  (twirl/4)%3
        twirl ++
    }
    
    break;
    
    case PS_WALL_JUMP:
    case PS_WALL_TECH :
    sprite_index = sprite_get("doublejump")
    image_index = state_timer/4 
    break;
}

if sprite_index == sprite_get("spinhurt") image_index = state_timer/4

if state == PS_IDLE {
    
if !up_down {
   
   if tiptoe > 5 {
       tiptoe = 5
   }  
   
   if tiptoe > 0 {
       tiptoe --
       sprite_index = sprite_get("idle2")
       image_index = 4
   }
  
} else {
    tiptoe ++ 
    sprite_index = sprite_get("idle2")
    if tiptoe < 4 {
    image_index = 4
    } else {
    image_index = (state_timer/5.5)%4
    }
    if tiptoe == 2 {
        user_event(1)
    }
}

} else {
    tiptoe = 0
}