//Update
//Extra music code
if (get_gameplay_time() < 129 and mus == -1) {
    if(music >= 4){
        music_play_file( "music_loop" + string(music+1) );
    }
}

if(is_aether_stage()){
    timer_freeze--;
    if(timer_freeze > 0){
        set_bg_data(2,BG_LAYER_AUTOSCROLL_X, 0);
        set_bg_data(5,BG_LAYER_ANIMSPD, 0);
    } else {
        set_bg_data(2,BG_LAYER_AUTOSCROLL_X, -0.25);
        set_bg_data(5,BG_LAYER_ANIMSPD, 11);
    }
}