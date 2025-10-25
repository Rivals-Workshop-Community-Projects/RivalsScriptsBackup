//var playerAlt = "currAlt" in self ? currAlt : get_player_color(player); whoops wrong script
var temp_x = x + 8;
var temp_y = y + 9;

if ("syncUID" in id && syncUID == 5606 && instance_exists(cursor_id))
{
	draw_sprite_ext(
			sprite_get("dash_icon"), 
			buttonInfo.hover + dash_toggle * 2, 
			temp_x + buttonInfo.x, 
			temp_y + buttonInfo.y, 
			2, 2, 0, c_white, 1);
}
		