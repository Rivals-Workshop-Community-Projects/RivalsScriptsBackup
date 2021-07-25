//
state_timer ++;
timer ++;

if (timer < 400){
    with obj_stage_main{
        suppress_stage_music( 0, 0.02 );
    }
}

if (timer == 400){
    with obj_stage_main{
        suppress_stage_music( 1, 0.02 );
}
}

if (state_timer >= 0){
    image_index += 20 / 60;
}
if (state == 0 && state_timer == 1){
    sound_play(sound_get("charles"));
}
if (state == 0 && state_timer == (120 + 87)){
    state += 1;
    state_timer = 0;
}

if (state == 1){
    if image_angle > 0{
        image_angle -= .5;
    }
    if image_xscale < 1 && image_yscale < 1{
        image_xscale += .01;
        image_yscale += .01;
    }
    if x > get_marker_x(9){
        x -= .5;
    }
    if y < get_marker_y(9){
        y += 2.5;
    }
    if (state_timer == 92){
        with obj_stage_main{
        charles_crashed = true;
        end_match();
        }
    }
    /*if (state_timer == 93){
        with obj_stage_main{
            if training_mode == true{
                with charles{
        spawn_hit_fx( x, y, 143 );
        spawn_hit_fx( x + 80, y + 20, 143 );
        spawn_hit_fx( x + 130, y - 20, 143 );
        spawn_hit_fx( x + 30, y + 120, 143 );
        spawn_hit_fx( x + 60, y + 60, 143 );
        create_hitbox(AT_JAB, 1, floor(x), floor(y));
                }
            }
        }
        
    }*/
    if (state_timer > 93){
        
        sprite_index = asset_get("sprite_empty");
    }
        
}
