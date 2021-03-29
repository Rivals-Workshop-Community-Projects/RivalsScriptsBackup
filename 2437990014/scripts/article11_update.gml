//airship silhouettes
x += vX
fx_pos_x += vX;
if(x < -100){
    instance_destroy();
    exit;
}

if(--fx_timer < 0){
    fx_timer = 50//25 + random_func(0, 200, true);
    fx_start_index = fx_img_num * random_func(0, 32/fx_img_num, true);
    fx_index = fx_start_index;
    // + 100 - random_func(0, 200, true);
    fx_pos_y = y// + 100 - random_func(0, 200, true);
    fx_alpha = 1;
}
else{
    if(fx_index + fx_anim_speed < fx_start_index + fx_img_num){
        fx_index += fx_anim_speed;
    }
    else{
        fx_alpha = 0;
    }
}