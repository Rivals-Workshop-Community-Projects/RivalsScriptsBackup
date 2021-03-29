//anim1 archers and captain
if(anim1_index + anim1_speed > anim1_image_number){
    anim1_index = 0;
}
anim1_index += anim1_speed;

//create arrow instances on correct animation frame
if(anim1_index >= ARROW_FRAME_1 && !arrow1){
    spawn_arrow(205, 378, arrow_speed1, arrow_angle1, 150);
    arrow1 = true;
}
else if(anim1_index >= ARROW_FRAME_2 && !arrow2){
    spawn_arrow(205, 378, arrow_speed2, arrow_angle2, 150);
    arrow2 = true;
}

if(anim1_index < ARROW_FRAME_1){
    arrow1 = false;
    arrow2 = false;
}

//anim2 wall slit gun
if(hold_timer > 0){
    --hold_timer
}
else{
    if(anim2_index + anim2_speed > anim2_image_number){
        anim2_index = 0;
    }
    anim2_index += anim2_speed;
    if(anim2_index + anim2_speed >= HOLD_FRAME_1 && anim2_index < HOLD_FRAME_1){
        hold_timer = HOLD_TIME_1
    }
}

//anim3 red heavy vs blue infantry
anim3_index += anim3_speed;

//anim14 captain blowing whistle
if(a14_activate){
    a14_xOff += a14_hsp;
    a14_yOff += a14_vsp;
    if(anim14_index + anim14_speed < anim14_image_number){
        anim14_index += anim14_speed;
    }
    a14_vsp += g;
    
    //run forwards
    if(anim14_index < FRAME_FLAG_1){
        a14_hsp = -2.1;
    }
    //skid to a stop
    else if(anim14_index >= FRAME_FLAG_1 && anim14_index < FRAME_FLAG_2 - anim14_speed){
        a14_hsp += f;
        if(a14_hsp > 0){
            a14_hsp = 0;
        }
    }
    //blow whistle
    else if(anim14_index + anim14_speed >= FRAME_FLAG_2 && anim14_index < FRAME_FLAG_2){
        if(sound){
            sound_play(sound_get("whistle"))
        }
        anim14_speed = 0.08;
    }
    //create army
    else if(anim14_index + anim14_speed >= FRAME_FLAG_3 && anim14_index < FRAME_FLAG_3){
        anim14_speed = 0.15;
        if(is_aether_stage()){
            instance_create(0, 0, "obj_stage_article", 15);
        }
        else{
            a15_activate = true;
        }
        a15b_activate = true;
        if(sound){
            sound_play(sound_get("charge_warcry"), false, 0, 1.5)
            sound_play(sound_get("battle"));
            sound = false;
        }
    }
    
    //jump
    else if(anim14_index + anim14_speed > FRAME_FLAG_4 && anim14_index < FRAME_FLAG_4){
        a14_hsp = -2;
        a14_vsp = -4;
        g = 0.6;
    }
    
    //reset
    if(a14_yOff > 1000){
        ++timer;
        if(timer >= RESET_TIME){
            a14_xOff = 0;
            a14_yOff = 0;
            a14_hsp = 0;
            a14_vsp = 0;
            g = 0;
            anim14_index = 0;
            timer = 0;
        }
    }
}
//anim15 army
if(a15_activate){
    a15_xOff -= 5;
    //create dust clouds
    if(a15_xOff != 0 && abs(a15_xOff % 100) < 5){
        instance_create(a15_xOff, a15_yOff, "obj_stage_article", 25);
    }
    //destroy after leaving screen
    if(a15_xOff < -2000){
        a15_xOff = 1400;
        a15_yOff = 458;
        a15_activate = false;
    }

}

//anim15 backdust
if(a15b_activate){
    a15b_xOff -= 4;
}
if(a15b_xOff < -3000){
    a15b_xOff = 0;
    a15b_activate = false;
}

#define spawn_arrow(xOff, yOff, sp, ang, l){
    arrow = instance_create(x + xOff, y + yOff, "obj_stage_article", 17);
    arrow.s = sp;
    arrow.a = ang;
    arrow.life = l;
    arrow.lifetime = l;
}