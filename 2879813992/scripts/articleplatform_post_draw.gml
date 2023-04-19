var col_w = c_white;
var col_b = c_black;


if(state == 4){
    //if(!on_shield){
draw_sprite_ext(sprite_get("_pho_cooldown_arrow"), 0, x - 4, y - 40, 1, 1, 0, get_player_hud_color(player), 1);
/*}    if(on_shield){
draw_sprite_ext(sprite_get("_pho_cooldown_arrow"), 0, x - 4, y - 40, 1, 1, 0, c_dkgray, 1);
}*/
}


//draw_debug_text(floor(x), floor(y)-24,string(on_shield));
//draw_rectangle_color(floor(x)-15,floor(y)+45,floor(x)+15,floor(y)-45,c_white,c_white,c_white,c_white,c_white);