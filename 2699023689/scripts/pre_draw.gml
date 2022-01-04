var nspecial_small = sprite_get("nspecial_fx_back");
var nspecial_big = sprite_get("nspecial_fx_big_back");


if (round(shine_timer/2) < 6){
    draw_sprite(nspecial_small,round(shine_timer/2),x,y)
}

if (round(big_shine_timer/3) < 5){
    draw_sprite(nspecial_big,round(big_shine_timer/3),x,y)
}