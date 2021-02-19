//post-draw

if wearing_hat {
    draw_sprite_ext(seasonal_hat, image_index, x, y, spr_dir, 1, 0, c_white, 1);
}

if (attack == AT_DSPECIAL){
    //shader_start();
    if (shot_menu != -1) {
        draw_sprite(shot_menu, meter_not_full, x- 61, y - 158);
    }
    if (shot_cursor != -1) {
        draw_sprite(shot_cursor, current_shot- 1, x- 61, y - 158);
    }
    //shader_end();
}