//ai update

//time_since_uspecial = 0;

if (state==PS_ATTACK_AIR || state==PS_ATTACK_GROUND){
    if (attack == AT_USPECIAL){
        if (window==1) time_since_uspecial=0;
        else time_since_uspecial++;
        
        if (time_since_uspecial!=0 && window==2){
            if (time_since_uspecial<15){
                if (spr_dir==-1) joy_dir = 0;
                else joy_dir = 180;
            }
            else if (time_since_uspecial<30){
                joy_dir=270;
            }
            else if (time_since_uspecial<45){
                if (spr_dir==1) joy_dir = 0;
                else joy_dir = 180;
            }
            else if (time_since_uspecial<60){
                joy_dir=90;
            }
        }
    }
}