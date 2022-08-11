//
//draw_sprite_part_ext(sprite_img, subimg, left, top, draw_x, draw_y, x, y, img_scale_x, img_scale_x, color, alpha);

stage_time = obj_stage_main.time;
stage_mode = obj_stage_main.mode;
var music_change = obj_stage_main.music_change;

var left = ease_bounceOut(room_width/2, room_width/4, stage_time, 30)/2;
if stage_time >= 16{
	left = floor(ease_quartIn(400, 0, stage_time-16, 15)/2);
}

var right = ease_bounceOut(room_width/2, room_width/2 + room_width/4, stage_time, 30)/2;
if stage_time >= 16{
	right = ease_quartIn(room_width/2+240, room_width, stage_time-16, 15)/2;
}

var dx = round(temp_x)
var dy = round(temp_y)+80
dx -= 176-x_offset;
dy -= 288-y_offset;
var direction =  x_speed/abs(x_speed);

if direction == 1 {
	draw_sprite_part_ext(sprite_drawn, stage_mode, -move_x, 0, abs(left - dx/2), 352, dx, dy, 2, 2, c_white, 1); // left outside
} else if direction == -1{
	draw_sprite_part_ext(sprite_drawn, stage_mode, 0, 0, left - dx/2 - move_x, 352, dx+move_x*2, dy, 2, 2, c_white, 1); //left outside
}
draw_sprite_part_ext(sprite_drawn, stage_mode, right - dx/2 - move_x, 0, room_width/4, 352, right*2, dy, 2, 2, c_white, 1); //right outside

draw_sprite_part_ext(sprite_drawn, !stage_mode, left - dx/2 - move_x, 0, room_width/4 - left, 352, left*2, dy, 2, 2, c_white, 1); //left inside
draw_sprite_part_ext(sprite_drawn, !stage_mode, room_width/4 - dx/2 - move_x, 0, abs(room_width/4 - right), 352, room_width/2, dy, 2, 2, c_white, 1); //right inside

/*
draw_debug_text (640, y+32, string( music_change ));
draw_debug_text (640, y+64, string( (left/4) ));
draw_debug_text (640, y+96, string( dx+move_x*2 ));
draw_debug_text (640, y+16, string( (dx- room_width/2) + (left) ));

draw_debug_text (640+128, y+32, string( left - dx/2 - move_x ));
draw_debug_text (640+128, y+64, string( room_width/4 - left ));
draw_debug_text (640+128, y+96, string( left*2 ));