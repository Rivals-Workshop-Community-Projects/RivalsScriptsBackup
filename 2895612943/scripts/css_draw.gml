//
if("is_bite" not in self) exit;



if((scratch_hover && is_bite) || (bite_hover && !is_bite)){
    draw_sprite_ext(sprite_get("css_hover"), !is_bite, x + 8, y + 8, 2, 2, 0, c_white, 0.3);
}


var arrow_float = sin(degtorad(6 * (get_gameplay_time() % 40))) * 4;
if(!is_bite){
    draw_sprite_ext(sprite_get("arrow_white"), 0, x + 165 + arrow_float, y + 65, 2, 2, -90, get_player_hud_color(player), 1);
}else{
    draw_sprite_ext(sprite_get("arrow_white"), 0, x + 125 + arrow_float, y + 115, 2, 2, -90, get_player_hud_color(player), 1);
}
