///

shader_start();






if state == PS_CROUCH && fcharge < 3 {
        		draw_sprite_ext(sprite_index, image_index, x - 3 + random_func(1,6,true) , y - random_func(2,6,true), 1.04 * spr_dir, 1.04, 0 , c_white , 0.4);
}

shader_end() 