//debug
/*
for (var _x = -2; _x <= 2; _x += 2) for (var _y = -2; _y <= 2; _y += 2) {
    gpu_set_fog(1, c_red, 0, 1);
    draw_sprite_ext(sprite_index, image_index, x + _x, y + _y, spr_dir, 1, image_angle, c_white, 1);
    gpu_set_fog(0, c_white, 1, 1);
}
*/

//draw_sprite_ext(mask_index, 0, x, y, 1, 1, 0, c_white, 1/2);


if (state == 1) {
    var soul_spr = -1;
    var arrow_spr = -1;
    with (sansID){
        soul_spr = sprite_get("blue_soul");
        arrow_spr = sprite_get("arrow");
        shader_start();
    }
    if (arrow_spr != -1)
        draw_sprite_ext(arrow_spr, 0, x-1, y, 1, 1, sansID.dspecJoyDir, c_white, 1);
        //draw_sprite(soul_spr, 0, x, y);
    with (sansID){
        shader_end();
    }
}