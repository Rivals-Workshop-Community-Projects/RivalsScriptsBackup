if(nspecial_cur_size > 1 or proj_size > 1 and attack == AT_NSPECIAL and (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR)){
    gpu_set_fog(true, trail_color, 0, 0);
    if(nspecial_cur_size < 4 or proj_size < 4){
        draw_sprite_ext(sprite_index, image_index, x + 2 - random_func(4,4+proj_size,true) , y - 2 + random_func(2,4+proj_size,true)  , spr_dir, 1, 0 , c_white , 1-(4-proj_size)/10);
        draw_sprite_ext(sprite_index, image_index, x - 2 + random_func(4,4+proj_size,true) , y + 2 - random_func(2,4+proj_size,true)  , spr_dir, 1, 0 , c_white , 1-(4-proj_size)/10);
    } else {
        draw_sprite_ext(sprite_index, image_index, x + 2, y - 2  , spr_dir, 1, 0 , c_white , 1);
        draw_sprite_ext(sprite_index, image_index, x - 2, y + 2, spr_dir, 1, 0 , c_white , 1);
        draw_sprite_ext(sprite_index, image_index, x - 2, y - 2  , spr_dir, 1, 0 , c_white , 1);
        draw_sprite_ext(sprite_index, image_index, x + 2, y + 2, spr_dir, 1, 0 , c_white , 1);
    }
    gpu_set_fog(false, c_white, 0, 0);
}