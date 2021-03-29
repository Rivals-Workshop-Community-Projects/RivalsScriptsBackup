//seige chain

//pause animation until timer runs out
if(!hold){
    image_index += anim_speed;
}
else{
    hold_timer--
    if(hold_timer <= 0){
        hold = false;
        hold_timer = hold_time;
    }
}

//loop through hold flags to check for pausing animation
for(i = 0; i < hold_frames_size; ++i){
    if(image_index >= hold_frames[i, 0] && !hold_frames[i, 1]){
        hold = true;
        hold_frames[i, 1] = true;
    }
}

//reset flags when animation loops
if(image_index + anim_speed > image_number){
    for(i = 0; i < hold_frames_size; ++i){
        hold_frames[i, 1] = false;
    }
}