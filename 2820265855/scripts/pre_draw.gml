if (swordfloat == 1){
draw_sprite_ext(sprite_get("sword"), 0, swordfollow.x, swordfollow.y, 1, 1, 0, c_white, 1);
}

//if (trail == 1){
//draw_sprite_ext(sprite_get("fspecial"), get_gameplay_time()/6, x, y, 1, 1, 0, c_white, 1)
//}

if (attack == AT_DSPECIAL){
    if (window == 2){
draw_sprite(sprite_get("command"), hud_option, x +25, y -125);
    }
}