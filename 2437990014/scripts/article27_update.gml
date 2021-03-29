//spider
if(--timer <= 0){
    if(image_index + anim_speed >= image_number){
        timer = 2000 + random_func(current_second, 3500, true);
        image_index = 0;
    }
    else{
        image_index += anim_speed;
    }
}