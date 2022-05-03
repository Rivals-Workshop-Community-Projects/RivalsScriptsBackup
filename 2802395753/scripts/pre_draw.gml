if(current_job != 1){
    var offset = 2;
    var temp_alpha = 1;
    if(job_timer <= 90 && job_timer % 20 >= 10){
        temp_alpha = 0;
    }
    switch(current_job){
        case 2:
            var color = make_colour_rgb(244,92,92);
            break;
        case 3:
            var color = make_colour_rgb(255, 215, 0);
            break;
        case 4:
            var color = make_colour_rgb(168,238,101)
            break;
        case 5:
            var color = make_colour_rgb(212,207,173)
            break;
    }
    
    gpu_set_fog(1, color, 0, 1);
    //set X's and set Y's
    for (var i_x = -offset; i_x <= offset; i_x += offset) for (var i_y = -offset; i_y <= offset; i_y += offset)
    {  
        if (i_y != 0 && i_x != 0) draw_sprite_ext(sprite_index, image_index, x + i_x, y - i_y, 1*spr_dir, 1, spr_angle, c_white, temp_alpha);
    }
    gpu_set_fog(0, c_white, 0, 0);
}