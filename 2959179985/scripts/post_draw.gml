// pre-draw
if(ex){
    gpu_set_fog(true, /*#*/$ffeecd, 0, 0);
    draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, 0 , c_black , ex_alpha_draw);
    gpu_set_fog(false, /*#*/$ffeecd, 0, 0);
}