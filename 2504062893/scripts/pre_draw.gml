var sub_img = get_gameplay_time()/5;
if (!wall_available){
    draw_sprite_ext(sprite_get("loxoblock"), sub_img, wall_x, wall_y, spr_dir, 1, 0, c_white, 1);
}