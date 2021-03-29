//right trebuchet
if(hold_timer > 0){
    --hold_timer;
}
else{
    image_index += anim_speed;
    if(image_index + anim_speed >= HOLD_FRAME_1 && image_index < HOLD_FRAME_1){
        hold_timer = HOLD_TIME_1
    }
}