//
var col = c_black;
if instance_exists(mic_proj) {
	draw_rectangle_colour(x + spr_dir * 38, y - 24, mic_proj.x, y - 23, col, col, col, col, false);
}

if (attack == AT_FSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && wall_tether && window == 2) {
	draw_rectangle_colour(x + spr_dir * 38, y - 24, tether_to_x, y - 23, col, col, col, col, false);
}