if dest_num && other_dest != noone{
	
	drawLineTo(other_dest, 1, 0);
	
	var progress = car_time / car_time_max;
	var flip = (player_id.phone_attacking && player_id.attack == AT_USPECIAL && player_id.uspecial_target != self) ? -1 : 1;
	var wobble = sin(player_id.state_timer) * 5 * (player_id.phone_attacking && player_id.attack == AT_USPECIAL)
	
	draw_sprite_ext(player_id.spr_dest_car,
		exist_timer / 4,
		lerp(other_dest.x, x, progress) + wobble,
		lerp(other_dest.y, y, progress),
		(sign(x - other_dest.x) + (x == other_dest.x)) * flip,
		1, 
		point_direction(other_dest.x, other_dest.y, x, y) + (x < other_dest.x) * 180,
		c_white,
		1
		);
}



if !dest_num && other_dest == noone && state != PS_ATTACK_AIR && exist_timer > 1{
	drawLineTo(player_id, 0.5, -10);
}



#define drawLineTo(target, alpha, y_off)

with player_id shader_end();
	
var col = (player_id.phone_attacking && player_id.attack == AT_DSPECIAL) ? (player_id.window == 2 && player_id.window_timer < 5 ? c_white : player_id.red_color) : player_id.blue_color;

draw_set_alpha(alpha);

draw_line_width_color(x, y, target.x, target.y + y_off, 12, c_white, c_white);
draw_circle_color(x, y, 10, c_white, c_white, 0);
draw_circle_color(target.x, target.y + y_off, 10, c_white, c_white, 0);

draw_line_width_color(x, y, target.x, target.y + y_off, 8, col, col);
draw_circle_color(x, y, 8, col, col, 0);
draw_circle_color(target.x, target.y + y_off, 8, col, col, 0);

draw_set_alpha(1);

with player_id shader_start();