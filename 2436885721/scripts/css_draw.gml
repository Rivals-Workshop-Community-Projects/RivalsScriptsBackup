var current_alt = get_player_color(player);
var temp_x = floor(x+10);
var temp_y = floor(y+10);

draw_sprite_ext(sprite_get("charselectbg"),0,temp_x-2,temp_y-2,2,2,0,-1,1);

if(current_alt == 12 || current_alt == 13){
    draw_sprite_ext(sprite_get("charselect2"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
} else {
    draw_sprite_ext(sprite_get("charselect1"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
}