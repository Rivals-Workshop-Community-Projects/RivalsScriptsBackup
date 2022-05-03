//


if hitpause && state_cat == SC_HITSTUN {
    switch  hurtsprite%3  {
        case 0: 
        sprite_index = sprite_get("parry2")
        image_index = 1
        break;
        
        case 1: 
        sprite_index = sprite_get("roll_forward")
        image_index = 1
        break;
        
        case 2: 
        sprite_index = sprite_get("airdodge")
        image_index = 1
        break;
    }
    
}

if get_gameplay_time() < 63 or (state == PS_RESPAWN && state_timer > 90 && state_timer < 125)  {
    sprite_index = sprite_get("parry2")
    image_index = state_timer/4
}

switch state {
    case PS_PRATLAND :
        sprite_index = sprite_get("landinglag") 
        image_index = min(2,state_timer/5)
    break;
    
    case PS_DASH :
       if state_timer < 8 {
        sprite_index = sprite_get("dashstart")
        dash_speed = 7;
       } else {
         sprite_index = sprite_get("walk") 
         dash_speed = 5;
       }
        image_index = state_timer/3
    break;
    
    
}

if move_cooldown[AT_EXTRA_3] > 0 {
    sprite_index = sprite_get("parry2")
    image_index = (28 - move_cooldown[AT_EXTRA_3]) /4
}