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

//fighting
if (sprite_index == sprite_get("plat_fighting")) {

	rotate = spr_dir * 8 * sin(get_gameplay_time()/25)	
	draw_sprite_ext(sprite_get("plat_fighting_back"), 0, x, y+14, 2*spr_dir, 2, rotate, c_white, 1);
};


//flying
if (sprite_index == sprite_get("plat_flying")) {
	
	draw_sprite_ext(sprite_get("plat_flying_back"), 0, x, y, spr_dir, 1, 0, c_white, 1);
};

//poison
if (sprite_index == sprite_get("plat_poison")) {
	
	draw_sprite_ext(sprite_get("plat_poison_back"), 0, x, y, spr_dir, 1, 0, c_white, 1);
};

//rock
if (sprite_index == sprite_get("plat_rock")) {
	
	draw_sprite_ext(sprite_get("plat_rock_back"), 0, x, y, spr_dir, 1, 0, c_white, 1);
};

//bug
if (sprite_index == sprite_get("plat_bug")) {
	draw_sprite_ext(sprite_get("plat_bug_back"), 0, x, y, spr_dir, 1, 0, c_white, 1);
};

//ghost
if (sprite_index == sprite_get("plat_ghost")) {	
	draw_sprite_ext(sprite_get("plat_ghost_back"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
};

//steel
if (sprite_index == sprite_get("plat_steel")) {
	
	if (vsp = 0){
		draw_sprite_ext(sprite_get("plat_steel_back"), 0, x, y, spr_dir, 1, 0, c_white, 1);
	} else if (vsp > 0) {
		draw_sprite_ext(sprite_get("plat_steel_back"), 1, x, y, spr_dir, 1, 0, c_white, 1);
	} else if (vsp < 0) {
		draw_sprite_ext(sprite_get("plat_steel_back"), 2, x, y, spr_dir, 1, 0, c_white, 1);
	}
	
};

//fire
if (sprite_index == sprite_get("plat_fire")) {
	
	draw_sprite_ext(sprite_get("plat_fire_back"), 0, x, y, spr_dir, 1, 0, c_white, 1);
};


//water
if (sprite_index == sprite_get("plat_water")) {
	draw_sprite_ext(sprite_get("plat_water_back"), image_index, x, y, -spr_dir, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_get("plat_water_2"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
};

//grass
if (sprite_index == sprite_get("plat_grass")) {
	
	draw_sprite_ext(sprite_get("plat_grass_back"), 0, x, y, spr_dir, 1, 0, c_white, 1);
};

//psychic
if (sprite_index == sprite_get("plat_psychic")) {
	draw_sprite_ext(sprite_get("plat_psychic_back"), get_gameplay_time()/3, x, y, 2*spr_dir, 2, 0, c_white, 1);
};

//ice
if (sprite_index == sprite_get("plat_ice")) {
	
	draw_sprite_ext(sprite_get("plat_ice_back"), 0, x, y+2, spr_dir, 1, 0, c_white, 1);
};

//dragon
if (sprite_index == sprite_get("plat_dragon")) {
	draw_sprite_ext(sprite_get("plat_dragon_back"), 0, x, y, spr_dir, 1, 0, c_white, 1);
};

//dark
if (sprite_index == sprite_get("plat_dark")) {
	draw_sprite_ext(sprite_get("plat_dark_back"), 0, x, y, spr_dir, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_get("plat_dark_back_2"), 0, x, y, spr_dir, 1, 0, c_white, 1);
};


//fairy
if (sprite_index == sprite_get("plat_fairy")) {
	if (spr_dir == 1){	
		draw_sprite_ext(sprite_get("plat_fairy_back"), 1, x+1, y, spr_dir, 1, 0, c_white, 1);
	} else draw_sprite_ext(sprite_get("plat_fairy_back"), 0, x-1, y, spr_dir, 1, 0, c_white, 1);

	draw_sprite_ext(sprite_get("plat_fairy_back_2"), 0, x, y, spr_dir, 1, 0, c_white, 1);
};
