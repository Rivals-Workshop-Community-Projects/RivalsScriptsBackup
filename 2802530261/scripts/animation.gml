switch (state){
    case PS_IDLE:
    sprite_index = sprite_get(string(spr_dir) + "_idle");
    image_index = state_timer * 0.15;
    break;
    
    case PS_WALK:
    sprite_index = sprite_get(string(spr_dir) + "_walk");
    image_index = state_timer * 0.1;
    break;
    
    case PS_WALK_TURN:
    sprite_index = sprite_get(string(spr_dir) + "_walkturn");
    image_index = state_timer * 0.5;
    break;
    
    case PS_DASH_START:
    sprite_index = sprite_get(string(spr_dir) + "_dashstart");
    image_index = state_timer * 0.33;
    break;
    
    case PS_DASH:
    sprite_index = sprite_get(string(spr_dir) + "_dash");
    image_index = state_timer * 0.3;
    break;
    
    case PS_DASH_TURN:
    sprite_index = sprite_get(string(spr_dir) + "_walkturn");
    image_index = state_timer * 0.5;
    break;
    
    case PS_DASH_STOP:
    sprite_index = sprite_get(string(spr_dir) + "_dashstop");
    break;
    
    case PS_CROUCH:
    sprite_index = sprite_get(string(spr_dir) + "_crouch");
    break;
    
    case PS_IDLE_AIR:
    sprite_index = sprite_get(string(spr_dir) + "_idle_air");
    image_index = (prev_state != PS_DOUBLE_JUMP? (attack = AT_FAIR? 2: (attack == AT_DAIR? 2: (attack == AT_UAIR? 2: (attack == AT_BAIR? 2: (attack == AT_NAIR? 2: idle_air_index))))): idle_air_index);
    break;
    
    case PS_JUMPSQUAT:
    sprite_index = sprite_get(string(spr_dir) + "_jumpstart");
    image_index = state_timer * 0.45;
    break;
    
    case PS_FIRST_JUMP:
    sprite_index = sprite_get("somer");
    image_index = state_timer * 0.3 + 1;
    break;
    
    case PS_DOUBLE_JUMP:
    sprite_index = sprite_get("somer");
    image_index = state_timer * 0.3;
    break;
    
    case PS_WALL_JUMP:
    sprite_index = sprite_get(string(spr_dir) + "_walljump");
    break;
    
    case PS_PRATFALL:
    sprite_index = sprite_get(string(spr_dir) + "_pratfall");
    break;
    
    case PS_HITSTUN:
    switch(hurt_img){
        case 0: //hurt
        sprite_index = sprite_get(string(spr_dir) + "_smallhurt");
        break;
        case 1: //bighurt
        sprite_index = sprite_get(string(spr_dir) + "_bighurt");
        break;
        case 2: //hurtground
        sprite_index = sprite_get(string(spr_dir) + "_hurtground");
        image_index = state_timer * 0.3;
        break;
        case 3: //bouncehurt
        sprite_index = sprite_get(string(spr_dir) + "_bouncehurt");
        image_index = state_timer * 0.3;
        break;
        case 4: //spinhurt
        sprite_index = sprite_get(string(spr_dir) + "_spinhurt");
        image_index = state_timer * 0.25;
        break;
        case 5: //uphurt
        sprite_index = sprite_get(string(spr_dir) + "_uphurt");
        image_index = state_timer * 0.3;
        break;
        case 6: //downhurt
        sprite_index = sprite_get(string(spr_dir) + "_downhurt");
        image_index = state_timer * 0.3;
        break;
    }
    break;
    
    case PS_HITSTUN_LAND:
    sprite_index = sprite_get(string(spr_dir) + "_land");
    image_index = state_timer * 0.3;
    break;
    
    case PS_WAVELAND:
    sprite_index = sprite_get(string(spr_dir) + "_land");
    image_index = 1;
    break;
    
    case PS_LAND:
    sprite_index = sprite_get(string(spr_dir) + "_land");
    image_index = state_timer * 0.5;
    break;
    
    case PS_LANDING_LAG:
    sprite_index = sprite_get(string(spr_dir) + "_land");
    image_index = state_timer * 0.5;
    break;
    
    case PS_PRATLAND:
    sprite_index = sprite_get(string(spr_dir) + "_land");
    image_index = 1;
    break;
    
    case PS_SPAWN:
    sprite_index = sprite_get(string(spr_dir) + "_intro");
    image_index = (state_timer - 1) * 0.20;
    break;
    
    case PS_RESPAWN:
    sprite_index = sprite_get(string(spr_dir) + "_idle");
    image_index = state_timer * 0.15;
    break;
    
    case PS_TECH_GROUND:
    sprite_index = sprite_get(string(spr_dir) + "_land");
    break;
    
    case PS_TECH_BACKWARD:
    sprite_index = sprite_get(string(spr_dir) + "_0_rollb");
    break;
    
    case PS_TECH_FORWARD:
    sprite_index = sprite_get(string(spr_dir) + "_0_rollf");
    break;
    
    case PS_WALL_TECH:
    sprite_index = sprite_get(string(spr_dir) + "_walljump");
    break;
    
    case PS_ROLL_BACKWARD:
    sprite_index = sprite_get(string(spr_dir) + "_" + string(power_ups[5]) + "_rollb");
    break;
    
    case PS_ROLL_FORWARD:
    sprite_index = sprite_get(string(spr_dir) + "_" + string(power_ups[5]) + "_rollf");
    break;
    
    case PS_AIR_DODGE:
    sprite_index = sprite_get(string(spr_dir) + "_" + string(power_ups[5]) + "_airdodge");
    break;
    
    case PS_PARRY_START:
    sprite_index = sprite_get(string(spr_dir) + "_idle");
    break;
    
    case PS_PARRY:
    sprite_index = sprite_get(string(spr_dir) + "_parry");
    break;
    
    case PS_TUMBLE:
    switch(hurt_img){
        case 0: //hurt
        sprite_index = sprite_get(string(spr_dir) + "_smallhurt");
        break;
        case 1: //bighurt
        sprite_index = sprite_get(string(spr_dir) + "_bighurt");
        break;
        case 2: //hurtground
        sprite_index = sprite_get(string(spr_dir) + "_hurtground");
        image_index = state_timer * 0.3;
        break;
        case 3: //bouncehurt
        sprite_index = sprite_get(string(spr_dir) + "_bouncehurt");
        image_index = state_timer * 0.3;
        break;
        case 4: //spinhurt
        sprite_index = sprite_get(string(spr_dir) + "_spinhurt");
        image_index = state_timer * 0.25;
        break;
        case 5: //uphurt
        sprite_index = sprite_get(string(spr_dir) + "_uphurt");
        image_index = state_timer * 0.3;
        break;
        case 6: //downhurt
        sprite_index = sprite_get(string(spr_dir) + "_downhurt");
        image_index = state_timer * 0.3;
        break;
    }
    break;
    
    case PS_WRAPPED:
    sprite_index = sprite_get(string(spr_dir) + "_bighurt");
    break;
    
    default:
    break;
}