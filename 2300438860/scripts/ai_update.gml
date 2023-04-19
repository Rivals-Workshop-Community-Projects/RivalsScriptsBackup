//

Genocide = 4 

if !free && ai_target.y > y {
  y += 6
}

if temp_level == 1 {

if !has_hit_player && window_timer == 1 && window > 1 && !hitpause && attack != AT_UTHROW {
      create_hitbox (AT_USPECIAL, 1 , x - 20 +       random_func(2,40,true) , y - random_func(3,40,true) )
      sound_play(sound_get("slice"),false,noone,1,1)

}

if get_gameplay_time() > 100 && !hitpause && state_cat != SC_HITSTUN {
  attackbar = 60 + random_func(1,56,true)
  
}

if attack == AT_UTHROW && window > 1 && !hitpause && window < 6{
  if state_timer % 6 == 0 {
    create_hitbox(AT_FSPECIAL,1, x + 90*spr_dir,y - 30)
  }

  if state_timer % 6 == 2 {
    create_hitbox(AT_FSPECIAL,3, x + 90*spr_dir,y - 30)
  }


  if state_timer % 6 == 4 {
    create_hitbox(AT_FSPECIAL,3, x + 90*spr_dir,y - 30)
  }

}

with ai_target {
  
if get_player_damage(player) > 99 {
   take_damage(player,-1,99999)
} 

}

if state == PS_PRATFALL {
   has_wall_jump = true 
}

if state_cat != SC_HITSTUN {
   if x+hsp > room_width {
      x = 10 
       sound_play(sound_get("tauntflash"))
   } 

   if x+hsp < 0{
      x = room_width - 10 
       sound_play(sound_get("tauntflash"))
   } 


   if y+vsp > room_height {
     y = 10
     sound_play(sound_get("tauntflash"))
   }

   if y+vsp < 0{
      y = room_height - 30
      vsp = -20
      x = room_width/2 + 500*spr_dir
      hsp = -10*spr_dir
       sound_play(sound_get("tauntflash"))
   } 


}



if abs(x + hsp - ai_target.x + ai_target.hsp) < 120 and abs(y + vsp - ai_target.y + ai_target.vsp) < 120 {
        attack_pressed = true 
        
    
    if state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND {
    if state_timer <= 10 {
        if state_timer % 4 == 0 {
       crtai = create_hitbox(AT_FTILT,10,x,y)
       crtai.ye = sprite_index
       crtai.heck = image_index
       crtai.walls = 1
       crtai.grounds = 1
    }
       x += floor((ai_target.x - x)/14)
       if free y += floor((ai_target.y - y)/14)
      }
    }

} 

if ai_target.state_cat == SC_HITSTUN && state == PS_ATTACK_AIR && attack == AT_UTHROW && window <= 2 {
       crtai = create_hitbox(AT_FTILT,10,x,y)
       crtai.ye = sprite_index
       crtai.heck = image_index
       crtai.walls = 1
       crtai.grounds = 1

        x += floor((ai_target.x + ai_target.hsp - x)/8)
        y += floor((ai_target.y + ai_target.vsp - y)/8)

}

if state == PS_DOUBLE_JUMP && ai_target.state_cat == SC_HITSTUN {
    if state_timer % 3 == 0 {
       crtai = create_hitbox(AT_FTILT,10,x,y)
       crtai.ye = sprite_index
       crtai.heck = image_index
       crtai.walls = 1
       crtai.grounds = 1
    }
}

if has_hit_player &&  (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND) && window >= 3 && attack != AT_UTHROW {
    
   if hit_player_obj.hitpause == false && free {
      hitpause = false 
      if djumps < 2 {
          djumps ++
          set_state(PS_DOUBLE_JUMP) 
          state_timer = 4
           hsp = ai_target.hsp*1.15
           vsp = ai_target.vsp*1.15
     } else {
        attack_end()
        set_attack(AT_USPECIAL) 
        window = 1
        window_timer = 1

     } 
      
    }
    if hit_player_obj.hitpause == false && !free {
        attack_end()
        set_attack(AT_FSPECIAL) 
        window = 1 
        window_timer = 1
        vsp = -2
       crtai = create_hitbox(AT_FTILT,10,x,y)
       crtai.ye = sprite_index
       crtai.heck = image_index
       crtai.walls = 1
       crtai.grounds = 1
       
    }
}



} else {
    if abs(x + hsp - ai_target.x + ai_target.hsp) < 120 and abs(y + vsp - ai_target.y + ai_target.vsp) < 120 {
        if random_func(2,2,true) == 0 {
            attack_pressed = true 
        } else {
            special_pressed = true 
        }

   } 

}
