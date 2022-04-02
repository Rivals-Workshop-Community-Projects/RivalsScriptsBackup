#macro C_TEXT $D18F9D

var cx = get_instance_x(asset_get("camera_obj"));
var tx = cx - 226 - (cx + obj_stage_main.scroll_x + 188) % 256;
var v = floor((cx + obj_stage_main.scroll_x - 1092) / 256) * 8;
draw_value(tx, y, v);
tx += 256;
v += 8;
draw_value(tx, y, v);
tx += 256;
v += 8;
draw_value(tx, y, v);
tx += 256;
v += 8;
draw_value(tx, y, v);


#define draw_value(x, y, v)
if (v < 0 || v > 9999) {
	return;
}
if (v > 999) {
	draw_sprite_ext(asset_get("spr_font_fName"), (floor(v / 1000) + 9) % 10, x, y, 1, 1, 0, C_TEXT, 1);
	x += 8;
}
if (v > 99) {
	draw_sprite_ext(asset_get("spr_font_fName"), (floor(v / 100) + 9) % 10, x, y, 1, 1, 0, C_TEXT, 1);
	x += 8;
}
if (v > 9) {
	draw_sprite_ext(asset_get("spr_font_fName"), (floor(v / 10) + 9) % 10, x, y, 1, 1, 0, C_TEXT, 1);
	x += 8;
}
draw_sprite_ext(asset_get("spr_font_fName"), (v + 9) % 10, x, y, 1, 1, 0, C_TEXT, 1);

