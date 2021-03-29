//airship silhouettes
//disable_movement = 1;
s = random_func(0, 2, true);
vX = 0
if(s == 0){
    sprite_index = sprite_get("airship_sil");
    vX = -0.5;
}
else{
    sprite_index = sprite_get("airship_sil2");
    vX = -0.45
}
image_xscale = 2;
image_yscale = 2;
x = 1000;
y = 120 + random_func(0, 60, true);

parallax_x = -0.6
parallax_y = -0.6

depth = 34

fx_timer = 25 + random_func(0, 200, true);
fx_img_num = 4;
fx_index = 0;
fx_start_index = 0;
fx_anim_speed = 0.2;
fx_pos_x = x;
fx_pos_y = y;
fx_alpha = 0;

