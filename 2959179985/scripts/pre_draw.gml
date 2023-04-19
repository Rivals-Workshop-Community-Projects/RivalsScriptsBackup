// pre-draw
if(ex){
    gpu_set_fog(true, c_aqua, 0, 0);
    draw_sprite_ext(sprite_index, image_index, x + 2, y - 2, spr_dir, 1, 0 , c_black , ex_alpha_draw);
    draw_sprite_ext(sprite_index, image_index, x - 2, y + 2, spr_dir, 1, 0 , c_black , ex_alpha_draw);
    draw_sprite_ext(sprite_index, image_index, x - 2, y - 2, spr_dir, 1, 0 , c_black , ex_alpha_draw);
    draw_sprite_ext(sprite_index, image_index, x + 2, y + 2, spr_dir, 1, 0 , c_black , ex_alpha_draw);
    gpu_set_fog(false, c_aqua, 0, 0);
}
