//mountain BG layer with all animations on this layer on top

//periodically spawn airship silhouettes
if(--air_timer < 0){
    air_timer = 100 + random_func(0, 700, true);
    add_airship = true;
}

//manage airships
for(k = 0; k < num_airships; ++k){
    //manage airship if one is active in this index
    if(airships[k] != 0){
        //shoot down airships if flagged
        if(destroy && airships[k].x_pos > 500){
            airships[k].img_index = 1;
            airships[k].g = 0.1;
            airships[k].vX -= 0.2;
            airships[k].fx = [0, 0];
        }
        airships[k].x_pos -= airships[k].vX;
        if(airships[k].vY < max_fall){
            airships[k].vY += airships[k].g;
        }
        airships[k].y_pos += airships[k].vY;
        //add fx if none in slot
        //fx variables: 
        //x, y, alpha, frame start, frame index, timer  
        for(l = 0; l < fx_slots; ++l){
            //determine which fx to use, each fx is fx_frames frames on one sprite strip
            f = fx_frames * random_func(k, fx_image_number/fx_frames, true)  
            if(airships[k].fx[l] == 0){
                if(airships[k].img_index > 0){
                    if(f < fx_image_number/2){
                        f = f * 2;
                    }
                    airships[k].fx[l] = {x_pos:airships[k].x_pos + 60 + random_func(l, 20, true), y_pos:airships[k].y_pos + 10 + random_func(l, 20, true), 
                    a:1, img_index_start:f, img_index:f, timer: 10 + random_func(k + l, 20, true)}
                }
                //only fill first index if ship is not going down
                else if(l < 1){
                    airships[k].fx[l] = {x_pos:airships[k].x_pos + random_func(0, 100, true), y_pos:airships[k].y_pos + random_func(0, 200, true), 
                    a:1, img_index_start:f, img_index:f, timer:200 + random_func(k, 400, true)}
                }
            }
            //otherwise manage fx
            else if (airships[k].fx[l] != 0){
                //add animation frames
                if(airships[k].fx[l].img_index + fx_anim_speed < airships[k].fx[l].img_index_start + fx_frames){
                   airships[k].fx[l].img_index += fx_anim_speed; 
                }
                //hide when animation complete
                else{
                    airships[k].fx[l].a = 0;
                }
                //remove when its time for next fx
                if(--airships[k].fx[l].timer <= 0){
                    airships[k].fx[l] = 0;
                }
            }
        }
        //remove airships when needed
        if(airships[k].x_pos < -100 || airships[k].y_pos > 1000){
             airships[k] = 0;
        }
    }
    //otherwise add airship to empty slot if needed
    //airship variables:
    //frame index, horizontal speed, vertical speed, gravity, x, y, fx1, fx2
    else if(add_airship){
         s = random_func(0, 2, true);
        if(s == 0){
            airships[k] = {img_index:0, vX:0.45, vY:0, g:0, x_pos:1000, y_pos:50 + random_func(0, 80, true), fx:[0,0]}   
        }
        else{
            airships[k] = {img_index:0, vX:0.5, vY:0, g:0, x_pos:1000, y_pos:50 + random_func(0, 80, true), fx:[0,0]}   
        }
        add_airship = false;
    }
}

if(destroy){
    destroy = false;
}