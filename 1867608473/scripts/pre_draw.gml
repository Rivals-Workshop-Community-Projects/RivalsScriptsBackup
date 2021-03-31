depth = 10;
var flag_anim = get_gameplay_time() / 8;

if flag_active{
    draw_sprite_ext(sprite_get("seggoflag"), flag_anim, flag_x, flag_y, 1, 1, 0, c_white, 1);
}