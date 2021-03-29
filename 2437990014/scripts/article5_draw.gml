//mountain BG layer with all animations on this layer on top

//draw each airship
for(k = 0; k < num_airships; ++k){
    //draw airship and fx
    if(airships[k] != 0){
        //draw_debug_text(345, 165 + k * 15, string(k) + ": " + string(airships[k].fx));
        //use airship speed to determine drawing big or small airship
        if(airships[k].vX == 0.45){
            draw_sprite_ext(sprite_get("airship_sil2"), airships[k].img_index, airships[k].x_pos + temp_x*0.4, 
            airships[k].y_pos + temp_y*0.4, 2, 2, 0, c_white, 1);
        }
        else{
            draw_sprite_ext(sprite_get("airship_sil"), airships[k].img_index, airships[k].x_pos + temp_x*0.4, 
            airships[k].y_pos + temp_y*0.4, 2, 2, 0, c_white, 1);
        }
        //draw fx
        for(l = 0; l < fx_slots; ++l){
            if(airships[k].fx[l] != 0){
                draw_sprite_ext(sprite_get("distant_exp_fx"), airships[k].fx[l].img_index, airships[k].fx[l].x_pos + temp_x*0.4,
                airships[k].fx[l].y_pos + temp_y*0.4, 2, 2, 0, c_white, airships[k].fx[l].a);
            }
        }
    }
}

