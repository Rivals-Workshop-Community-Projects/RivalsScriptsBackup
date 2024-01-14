#region // Variables
var color = get_player_color(player);

var css_ex_x = x + 176;
var css_ex_y = y + 110;
#endregion

#region // CSS Details
switch(color){
	case 12:
		draw_sprite_ext(sprite_get("css_icons"), 2, css_ex_x, css_ex_y, 1, 1, 0, c_white, 1);
		break;
	case 13:
		draw_sprite_ext(sprite_get("css_icons"), 1, css_ex_x, css_ex_y, 1, 1, 0, c_white, 1);
		break;
	case 14:
		draw_sprite_ext(sprite_get("css_icons"), 3, css_ex_x, css_ex_y, 1, 1, 0, c_white, 1);
		break;
	case 26:
		draw_sprite_ext(sprite_get("css_icons"), 0, css_ex_x, css_ex_y, 1, 1, 0, c_white, 1);
		break;
}