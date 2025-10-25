if meth_alpha > 0{
	draw_sprite_ext(sprite_get("dspecial_lab_ui_meth"), 0, x, y + 4, 2, 2, 0, c_white, meth_alpha);
	draw_set_alpha(meth_alpha);
	draw_line_width_color(x - 41, y + 10, x - 41 + 62*meth/player_id.meth_cook_time, y + 10, 2, $FFF70F, $FFF70F);
	draw_set_alpha(1);
}
if state == 2 draw_sprite_ext(sprite_get("dspecial_jesse"), (timer >= 16 || meth >= player_id.meth_cook_time || instance_exists(meth_hb)? (meth >= player_id.meth_cook_time || instance_exists(meth_hb)? clamp(98 + timer/6, 98, 101): 5 + ((timer-16)/8)%89): timer/4), x, y, 2*spr_dir, 2, 0, c_white, 1);
if state == 3 && meth && timer < 16 draw_sprite_ext(sprite_get("dspecial_jesse"), 94 + timer/4, x, y, 2*spr_dir, 2, 0, c_white, 1);
if state == 4 draw_sprite_ext(sprite_get("dspecial_jesse"), 102 + (timer/6), x, y, 2*spr_dir, 2, 0, c_white, 1);