//other_pre_draw
if ("other_player_id" in self && "thevoid" in other_player_id && other_player_id.thevoid)
{
    draw_rectangle_color(0,0,room_width,room_height,c_gray,c_gray,c_gray,c_gray,false);
    draw_rectangle_color(0,0,room_width,200,c_black,c_black,c_black,c_black,false);
    draw_rectangle_color(0,room_height-200,room_width,room_height,c_black,c_black,c_black,c_black,false);
	draw_indicator = false;
}

if ("other_player_id" in self && "instakill" in other_player_id && other_player_id.instakill)
{
    draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
    draw_rectangle_color(x - 20,0,x+20,room_height,c_red,c_red,c_red,c_red,false);
    draw_rectangle_color(0,y - floor(char_height/2) - 20,room_width,y - floor(char_height/2) + 20,c_red,c_red,c_red,c_red,false);
	draw_indicator = false;
}