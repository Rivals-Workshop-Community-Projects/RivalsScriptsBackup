var temp_x = x + 8;
var temp_y = y + 9;
var alt_cur = get_player_color(player);

//colored outlines for gb and gold alts
if (alt_cur == 7)		draw_sprite_ext(sprite_get("css_outline_ea"),1,x+8,y+8,2,2,0,-1,1);
else if (alt_cur == 8)	draw_sprite_ext(sprite_get("css_outline_gold"),1,x+8,y+8,2,2,0,-1,1);

//alt icons
draw_sprite_ext(sprite_get("css_icons"), alt_cur, temp_x + 162, temp_y + 96, 2, 2, 0, c_white, 1); 