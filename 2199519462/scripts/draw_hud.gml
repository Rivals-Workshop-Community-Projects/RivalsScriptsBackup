var i = 0;
if bake_mode > 0 i = 1;
if bake_time < -1 i = 2;
var col = c_white;
if i == 1 {
	col = c_gray;
}
if move_cooldown[AT_DSPECIAL] {
	draw_sprite_ext(sprite_get("tinydough"), effect-1, temp_x+164, temp_y-6, 1, 1, 0, c_gray, 1)
} else {
	draw_sprite(sprite_get("tinydough"), effect-1, temp_x+164, temp_y-6)
}

switch(effect) {
	case 1: //up
	draw_sprite_ext(sprite_get("hud_dir"), effect-1, temp_x+164, temp_y-14, 1, 1, 0, col, 1)
	break;
	case 2: //down
	draw_sprite_ext(sprite_get("hud_dir"), effect-1, temp_x+164, temp_y+12, 1, 1, 0, col, 1)
	break;
	case 3: //in
	draw_sprite_ext(sprite_get("hud_dir"), effect-1, temp_x+140, temp_y-6, 1, 1, 0, col, 1)
	break;
	case 4: //out
	draw_sprite_ext(sprite_get("hud_dir"), effect-1, temp_x+188, temp_y-6, 1, 1, 0, col, 1)
	break;
}
