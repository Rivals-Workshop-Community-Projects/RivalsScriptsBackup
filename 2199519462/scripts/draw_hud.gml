var i = 0;
if bake_mode > 0 i = 1;
if bake_time < -1 i = 2;

if i == 1 {
	draw_sprite_ext(sprite_get("hud_dir"), effect-1, temp_x+192, temp_y-6, 1, 1, 0, c_gray, 1)
} else {
	draw_sprite(sprite_get("hud_dir"), effect-1, temp_x+192, temp_y-6)
}