//trench characters
if(hold_timer > 0){
    --hold_timer
}
else{
    image_index += anim_speed;

    if(!activate){
        if(image_index + anim_speed > LOOP_FRAME_1 && image_index <= LOOP_FRAME_1 && loops > 0){
            image_index = 0;
            --loops;
        }
        else if(image_index + anim_speed > LOOP_FRAME_2 && image_index <= LOOP_FRAME_2){
            image_index = 0;
            loops = LOOPS_1;
        }
    }
    else{
        if(image_index + anim_speed >= HOLD_FRAME_1 && image_index < HOLD_FRAME_1){
            hold_timer = HOLD_TIME_1;
        }
        else if(image_index + anim_speed >= image_number){
            image_index = HOLD_FRAME_1 - anim_speed*2;
        }
    }
}
