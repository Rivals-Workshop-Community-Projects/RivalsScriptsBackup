if attack == AT_FSPECIAL and (window == 3 or window == 5){
    draw_sprite_ext( sprite_get("fspecial_effect"), (window_timer*0.4), x, y, 1 * spr_dir, 1, 0, c_white, 1 );
}

if (state == PS_ATTACK_AIR) and (attack == AT_DAIR) and (window == 2 or window == 3){
    draw_sprite_ext( sprite_get("fspecial_effect"), (waft_timer/2), x-32, y-32, 1, 1, 270, c_white, 1 );
}