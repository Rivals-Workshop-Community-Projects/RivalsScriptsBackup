if(hasstatic == true){
    gpu_set_alphatestenable(true);
    gpu_set_fog(1, GetColourPlayer(7), 0, 1);
    
    var rand_x = random_func(0, 10, true) - 3;
    var rand_y = random_func(0, 10, true) - 3;
    
    draw_sprite_ext(sprite_index, image_index, x + rand_x - hsp, y + rand_y - vsp, 1 * spr_dir, 1, 1.1, c_white, .5);
    
    gpu_set_fog(0, c_white, 0, 0);
    gpu_set_alphatestenable(false);
}
#define GetColourPlayer(_index)
{
    return make_colour_rgb(get_color_profile_slot_r(get_player_color(player), _index),get_color_profile_slot_g(get_player_color(player), _index),get_color_profile_slot_b(get_player_color(player), _index));
} // lukaru