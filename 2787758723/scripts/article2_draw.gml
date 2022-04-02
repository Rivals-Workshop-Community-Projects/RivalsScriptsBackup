
for (var i = 0; i < fire_num; i++) {
    draw_sprite_ext(fire[i].sprite_index,fire[i].img_index,x + floor(lengthdir_x((i + 1) * 20, start_angle)),y + floor(lengthdir_y((i + 1) * 20, start_angle)), 1, 1, 0, c_white, 1);
}