shader_start();


if attacking {
    if attack == AT_FSPECIAL && (window == 3 or window == 5) {
            draw_sprite_ext(sprite_index,image_index,x-shsp*2,y-svsp*2 - 2,spr_dir,1,0,-1,.3)
            draw_sprite_ext(sprite_index,image_index,x-shsp*4,y-svsp*4 - 4,spr_dir,1,0,-1,.15)
    }
}

shader_end() 
