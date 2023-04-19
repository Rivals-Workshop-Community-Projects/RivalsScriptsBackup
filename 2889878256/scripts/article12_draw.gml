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
if (type == 4) {
	draw_sprite_ext(sprite_get("plat_poison_2_back"), 0, x, y, spr_dir, 1, 0, c_white, 1);
};


//bug
if (type == 7) {
	draw_sprite_ext(sprite_get("plat_bug_2_back"), 0, x, y, spr_dir, 1, 0, c_white, 1);
};

//ghost
if (type == 8) {
	draw_sprite_ext(sprite_get("plat_ghost_2"), 0, x, y, spr_dir, 1, 0, c_white, 0.5);
};

//steel
if (sprite_index == sprite_get("plat_steel_2")) {
	
	if (hsp = 0){
		draw_sprite_ext(sprite_get("plat_steel_2_back"), 0, x, y, spr_dir, 1, 0, c_white, 1);
	} else if (hsp == spr_dir*1) {
		draw_sprite_ext(sprite_get("plat_steel_2_back"), 1, x, y, spr_dir, 1, 0, c_white, 1);
	} else if (hsp == -spr_dir*1) {
		draw_sprite_ext(sprite_get("plat_steel_2_back"), 2, x, y, spr_dir, 1, 0, c_white, 1);
	}
	
};

//fire
if (sprite_index == sprite_get("plat_fire_2")) {
	draw_sprite_ext(sprite_get("plat_fire_2_back"), 0, x, y, spr_dir, 1, 0, c_white, 1);
};

//water
if (sprite_index == sprite_get("plat_water")) {
	draw_sprite_ext(sprite_get("plat_water_back"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_get("plat_water_2"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
};

//grass
if (sprite_index == sprite_get("plat_grass_2")) {
	draw_sprite_ext(sprite_get("plat_grass_2_back"), 0, x, y, spr_dir, 1, 0, c_white, 1);
};

//psychic
if (sprite_index == sprite_get("plat_psychic")) {
	draw_sprite_ext(sprite_get("plat_psychic_back"), get_gameplay_time()/3, x, y, 2*spr_dir, 2, 0, c_white, 1);
};

//dragon
if (sprite_index == sprite_get("plat_dragon_2")) {
	draw_sprite_ext(sprite_get("plat_dragon_2_back"), 0, x, y, spr_dir, 1, 0, c_white, 1);
};

//dark
if (sprite_index == sprite_get("plat_dark_2")) {
	draw_sprite_ext(sprite_get("plat_dark_2_back"), 0, x, y, spr_dir, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_get("plat_dark_2_back_2"), 0, x, y, spr_dir, 1, 0, c_white, 1);
};
