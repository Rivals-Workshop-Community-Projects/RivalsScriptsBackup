// pre-draw
//Markers
if has_rune("G") {
shader_start();
if bluemark > 0 or redmark > 0{
    draw_sprite(sprite_get("RBmark2"), 0,  x ,  y); 
    if bluemark > 0 {
    	draw_sprite(sprite_get("RBmark2"), 1 + (bluemark - 1)*3 + (get_gameplay_time()%15)/5,  x , y); 
    }
    if redmark > 0 {
    	draw_sprite(sprite_get("RBmark2"), 10 + (redmark - 1)*3 + (get_gameplay_time()%15)/5,  x ,  y); 
    }
}
    if rbmark = 1 {
    	draw_sprite(sprite_get("RBmark2"), 8*6 + (get_gameplay_time()%15)/5,  x ,  y); 
    }
shader_end(); 
}
//After Images
	////////////////////////////////////////////Dattack////////////////////////////////////////////////////////
    if (RedMode == false && attack = AT_DATTACK && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR )) {

	shader_start();
	for(var m = 0; m < array_length_1d(blur); m++) { 
		var _img = blur[m];
		var _percent = 1 - (m / array_length_1d(blur));
		draw_sprite_ext(_img[0], _img[1], _img[2], _img[3], _img[4], _img[5], _img[6], $FFD46E, _img[8] * _percent);
	}
	shader_end();
    }
	
    if (RedMode == true && attack = AT_DATTACK && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR )) {

	shader_start();
	for(var m = 0; m < array_length_1d(blur); m++) {
		var _img = blur[m];
		var _percent = 1 - (m / array_length_1d(blur));
		draw_sprite_ext(_img[0], _img[1], _img[2], _img[3], _img[4], _img[5], _img[6], $231DEA, _img[8] * _percent);
	}
	shader_end();

	}
	////////////////////////////////////////////Utilt////////////////////////////////////////////////////////
	if (RedMode == false && attack = AT_UTILT && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR )) {
		
	shader_start();
	for(var m = 0; m < array_length_1d(blur); m++) {
		var _img = blur[m];
		var _percent = 1 - (m / array_length_1d(blur));
		draw_sprite_ext(_img[0], _img[1], _img[2], _img[3], _img[4], _img[5], _img[6], $E6A100, _img[8] * _percent);
	}
	shader_end();
	}
	
	if (RedMode == true && attack = AT_UTILT && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR )) {
		
	shader_start();
	for(var m = 0; m < array_length_1d(blur); m++) {
		var _img = blur[m];
		var _percent = 1 - (m / array_length_1d(blur));
		draw_sprite_ext(_img[0], _img[1], _img[2], _img[3], _img[4], _img[5], _img[6], $231DEA, _img[8] * _percent);
	}
	shader_end();
	}
	////////////////////////////////////////////Dair////////////////////////////////////////////////////////
	
	if (RedMode == false && attack = AT_DAIR && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR )) {
            
	shader_start();
	for(var m = 0; m < array_length_1d(blur); m++) {
		var _img = blur[m];
		var _percent = 1 - (m / array_length_1d(blur));
		draw_sprite_ext(_img[0], _img[1], _img[2], _img[3], _img[4], _img[5], _img[6], $E6A100, _img[8] * _percent);
	}
	shader_end();

	}
	
	if (RedMode == true && attack = AT_DAIR && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR )) {
            
	shader_start();
	for(var m = 0; m < array_length_1d(blur); m++) {
		var _img = blur[m];
		var _percent = 1 - (m / array_length_1d(blur));
		draw_sprite_ext(_img[0], _img[1], _img[2], _img[3], _img[4], _img[5], _img[6], $231DEA, _img[8] * _percent);
	}
	shader_end();

	}
	////////////////////////////////////////////Fspecial////////////////////////////////////////////////////////
	/*
	if (attack = AT_FSPECIAL && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR )) {
            
	shader_start();
	for(var m = 0; m < array_length_1d(blur); m++) {
		var _img = blur[m];
		var _percent = 1 - (m / array_length_1d(blur));
		draw_sprite_ext(_img[0], _img[1], _img[2], _img[3], _img[4], _img[5], _img[6], c_teal, _img[8] * _percent);
	}
	shader_end();
	
	}
	*/
	if (attack = AT_FSPECIAL_2 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR )) {
            
	shader_start();
	for(var m = 0; m < array_length_1d(blur); m++) {
		var _img = blur[m];
		var _percent = 1 - (m / array_length_1d(blur));
		draw_sprite_ext(_img[0], _img[1], _img[2], _img[3], _img[4], _img[5], _img[6], c_red, _img[8] * _percent);
	}
	shader_end();
	}
	/*
	
	if (attack = AT_USPECIAL && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR )) {
            if (window = 2)
	shader_start();
	for(var m = 0; m < array_length_1d(blur); m++) {
		var _img = blur[m];
		var _percent = 1 - (m / array_length_1d(blur));
		draw_sprite_ext(_img[0], _img[1], _img[2], _img[3], _img[4], _img[5], _img[6], _img[7], _img[8] * _percent);
	}
	shader_end();

	}
	*/
	if (attack = AT_USPECIAL_2 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR )) {
            
	shader_start();
	for(var m = 0; m < array_length_1d(blur); m++) {
		var _img = blur[m];
		var _percent = 1 - (m / array_length_1d(blur));
		draw_sprite_ext(_img[0], _img[1], _img[2], _img[3], _img[4], _img[5], _img[6], $231DEA, _img[8] * _percent);
	}
	shader_end();

	}
	////////////////////////////////////////////Nair////////////////////////////////////////////////////////
	
	if (RedMode = false && attack = AT_NAIR && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR )) {
            
	shader_start();
	for(var m = 0; m < array_length_1d(blur); m++) {
		var _img = blur[m];
		var _percent = 1 - (m / array_length_1d(blur));
		draw_sprite_ext(_img[0], _img[1], _img[2], _img[3], _img[4], _img[5], _img[6], $E6A100, _img[8] * _percent);
	}
	shader_end();

	}

	
	if (RedMode = true && attack = AT_NAIR && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR )) {
            
	shader_start();
	for(var m = 0; m < array_length_1d(blur); m++) {
		var _img = blur[m];
		var _percent = 1 - (m / array_length_1d(blur));
		draw_sprite_ext(_img[0], _img[1], _img[2], _img[3], _img[4], _img[5], _img[6], $231DEA, _img[8] * _percent);
	}
	shader_end();

	}
	
//Marker Effects
shader_start();

if attack == AT_NSPECIAL{
}
    //rope_dir = point_direction(x,y,hook.x,hook.y);
shader_end();


//Recharge Bar
if !has_rune("G") {
if (phone_cheats[dspecial_nocd] == 0) {
var recharge_bar = sprite_get("RechargeR");

if (RedMode == true){
	recharge_bar = sprite_get("RechargeB");
}

if(recharged = 0){
	shader_start();
	draw_sprite_ext(recharge_bar, clamp(recoverytimer, 0, 29), x, y, 1, 1, 0, c_white, 0.5);
	shader_end();
}
}
}
#define draw_rectangle(x1, y1, x2, y2, x3, y3, x4, y4, colour1, colour2)
{
	draw_triangle_colour(x1, y1, x2, y2, x3, y3, colour1, colour1, colour2, false);
	draw_triangle_colour(x2, y2, x3, y3, x4, y4, colour1, colour2, colour2, false);
}

#define GetColourPlayer(_index)
{
	return make_colour_rgb(get_color_profile_slot_r(get_player_color(player), _index),get_color_profile_slot_g(get_player_color(player), _index),get_color_profile_slot_b(get_player_color(player), _index));
	
}

#define FlagPart(_colour, _heightRatio, _xOffsetRatio)
{
	gpu_set_fog(1, _colour, 0, 1);
	for (i = -1; i < 2; ++i) for (j = -1; j < 2; ++j)
		draw_sprite_part_ext(sprite_index, image_index, 0, sprite_height*_xOffsetRatio, sprite_width*spr_dir, sprite_height*_heightRatio, x+i*2+draw_x-sprite_xoffset*(1+small_sprites), y+j*2+(draw_y-sprite_yoffset+sprite_height*_xOffsetRatio)*(1+small_sprites), spr_dir*(1+small_sprites), 1+small_sprites, c_white, 1);
}