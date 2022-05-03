switch(wall){
    case 0:
    switch(state){
        case PS_IDLE:
        sprite_index = sprite_get(string(plate_state) + "_idle");
        image_index = state_timer * 0.2;
        break;
        case PS_WALK:
        sprite_index = sprite_get(string(plate_state) + "_walk");
        image_index = state_timer * 0.2;
        break;
        case PS_DASH:
        sprite_index = sprite_get(string(plate_state) + "_dash");
        image_index = state_timer * 0.3;
        break;
        case PS_DASH_START:
        sprite_index = sprite_get(string(plate_state) + "_dash_start");
        image_index = state_timer * 0.5;
        break;
        case PS_DASH_STOP:
        sprite_index = sprite_get(string(plate_state) + "_dash_stop");
        image_index = state_timer * 0.5;
        break;
        case PS_CROUCH:
        if(crawling == true){
            sprite_index = sprite_get(string(plate_state) + "_dash");
            image_index = state_timer * 0.2;
        }else{
            sprite_index = sprite_get(string(plate_state) + "_crouch");
        }
        break;
        case PS_JUMPSQUAT:
        sprite_index = sprite_get(string(plate_state) + "_jumpsquat");
        image_index = state_timer * 0.3;
        break;
        case PS_FIRST_JUMP:
        sprite_index = sprite_get(string(plate_state) + "_jump");
        image_index = state_timer * 0.2;
        if(image_index == 3){
            set_state(PS_IDLE_AIR)
        }
        break;
        case PS_DOUBLE_JUMP:
        sprite_index = sprite_get(string(plate_state) + "_djump");
        image_index = state_timer * 0.16;
        if(image_index == 3){
            set_state(PS_IDLE_AIR)
        }
        break;
        case PS_IDLE_AIR:
        sprite_index = sprite_get(string(plate_state) + "_idle_air");
        break;
        case PS_LAND:
        sprite_index = sprite_get(string(plate_state) + "_land");
        image_index = state_timer / 3;
        break;
        case PS_HITSTUN_LAND:
        sprite_index = sprite_get(string(plate_state) + "_land");
        image_index = state_timer / 3;
        break;
        case PS_PRATFALL:
        if(attack == AT_USPECIAL){
            sprite_index = sprite_get(string(plate_state) + "_idle_air");
        }else{
            sprite_index = sprite_get(string(plate_state) + "_pratfall");
        }
        break;
        case PS_LANDING_LAG:
        sprite_index = sprite_get(string(plate_state) + "_land");
        image_index = state_timer * 0.2;
        break;
        case PS_PRATLAND:
        sprite_index = sprite_get(string(plate_state) + "_land");
        image_index = 2;
        break;
        case PS_WAVELAND:
        sprite_index = sprite_get(string(plate_state) + "_crouch");
        image_index = 4;
        break;
        case PS_WALK_TURN:
        sprite_index = (sprite_get(string(plate_state) + "_turn"));
        image_index = state_timer / 3;
        break;
        case PS_DASH_TURN:
        sprite_index = (sprite_get(string(plate_state) + "_turn"));
        image_index = state_timer / 3;
        break;
        case PS_ROLL_BACKWARD:
        sprite_index = sprite_get(string(plate_state) + "_broll")
        break;
        case PS_ROLL_FORWARD:
        sprite_index = sprite_get("empty")
        break;
        case PS_TECH_GROUND:
        sprite_index = sprite_get(string(plate_state) + "_froll")
        image_index += 2;
        break;
        case PS_TECH_BACKWARD:
        sprite_index = sprite_get(string(plate_state) + "_broll")
        break;
        case PS_TECH_FORWARD:
        sprite_index = sprite_get(string(plate_state) + "_froll")
        break;
        case PS_HITSTUN:
        switch(hurt_img){
            case 0: //hurt
            sprite_index = sprite_get(string(plate_state) + "_hurt");
            break;
            case 1: //bighurt
            sprite_index = sprite_get(string(plate_state) + "_bighurt");
            break;
            case 2: //hurtground
            sprite_index = sprite_get(string(plate_state) + "_hurtground");
            break;
            case 3: //bouncehurt
            sprite_index = sprite_get(string(plate_state) + "_bouncehurt");
            break;
            case 4: //spinhurt
            sprite_index = sprite_get(string(plate_state) + "_spinhurt");
            image_index = state_timer * 0.4;
            break;
            case 5: //uphurt
            sprite_index = sprite_get(string(plate_state) + "_uphurt");
            image_index = state_timer * 0.3;
            break;
            case 6: //downhurt
            sprite_index = sprite_get(string(plate_state) + "_downhurt");
            image_index = state_timer * 0.3;
            break;
        }
        break;
        case PS_TUMBLE:
        switch(hurt_img){
            case 0: //hurt
            sprite_index = sprite_get(string(plate_state) + "_hurt");
            break;
            case 1: //bighurt
            sprite_index = sprite_get(string(plate_state) + "_bighurt");
            break;
            case 2: //hurtground
            sprite_index = sprite_get(string(plate_state) + "_hurtground");
            break;
            case 3: //bouncehurt
            sprite_index = sprite_get(string(plate_state) + "_bouncehurt");
            break;
            case 4: //spinhurt
            sprite_index = sprite_get(string(plate_state) + "_spinhurt");
            image_index = state_timer * 0.4;
            break;
            case 5: //uphurt
            sprite_index = sprite_get(string(plate_state) + "_uphurt");
            image_index = state_timer * 0.3;
            break;
            case 6: //downhurt
            sprite_index = sprite_get(string(plate_state) + "_downhurt");
            image_index = state_timer * 0.3;
            break;
        }
        break;
        case PS_PARRY_START:
        sprite_index = sprite_get(string(plate_state) + "_parry");
        break;
        case PS_PARRY:
        sprite_index = sprite_get(string(plate_state) + "_parry");
        break;
        case PS_AIR_DODGE:
        if(window == 2 && window_timer >= 3){
            sprite_index = sprite_get(string(plate_state) + "_idle_air");
        }else{
            sprite_index = sprite_get(string(plate_state) + "_airdodge");
        }
        break;
        case PS_SPAWN:
        if(state_timer <= 49){
            sprite_change_offset("0_climb1", 125, 85);
            sprite_index = sprite_get(string(plate_state) + "_climb1");
            image_index = state_timer * 0.2;
            spr_angle = -90;
        }else{
            sprite_index = sprite_get(string(plate_state) + "_idle");
            image_index = state_timer * 0.2;
        }
        break;
        case PS_RESPAWN:
        sprite_index = sprite_get(string(plate_state) + "_idle");
        image_index = state_timer * 0.2;
        break;
    }
    break;
    
    case 1:
    switch(state){
    case PS_IDLE:
    sprite_index = sprite_get(string(plate_state) + "_idle");
    image_index = special_anim_timer * 0.2;
    break;
    case PS_WALK:
    sprite_index = sprite_get(string(plate_state) + "_walk");
    image_index = special_anim_timer * 0.2;
    break;
    case PS_DASH:
    sprite_index = sprite_get(string(plate_state) + "_dash");
    image_index = special_anim_timer * 0.3;
    break;
    }
    break;
    
    case 2:
    switch(state){
    case PS_IDLE:
    sprite_index = sprite_get(string(plate_state) + "_idle");
    image_index = special_anim_timer * 0.2;
    break;
    case PS_WALK:
    sprite_index = sprite_get(string(plate_state) + "_walk");
    image_index = special_anim_timer * 0.2;
    break;
    case PS_DASH:
    sprite_index = sprite_get(string(plate_state) + "_dash");
    image_index = special_anim_timer * 0.3;
    break;
    }
    break;
    
    case 3:
    switch(state){
    case PS_IDLE:
    sprite_index = sprite_get(string(plate_state) + "_idle");
    image_index = special_anim_timer * 0.2;
    break;
    case PS_WALK:
    sprite_index = sprite_get(string(plate_state) + "_walk");
    image_index = special_anim_timer * 0.2;
    break;
    case PS_DASH:
    sprite_index = sprite_get(string(plate_state) + "_dash");
    image_index = special_anim_timer * 0.3;
    break;
    }
    break;
}

/*
PS_WALL_TECH

PS_WRAPPED
PS_FROZEN