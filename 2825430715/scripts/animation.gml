//

switch state {
   
   case PS_CROUCH:
    if stamina < 100 {
     sprite_index = sprite_get("tired")
     image_index = state_timer/10
     stamina += 0.25 
    }
  break;
  
  case PS_IDLE :
     image_index = min(2 , state_timer/5)
  
     if stamina < 60 {
         hurtboxID.sprite_index = asset_get("ex_guy_crouch_box");
     sprite_index = sprite_get("tired")
     image_index = state_timer/10
     stamina += 0.25  
     move_cooldown[AT_UTHROW] = 5
    } else {
      if move_cooldown[AT_UTHROW] == 3 {
          sprite_index = sprite_get("idle")
          state_timer = 0
      }      
    }
    
    
  break;

  case PS_DASH_START :
     sprite_index = sprite_get("dash")
     image_index = min(5 , state_timer/3 + 3)
  break;
 
 case PS_DASH_TURN :
     sprite_index = sprite_get("crouch")
     image_index = min(2 , state_timer/4)
  break;
  
  case PS_DASH_STOP :
     sprite_index = sprite_get("crouch")
     image_index = min(2 , state_timer/4)
  break;
  
  case PS_WAVELAND:
     sprite_index = sprite_get("tired")
     image_index = min(2 , state_timer/4)
  break;
  
  case PS_AIR_DODGE:
     sprite_index = sprite_get("tired")
     image_index = 0
  break;
  
  case PS_WALL_JUMP:
     if state_timer < 6 {
        sprite_index = sprite_get("jumpstart")
        image_index = min(5 , state_timer/3)
        hsp = 0
        vsp = -2
     } else {
         sprite_index = sprite_get("jump")
        image_index = min(5 , state_timer/3)
        hsp = 6*spr_dir
        vsp = -2
     }
  break;
}
