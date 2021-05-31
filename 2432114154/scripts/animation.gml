///

if move_cooldown[AT_NAIR] > 0 {
    
  if move_cooldown[AT_NAIR] >= 48 {
          sound_stop(asset_get("sfx_boss_vortex_end"))
          sound_play(asset_get("sfx_boss_vortex_end"),false,noone,1.2,1)
  }
if move_cooldown[AT_NAIR] % 2 == 0   draw_y = 1 ;
if move_cooldown[AT_NAIR] % 2 == 1   draw_y = -1  ;
 
} else {
    draw_y = 0
}
if isyellow {
    if (state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD){
     sprite_index = sprite_get("rollin");
     image_index = state_timer/5    
    }
    
    switch (state) {
    
    case PS_IDLE :
     sprite_index = sprite_get("idle");
     image_index = state_timer/6    
    break;
    
    case PS_DASH :
     sprite_index = sprite_get("dash2");
     image_index = state_timer/2.5    
    break;
    
    case PS_DASH_START :
     sprite_index = sprite_get("dash2");
     image_index = state_timer/4     
    break;
    
    
    case PS_PARRY :
     sprite_index = sprite_get("crouch");
     image_index = state_timer/7.5    
    break;
    
    

    
    case PS_PRATFALL :
     sprite_index = sprite_get("jump");
     image_index = 4 
    break;
    
    case PS_AIR_DODGE :
     sprite_index = sprite_get("nspecial");
     image_index = state_timer/8.4
    break;
     
    }
    
  
    
}