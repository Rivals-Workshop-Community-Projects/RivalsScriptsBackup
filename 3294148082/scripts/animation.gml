
if sprite_index = sprite_get("fstrong") {
    if sold == true { 
    sprite_index = sprite_get("fspecial")
    }
}
if sprite_index = sprite_get("dstrong") {
    if sold == true { 
    sprite_index = sprite_get("dstrongsold")
    }
}
if sprite_index = sprite_get("ustrong") {
    if sold == true { 
    sprite_index = sprite_get("ustrongsold")
    }
}
if (state == PS_SPAWN) {
    if state_timer > 12 {
    idletimer = idletimer+1
       // sound_play(sound_get("APPEAR2"))
    } else {
    idletimer = 0
    }
     var _posindex = floor(idletimer*(idle_anim_speed*1.2))
     if _posindex > 11 {
        sprite_index = sprite_get("idle");
        image_index = _posindex} else {
            if _posindex < 4 {
    idletimer = idletimer+1.5 } else {
    idletimer = idletimer+0.25}
        sprite_index = sprite_get("intro");
        image_index = _posindex
            
        }
} else if (state == PS_IDLE) {
    idletimer = idletimer+1
        sprite_index = sprite_get("idle");
        image_index = floor(idletimer*(idle_anim_speed*1.2))
} else if (state == PS_ATTACK_GROUND and attack == AT_TAUNT) {
    idletimer = idletimer+1
if textamount < string_length(string(taunttext))-1 {
    if state_timer%5 == 0 {
        sound_play(sound_get("TALK1"))
    }
        sprite_index = sprite_get("taunt");
    
} else {
        sprite_index = sprite_get("idle");
    
}
        image_index = floor(idletimer*(idle_anim_speed*1.2))

} else {
    idletimer = 0
}
switch(state_cat){
    case SC_AIR_NEUTRAL:
    if state != PS_ATTACK_AIR {
            if hovering {
            sprite_index = sprite_get("hover")
            image_index =  floor(state_timer/12)
        }
    }
    break;
    
}

    switch (state){
        case PS_DASH_TURN:
            sprite_index = sprite_get("dashstop");
        break;
    
        case PS_DOUBLE_JUMP:
            sprite_index = sprite_get("hover")
            image_index =  floor(state_timer/12)
        break;
        
        case PS_LAND:
            sprite_index = sprite_get("land");
        break;
       case PS_WALK_TURN:
            sprite_index = sprite_get("land");
        break;
        
        case PS_LANDING_LAG:
            sprite_index = sprite_get("land");
        break; 
        
        case PS_JUMPSQUAT:
            sprite_index = sprite_get("land");
        break; 
    
        
        case PS_HITSTUN_LAND:
            sprite_index = sprite_get("land");
        break;
                
        case PS_PRATLAND:
            sprite_index = sprite_get("land");
            break;
                
        case PS_PRATFALL:
            sprite_index = sprite_get("hurt");
        break;
        case PS_WAVELAND:
            sprite_index = sprite_get("land");
           image_index = 1;
        break;
        
        case PS_WALL_JUMP:
        //    sprite_index = sprite_get("dash");
          //  image_index = state_timer/4
        break;
        
        case PS_AIR_DODGE:
            sprite_index = sprite_get("dash");
        break;
        
        case PS_ROLL_BACKWARD:
            sprite_index = sprite_get("dash");
        break;
        
        case PS_ROLL_FORWARD:
            sprite_index = sprite_get("dash");
        break;
        
        case PS_TECH_GROUND:
            sprite_index = sprite_get("crouch");
        break;
        
        case PS_TECH_BACKWARD:
            sprite_index = sprite_get("dash");
        break;
        
        case PS_TECH_FORWARD:
            sprite_index = sprite_get("dash");
        break;
    
        case PS_WALL_TECH:
            sprite_index = sprite_get("jump");
        break;
    
    default: break;
    }
    
if sprite_index = sprite_get("hurt") and !(state == PS_FROZEN or state == PS_WRAPPED) {
image_index = state_timer/6
}