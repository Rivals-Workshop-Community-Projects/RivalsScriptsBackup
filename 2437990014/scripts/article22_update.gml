//gem and radiance
//wait for flag to start animation
if(activate){
    //loop without gem
    if(image_index + anim_speed >= LOOP_FRAME_1 && !next_loop){
        image_index = 0;
    }
    //loop with gem
    else if(image_index + anim_speed >= image_number){
        image_index = LOOP_FRAME_1;
    }
    //switch to loop with gem in front
    if(lifetime > 700){
        next_loop = true;
    }
    
    image_index += anim_speed;
    image_alpha += fade_in;
    
    ++lifetime;
}