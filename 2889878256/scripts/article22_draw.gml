//1 - normal
//2 - fighting
//3 - flying
//4 - poison
//5 - ground
//6 - rock
//7 - bug
//8 - ghost
//9 - steel
//10 - fire
//11 - water
//12 - grass
//13 - electric
//14 - psychic
//15 - ice
//16 - dragon
//17 - dark
//18 - fairy

//flying
if (type == 3) {

	draw_sprite_ext(sprite_get("bg_flying_3"), 0, x, y, 2*spr_dir, 2, rotate, c_white, 1);
	draw_sprite_ext(sprite_get("bg_flying_3"), 0, x, y, 2*spr_dir, 2, rotate + 120, c_white, 1);
	draw_sprite_ext(sprite_get("bg_flying_3"), 0, x, y, 2*spr_dir, 2, rotate + 240, c_white, 1);
	
	rotate = -spr_dir * get_gameplay_time()*2
};

//fire
if (type == 10) {
	draw_sprite_ext(sprite_get("bg_fire_2"), get_gameplay_time()/4, x + spr_dir * 4 * tile, y, 2*spr_dir, 2, 0, c_white, 1);
	draw_sprite_ext(sprite_get("bg_fire_2"), get_gameplay_time()/4, x + spr_dir * 6 * tile, y, 2*spr_dir, 2, 0, c_white, 1);
	draw_sprite_ext(sprite_get("bg_fire_2"), get_gameplay_time()/4, x + spr_dir * 8 * tile, y, 2*spr_dir, 2, 0, c_white, 1);
};

//electric
if (type == 13) {
	draw_sprite_ext(sprite_get("bg_electric_3"), get_gameplay_time()/8, x, y - 122, 2*spr_dir, 2, 0, c_white, 0.7);
};