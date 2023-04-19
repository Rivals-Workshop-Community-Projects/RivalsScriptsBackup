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

//poison
if (type = 4 && vsp == 0 && state == 2) {
	draw_sprite_ext(sprite_bubble, 0, x_bubble, y_bubble, scale_bubble, scale_bubble, 0, c_white, transparency);

	if (state == 2 && y_bubble >= (ground_level - 5*tile)){
		y_bubble = y_bubble - 1;
	}

	if (y_bubble == (ground_level - 5*tile + 7)){
		y_bubble = ground_level;
		x_bubble = x;
	}

	if (y_bubble == ground_level){
		scale_bubble = 1*sin(get_gameplay_time()/3);
	}

	if (state == 3 && y_bubble >= (ground_level - 4*tile)) {
		transparency = transparency - 0.1;
	} else if (state == 3 && y_bubble < (ground_level - 4*tile)) {
		transparency = transparency - 0.5;
	}

	if (state == 3 && y_bubble == (ground_level - 5*tile)) {
		transparency = 0;
	}

};

//ghost
if (type == 8) {
	draw_sprite_ext(sprite_get("plat_ghost_2"), 0, x, y, spr_dir, 1, 0, c_white, 0.25);
};

//psychic
if (sprite_index == sprite_get("plat_psychic")) {
	draw_sprite_ext(sprite_get("plat_psychic_back"), get_gameplay_time()/3, x, y, 2*spr_dir, 2, 0, c_white, 1);
};


if (state == 3) {
	transparency = transparency - 0.01;
}