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
if (!lite){
for (var i = 0; i < afterImageMax; ++i) if (afterImage[i] != -1 && afterImage[i].alpha > 0 && draw_indicator)
{
    shader_start();
    gpu_set_blendmode(bm_add);
    if (RedMode == true){
    	draw_sprite_ext(afterImage[i].sprite_index, afterImage[i].image_index, afterImage[i].x, afterImage[i].y, afterImage[i].spr_dir*1, 1, 0, $001DFF, afterImage[i].alpha/10);
    } else {
    	draw_sprite_ext(afterImage[i].sprite_index, afterImage[i].image_index, afterImage[i].x, afterImage[i].y, afterImage[i].spr_dir*1, 1, 0, $FFEA00, afterImage[i].alpha/10);
    }
    gpu_set_blendmode(bm_normal);
    shader_end();
}
}

//Sick ass Dair
/*
if (attack == AT_DAIR && window == 2){
	//First
	if (window_timer == 1){
		draw_sprite_ext(sprite_get("fx_dairslash"), 0,
		(x + 40*spr_dir), y, 1*spr_dir, 1, 0, -1, 1)
	} 
	//Second
	if (window_timer == 2){
		draw_sprite_ext(sprite_get("fx_dairslash"), 1,
		(x + 40*spr_dir), y, 1*spr_dir, 1, 0, -1, 1)
	} 
}
*/

/*
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
/*
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
/*
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
*/	
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
