var temp_x = x + 8;
var temp_y = y + 9;

alt_fix = player; //keep this line, on the online css the player is actually player 0, we later go on init_shader to check for this variable

if(get_player_color(player) >= 15 && get_player_color(player) <= 21){
	draw_sprite_ext(sprite_get("icon_gip_2"),1,x+183,y+114,2,2,0,-1,1);
}

muno_event_type = 6;
	user_event(14);