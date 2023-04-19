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

//steel
if (type == 9) {

	draw_sprite_ext(sprite_get("bg_steel"), 0, x, y, 2*spr_dir, 2, rotate, c_white, 1);
	
	rotate = -spr_dir * get_gameplay_time()/3

	timer_gear_2 = timer_gear_2 + 4;
	
	if (state < 3){
		y_gear_2 = room_height/2 + 64;
	} else y_gear_2 = y_gear_2 + 2;

	if ((x_gear_2 <= ((room_width/2) - 430)) || (x_gear_2 >= ((room_width/2) + 430))){
		x_gear_2 = (room_width/2) + spr_dir*(room_width/2) + spr_dir*320 - spr_dir*timer_gear_2;
	}

	draw_sprite_ext(sprite_get("bg_steel_3"), 0, x_gear_2 + spr_dir*800, y_gear_2, 2*spr_dir, 2, 0, c_white, 1);
	draw_sprite_ext(sprite_get("bg_steel"), 0, x_gear_2, y_gear_2, 2*spr_dir, 2, -rotate + spr_dir*12, c_white, 1);
};

//water
if (type == 11) {

	draw_sprite_ext(sprite_get("bg_water_3"), get_gameplay_time()/5, x, y, spr_dir, 1, 0, c_white, 1);

};

//psychic
if (type == 14) {

	draw_sprite_ext(sprite_get("bg_psychic_4"), 0, x - spr_dir*100, y - 80, 2*spr_dir, 2, rotate, c_white, 1);
	
	rotate = -spr_dir * get_gameplay_time()
};