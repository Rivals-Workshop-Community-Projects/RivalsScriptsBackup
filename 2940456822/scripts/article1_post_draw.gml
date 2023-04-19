//
//draw_sprite_ext(player_id.sprite_index, player_id.image_index, x + spr_dir * 2, y - 32, player_id.spr_dir, 1, 0, c_white, .8);


var col = c_black;
draw_rectangle_colour(x - 1, y, x + 1, y - 1000, col, col, col, col, false);
draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, 1)

if (!disabled) {
	draw_sprite_ext(sprite_get("hudArrow"), 0, x, y - 24, 1, 1, 0, player_id.hud_color, 1)
} else {
	draw_sprite_ext(sprite_get("hudArrow"), 0, x, y - 24, 1, 1, 0, c_black, 1)
}

cam_left = view_get_xview();
cam_right = view_get_xview() + view_get_wview();
cam_up = view_get_yview();
cam_down = view_get_yview() + view_get_hview() - 64;

var ball_x = clamp(x,  cam_left + cam_offset, cam_right - cam_offset)
var ball_y = clamp(y, cam_up + cam_offset, cam_down - cam_offset);

var ball_dir = 0;
var ball_spr = 0;


if (x < cam_left) {
	ball_dir = -90
	if (y < cam_up) {
		ball_spr = 1;
	} else if (y > cam_down) {
		ball_dir = 0
		ball_spr = 1;
	}
} else if (x > cam_right) {
	ball_dir = 90
	if (y < cam_up) {
		ball_dir = 180
		ball_spr = 1;
	} else if (y > cam_down) {
		ball_spr = 1;
	}
} else {
	if (y < cam_up) {
		ball_dir = 180
	} else if (y > cam_down) {
		ball_dir = 0
	}
}








if (x > cam_right || x < cam_left|| y > cam_down + 64 || y <  cam_up) {
	draw_sprite_ext(sprite_get("off_arrow"), ball_spr, ball_x, ball_y, 1, 1, ball_dir, player_id.hud_color, 1)
	draw_sprite_ext(sprite_get("off_ball"), 0, ball_x, ball_y, 1, 1, 0, c_white, 1)
}
