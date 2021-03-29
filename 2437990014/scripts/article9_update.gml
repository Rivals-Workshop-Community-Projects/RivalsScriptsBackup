//anim8
if(hold_timer > 0){
    --hold_timer;
}
else{
    image_index += anim_speed;
    if(image_index + anim_speed >= image_number){
        hold_timer = HOLD_TIME_1
    }
}