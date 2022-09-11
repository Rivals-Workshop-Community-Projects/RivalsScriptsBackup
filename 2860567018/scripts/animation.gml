if(attack == AT_USPECIAL and (window == 2 or window == 4) and state == PS_ATTACK_AIR){
        if(prev_joy_dir >= 337 or prev_joy_dir <= 23){
            image_index = 8;
        } else if (prev_joy_dir <= 68) {
            image_index = 7;
        } else if (prev_joy_dir <= 113){
            image_index = 6;
        } else if(prev_joy_dir <= 158){
            image_index = 13;
        } else if (prev_joy_dir <= 203){
            image_index = 12;
        } else if (prev_joy_dir <= 248){
            image_index = 11;
        } else if (prev_joy_dir <= 293){
            image_index = 10;
        } else if (prev_joy_dir <= 337){
            image_index = 9;
        }
        
}


if (state == PS_DASH_START or state == PS_DASH) {
    hurtboxID.sprite_index = sprite_get("hurtbox_dash");
}
if( state == PS_IDLE or state == PS_WALK or state == PS_JUMPSQUAT or state == PS_DASH_STOP or state == PS_DASH_TURN  or state == PS_IDLE_AIR) {
    hurtboxID.sprite_index = sprite_get("hurtbox");
}