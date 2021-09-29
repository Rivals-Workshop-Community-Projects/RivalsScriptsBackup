if(hit_player){
    if(opponent_fog_timer <= 15){
    gpu_set_fog(true, c_white, 0, 1);
    draw_sprite_ext(sprite_index, image_index, x, y, -1, 1, 0, c_white, fog_magic);
    gpu_set_fog(false, c_white, 0, 1);
    }else{
    gpu_set_fog(false, c_white, 0, 1);
    }
}

