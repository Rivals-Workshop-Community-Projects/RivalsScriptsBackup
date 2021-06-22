switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
        break;
    case PS_DASH_START:
        if(dragon_install){
            sprite_index = sprite_get("install_dashstart");
            if(state_timer == 1){
                shake_camera(2, 2);
            }
        } 
        break;
        
    case PS_DASH:
        if(dragon_install){
            sprite_index = sprite_get("install_dash");
            if(state_timer > 20){
                image_index = 0;
                state_timer = 0;
            }
            if(state_timer%10 = 0){
                shake_camera(2, 2);
            }
        }
        break;
    case PS_LAND:
        if(dragon_install){
            shake_camera(4, 2);
        }
        break;
    
    default: break;
}