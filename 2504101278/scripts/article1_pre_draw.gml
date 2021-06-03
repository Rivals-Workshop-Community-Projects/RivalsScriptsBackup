if split_baby
{
    gpu_set_blendmode(bm_add);
    gpu_set_fog(true,col,1,0);
    draw_sprite_ext(sprite_index,image_index, x+2,y+2,spr_dir,image_yscale,0,c_white,col);
    draw_sprite_ext(sprite_index,image_index, x-2,y-2,spr_dir,image_yscale,0,c_white,col);
    draw_sprite_ext(sprite_index,image_index, x+2,y-2,spr_dir,image_yscale,0,c_white,col);
    draw_sprite_ext(sprite_index,image_index, x-2,y+2,spr_dir,image_yscale,0,c_white,col);
    gpu_set_fog(false,c_white,0,0);
    gpu_set_blendmode(bm_normal);
}