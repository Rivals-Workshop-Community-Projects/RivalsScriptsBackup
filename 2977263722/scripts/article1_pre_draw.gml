var plat_on = player_id.plat_on;
var plat_x = player_id.plat_x;
var plat_y = player_id.plat_y;
var plat_y_offset = player_id.plat_y_offset;
var plat_y_offset2 = player_id.plat_y_offset2;
var plat_dir = player_id.plat_dir;
var plat_sprite = player_id.plat_sprite;

with oPlayer {
    if depth > other.depth other.depth = depth;
}

if plat_on > 0 {
    draw_sprite_ext(sprite_get("plat_track"), 0, plat_x, plat_y - (80*plat_y_offset2), 1, 1, 0, c_white, (plat_on>5? 1 : 0.5));
	draw_sprite_ext(plat_sprite, 0, plat_x, plat_y - plat_y_offset, plat_dir*2, 2, 0, c_white, 1);
}