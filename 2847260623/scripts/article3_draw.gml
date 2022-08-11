//
//draw_sprite_part_ext(sprite_img, subimg, left, top, draw_x, draw_y, x, y, img_scale_x, img_scale_x, color, alpha);

stage_time = obj_stage_main.time;
stage_mode = obj_stage_main.mode;

var left = ease_bounceOut(room_width/2, room_width/4, stage_time, 30)/2;
if stage_time >= 16{
	left = floor(ease_quartIn(400, 0, stage_time-16, 15)/2);
}

var right = ease_bounceOut(room_width/2, room_width/2 + room_width/4, stage_time, 30)/2;
if stage_time >= 16{
	right = ease_quartIn(room_width/2+240, room_width, stage_time-16, 15)/2;
}

if move_x = room_width/2{
	move_x = 0;
}

var dx = round(temp_x)
var dy = round(temp_y)+80
dx -= 176;
dy -= 288;

draw_sprite_ext(sprite_get("time_shift_bar"), stage_mode, left*2, temp_y+50, 1, 1, 0, c_white, trans); // left

draw_sprite_ext(sprite_get("time_shift_bar"), stage_mode, right*2, temp_y+50, 1, 1, 0, c_white, trans); //right

//draw_debug_text (640, y+32, string( x ));
//draw_debug_text (640 + 128, y+32, string( time ));