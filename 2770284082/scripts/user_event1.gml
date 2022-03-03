//

sound_stop(cur_sound)
soundlol += random_func(1,2,true) + 1

if state_cat != SC_HITSTUN && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR {
switch soundlol%4 {
    
    case 0 :
     cur_sound = sound_play(sound_get("v_daa"),false,noone,0.7,1.05 - random_func(1,10,true)/100)
    break;
    
    case 1 :
     cur_sound = sound_play(sound_get("v_shchk"),false,noone,0.7,1.05 - random_func(1,10,true)/100)
    break;
    
    case 2 :
     cur_sound = sound_play(sound_get("v_dah"),false,noone,0.7,1.05 - random_func(1,10,true)/100)
    break;
    
    case 3 :
     cur_sound = sound_play(sound_get("v_cha"),false,noone,0.7,1.05 - random_func(1,10,true)/100)
    break;
    
}
} else if state_cat == SC_HITSTUN {
    
    if hurt == 1 {
        switch soundlol%4 {
            case 0 :
             cur_sound = sound_play(sound_get("v_cha"),false,noone,.85,1.05 - random_func(1,10,true)/100)
            break;
            
            case 1 :
             cur_sound = sound_play(sound_get("v_ah"),false,noone,.85,1.05 - random_func(1,10,true)/100)
            break;
            
            case 2 :
             cur_sound = sound_play(sound_get("v_dah"),false,noone,.85,1.05 - random_func(1,10,true)/100)
            break;
            
            case 3 :
             cur_sound = sound_play(sound_get("v_bah"),false,noone,.85,1.05 - random_func(1,10,true)/100)
            break;
        }
    } else {
        switch soundlol%3 {
           case 0 :
            cur_sound = sound_play(sound_get("v_taow"),false,noone,.8,1.05 - random_func(1,10,true)/100)
           break;
           
           case 1 :
            cur_sound = sound_play(sound_get("v_daow"),false,noone,.75,1.05 - random_func(1,10,true)/100)
           break;
           
           case 2 :
            cur_sound = sound_play(sound_get("v_hoo"),false,noone,.85,1.05 - random_func(1,10,true)/100)
           break;
        }
    
    }
    
    
}

