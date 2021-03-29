//2nd background layer with all 2nd layer animations on top

//anim 8 airship
if(a8_activate){
    a8_xOff -= a8_hsp;
    a8_yOff += a8_vsp;
    
    if(a8_yOff > 1000){
        a8_xOff = 1150;
        a8_yOff = -300;
        a8_activate = false;
    }
    //spawn paratrooper at end of each animation loop
    if(anim8_index + anim8_speed >= anim8_image_number){
        anim8_index = 0;
        instance_create(round(a8_xOff + x_off), round(a8_yOff + y_off), "obj_stage_article", 18);
    }
    anim8_index += anim8_speed;
}

//trench characters
if(hold_timer > 0){
    --hold_timer
}
else{
    anim4_index += anim4_speed;

    if(!a4_activate){
        if(anim4_index + anim4_speed > LOOP_FRAME_1 && anim4_index <= LOOP_FRAME_1 && loops > 0){
            anim4_index = 0;
            --loops;
        }
        else if(anim4_index + anim4_speed > LOOP_FRAME_2 && anim4_index <= LOOP_FRAME_2){
            anim4_index = 0;
            loops = LOOPS_1;
        }
    }
    else{
        if(anim4_index + anim4_speed >= HOLD_FRAME_1 && anim4_index < HOLD_FRAME_1){
            hold_timer = HOLD_TIME_1;
        }
        else if(anim4_index + anim4_speed >= anim4_image_number){
            anim4_index = HOLD_FRAME_1 - anim4_speed*2;
        }
    }
}