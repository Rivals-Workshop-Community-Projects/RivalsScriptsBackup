// pre-draw
if(ex){
    switch(ex_draw)
    {
        case 1: //Fspecial
        draw_sprite_ext(sprite_index, image_index - 1, ex_draw_x - 0 * spr_dir, ex_draw_y - 0, spr_dir, 1, 0 , c_white , ex_alpha_draw);
        break;
        case 2:
        draw_sprite_ext(sprite_index, image_index - 1, x + 0, y - 0, spr_dir, 1, 0 , c_white , ex_alpha_draw);
        break;
        case 3: //Uspecial
        draw_sprite_ext(sprite_index, image_index - 1, x + 0, y + 8, spr_dir, 1, 0 , c_white , ex_alpha_draw);
        break;
        case 4: //Dspecial
        draw_sprite_ext(sprite_index, image_index - 1, x + 0, y - 0, spr_dir, 1, 0 , c_white , ex_alpha_draw);
        break;
    }
    gpu_set_fog(true, c_aqua, 0, 0);
    switch(ex_draw)
    {
        case 1: //Fspecial
        draw_sprite_ext(sprite_index, image_index - 1, ex_draw_x - 0 * spr_dir, ex_draw_y - 0, spr_dir, 1, 0 , c_white , ex_alpha_draw);
        break;
        case 2:
        draw_sprite_ext(sprite_index, image_index - 1, x + 0, y - 0, spr_dir, 1, 0 , c_white , ex_alpha_draw);
        break;
        case 3: //Uspecial
        draw_sprite_ext(sprite_index, image_index - 1, x + 0, y + 8, spr_dir, 1, 0 , c_white , ex_alpha_draw);
        break;
        case 4: //Dspecial
        draw_sprite_ext(sprite_index, image_index - 1, x + 0, y - 0, spr_dir, 1, 0 , c_white , ex_alpha_draw);
        break;
    }
    
//    draw_sprite_ext(sprite_index, image_index, x - 2, y + 2, spr_dir, 1, 0 , c_black , ex_alpha_draw);
  //  draw_sprite_ext(sprite_index, image_index, x - 2, y - 2, spr_dir, 1, 0 , c_black , ex_alpha_draw);
    //draw_sprite_ext(sprite_index, image_index, x + 2, y + 2, spr_dir, 1, 0 , c_black , ex_alpha_draw);
    gpu_set_fog(false, c_aqua, 0, 0);
}
