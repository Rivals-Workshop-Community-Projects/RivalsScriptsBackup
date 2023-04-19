
if(state == PS_CROUCH){
    can_move = true;
    if (right_down){
        hsp = 1.5;
        is_crawling = true;          
    }
    if (left_down){
        hsp = -1.5;
        is_crawling = true;  
    }
    if (joy_pad_idle){
        hsp = 0;
        is_crawling = false;
    }
   
}else{
    is_crawling = false;
}

if (state == PS_IDLE || state == PS_CROUCH || state == PS_JUMPSQUAT || state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_LAND || state == PS_LANDING_LAG )
{
    max_fall = 5;
    air_max_speed = 7;
    gravity_speed = .35;
    air_accel = .2;
    char_height = 55;   
}



if (!littleguy) {
	guy = instance_create(x-(spr_dir*65), y-60,  "obj_article1");
	littleguy = true;
}


if (state == PS_PRATFALL){
	max_fall = 90; //maximum fall speed without fastfalling
}