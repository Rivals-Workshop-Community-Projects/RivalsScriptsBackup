//explosion and rays
if(activate){
    //loop back to step 2 at end of animation
    if(!step3 && !step4){
        image_index = whiteout_frame + 1;
        step2 = true;
        step3 = true;
    }
    
    //pause or play animation
    if(hold > 0){
        --hold;
        //fade out on whiteout frame
        if(!step1 && step2 && step3 && hold <= 200){
            image_alpha -= fade_out;
        }
    }
    else{
        image_index += anim_speed;
        image_alpha = 1;
        //send flag to airships
        if(image_index + anim_speed > 26 && image_index <= 26){
            with(obj_stage_article){
                if(num == 5){
                    destroy = true;
                }
            }
        }
    }
    
    //hold animation when reaching these frames
    //hold whiteout
    if(image_index + anim_speed > whiteout_frame && step1){
        depth = 33;
        hold = 500;
        step1 = false;
    }
    //hold between lazer 1 and 2
    else if(image_index + anim_speed >= lazer1_frame && step2){
        hold = lazer_interval;
        step2 = false;
        if(random_func(0, 1000, true) == 1){
            step4 = true;
        }
    }
    //hold after lazer 2
    else if(image_index + anim_speed >= lazer2_frame && step3){
        hold = lazer_interval;
        step3 = false;
        //spawn airship
        //instance_create(0, 0, "obj_stage_article", 8);
        with(obj_stage_article){
            if(num == 2){
                a8_activate = true;
            }
        }
    }
    //loop final step x times 
    else if(image_index + anim_speed >= image_number && step4){
        ++loop;
        if(loop >= loops){
            step4 = false;
            loop = 0;
            hold = lazer_interval
        }
        else{
            image_index = step4_frame;
        }
    }
}

