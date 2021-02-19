switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    case PS_LANDING_LAG:
    case PS_WALL_JUMP:
        spr_angle = 0;
    break;
    
    case PS_ATTACK_AIR:
        switch attack {
            case AT_EXTRA_1:
            case AT_NAIR:
                glide_image_index=image_index;
                sprite_index=asset_get("empty_sprite");
            break;
            case AT_USPECIAL:
                if window == 3 {
                    glide_image_index=image_index;
                }
            break;
            /*case AT_FSTRONG:
                glide_image_index=image_index;
                //spr_angle = 0;
            break;
            
            case AT_DSPECIAL:
                //if window == 2 { sprite_index = asset_get("empty_sprite"); }
            break;//*/
            
            default:
            break;
        }
    break;
    
    case PS_ATTACK_GROUND:
        switch attack {
            case AT_FSPECIAL:
                if window==3 {
                    if(abs(hsp)>7){
                        
                    } else if (abs(hsp)>4) {
                        image_index+=1;
                    } else {
                        image_index+=2;
                    }
                }
            break;
            
            case AT_DSPECIAL:
                //if window == 2 { sprite_index = asset_get("empty_sprite"); }
            break;
            
            default:
            break;
        }
    break;
    
    default: break;
}