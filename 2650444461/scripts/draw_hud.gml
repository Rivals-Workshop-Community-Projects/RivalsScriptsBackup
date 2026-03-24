draw_set_alpha(1)

//stock icon
var practicemode = get_match_setting(SET_PRACTICE) && !phone_playtest;
var stocks = get_player_stocks(player);
draw_sprite_ext(stock_pixel, 1, temp_x+4, temp_y+6, 14, 14, 0, get_player_hud_color(player), 1);
if(hud_death_timer > 0){draw_sprite_ext(stock_pixel, 1, temp_x+4, temp_y+6, 14, 14, 0, c_black, 0.5);}
if(stocks <= 0 || hud_death_timer > 0){
    gpu_set_fog(1, get_player_hud_color(player), -1, 9999);
    draw_sprite_ext(stock_icon, 0, temp_x-1, temp_y + (practicemode ? 2 : 0), 2, 2, 0, c_white, 1);
    gpu_set_fog(0, c_white, 0, 0);
    draw_sprite_ext(stock_icon, 0, temp_x-1, temp_y + (practicemode ? 2 : 0), 2, 2, 0, c_black, .5*(1+(stocks<=0)+(hud_death_timer > 0 && stocks >= 1)/2));
}else{
    shader_start();
    draw_sprite_ext(stock_icon, 0, temp_x-1, temp_y + (practicemode ? 2 : 0), 2, 2, 0, c_white, 1);
    shader_end();
}
if(hud_death_timer > 0 && stocks >= 1)hud_death_timer--;

muno_event_type = 5;
user_event(14);