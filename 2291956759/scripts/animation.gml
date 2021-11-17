///




if (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND) && attack == AT_USPECIAL && window <= 2 {
    
    
    if state_timer > 5 {
    draw_x = floor((state_timer - 90)/3)
    }
    
    
}

if isyellow {
    if (state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD){
     sprite_index = sprite_get("pratfall");
     image_index = state_timer/5    
    }
    
    switch (state) {
    
    case PS_IDLE :
     sprite_index = sprite_get("idle2");
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