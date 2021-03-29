//anim15_dust
if(hold > 0){
    --hold
}
else{
    image_index += anim_speed;

    if(image_index + anim_speed >= image_number){
        image_index = 0;
        ++loops;
    }

    if(loops >= LOOP_LIMIT){
        instance_destroy();
    }
}