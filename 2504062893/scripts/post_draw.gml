var sub_img = floor(get_gameplay_time()/4);
var wiggle = 12*sin(get_gameplay_time()/8);

if (caught_fspecial == 1){
    draw_sprite_ext(sprite_get("throwingstar_boosted"), sub_img, x - 16*spr_dir, y - 32 + wiggle, spr_dir, 1, 0, c_white, 1);
}