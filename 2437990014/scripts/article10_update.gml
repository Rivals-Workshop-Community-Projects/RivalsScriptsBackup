//temple rays
if(activate){
    switch(state){
        case 1:
            if(hold_1_time > 0){
                fore_alpha += fade_in;
                if(fore_alpha + fade_in >= 0.8 && fore_alpha < 0.8){
                    sound_play(sound_get("release_overload"), false, 0, 2.5);
                }
                --hold_1_time;
            }
            //once fully opaque, start animation and hold animation on certain frames for effect
            else{
                if(fore_index + anim_speed >= HOLD_FRAME_2 && hold_2){
                    --hold_2_time;
                    if(hold_2_time <= 0){
                        hold_2 = false
                    }
                }
                else if(fore_index + anim_speed >= HOLD_FRAME_3 && hold_3){
                    --hold_3_time;
                    if(hold_3_time <= 0){
                        hold_3 = false;
                    }
                }
                else{
                    sprite_index = (sprite_get("anim10_fore"));
                    if(fore_index + anim_speed >= image_number){
                        fore_alpha = 0;
                        state = 2;
                    }
                    sprite_index = sprite_get("anim10");
                    fore_index += anim_speed;
                }
            }
        break;
        
        default:
            depth = 32
            if(image_index + anim_speed < image_number){
                image_index += anim_speed;
            }
        break;
        
    }
    
}