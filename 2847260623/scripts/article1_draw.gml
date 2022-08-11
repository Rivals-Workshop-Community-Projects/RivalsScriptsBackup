//
//draw_sprite_part_ext(sprite_img, subimg, left, top, draw_x, draw_y, x, y, img_scale_x, img_scale_x, color, alpha);

var left = ease_bounceOut(room_width/2, room_width/4, time, 30)/2;
if time >= 16{
	left = floor(ease_quartIn(400, 0, time-16, 15)/2);
}

var right = ease_bounceOut(room_width/2, room_width/2 + room_width/4, time, 30)/2;
if time >= 16{
	right = ease_quartIn(room_width/2+240, room_width, time-16, 15)/2;
}

var dx = round(temp_x)
var dy = round(temp_y)+144
dx -= 176-x_offset;
dy -= 288-y_offset;

draw_sprite_part_ext(sprite_drawn, mode, 0, 0, left - dx/2, 352, dx, dy, 2, 2, c_white, abs(dsin(glow_timer))/4 +glow + mode); // left outside
draw_sprite_part_ext(sprite_drawn, mode, right - dx/2, 0, room_width/4, 352, right*2, dy, 2, 2, c_white, abs(dsin(glow_timer))/4 +glow + mode); //right outside

draw_sprite_part_ext(sprite_drawn, !mode, left - dx/2, 0, room_width/4 - left, 352, left*2, dy, 2, 2, c_white, abs(dsin(glow_timer))/4 +glow + !mode); //left inside
draw_sprite_part_ext(sprite_drawn, !mode, room_width/4 - dx/2, 0, abs(room_width/4 - right), 352, room_width/2, dy, 2, 2, c_white, abs(dsin(glow_timer))/4 +glow + !mode); //right inside