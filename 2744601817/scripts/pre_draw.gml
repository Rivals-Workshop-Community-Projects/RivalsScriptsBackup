// pre-draw

var blend = gpu_get_blendmode(); //gets the current blend mode
gpu_set_blendmode(bm_add); //use additive blending for next draw_* calls
gpu_set_blendmode(blend); //goes back to whatever blend mode you were in.

if (attack == AT_DATTACK){
    if window == 2 {
        draw_sprite_ext(sprite_index, image_index, x, y, 2*spr_dir, 2, 0, c_blue, 1)
    }
}

//Recharge Bar
var recharge_bar = sprite_get("_rechargeR");

if (red_mode){
	recharge_bar = sprite_get("_rechargeB");
}

if(recharged = 0){
	shader_start();
	draw_sprite_ext(recharge_bar, clamp(recoverytimer, 0, 29), x, y, 1, 1, 0, c_white, 0.5);
	shader_end();
}

//After Images -----------------------------------------------------------------

var temp_afterimage = noone;
if (!dattack_jump_vfx){
	temp_afterimage = afterimage;
} else {
	temp_afterimage = afterimage;
}
	if (state == PS_FIRST_JUMP && state_timer <= 8
	|| state == PS_DASH_START && state_timer >= 2
	|| state == PS_AIR_DODGE 
	|| state == PS_ROLL_FORWARD
	|| fast_falling 
	|| attack == AT_DATTACK && window <= 4 && state == PS_ATTACK_GROUND
	|| attack == AT_UTILT && state == PS_ATTACK_GROUND
	|| attack == AT_UTILT && state == PS_ATTACK_AIR
	|| attack == AT_DAIR && state == PS_ATTACK_AIR
	|| dattack_jump_vfx == true && state == 3 && state_timer >= 2
	)
	{
		gpu_set_blendmode(bm_add);
    	for(var m = 0; m < array_length_1d(temp_afterimage); m++)
		{
			var _img = temp_afterimage[m];
			var _percent = 1 - (m / array_length_1d(temp_afterimage));
			draw_sprite_ext(_img[0], _img[1], _img[2], _img[3], _img[4]*2, _img[5]*2, _img[6], _img[7], _img[8] * _percent);
		}
    	gpu_set_blendmode(bm_normal);
    	
	}
	
//Purple After Images

if (red_mode == 2){
	{
		gpu_set_blendmode(bm_add);
		for(var m = 0; m < array_length_1d(afterimage); m++)
		{
			var _img = afterimage[m];
			var _percent = 1 - (m / array_length_1d(afterimage));
			draw_sprite_ext(_img[0], _img[1], _img[2], _img[3], _img[4]*2, _img[5]*2, _img[6], _img[7], _img[8] * _percent);
		}
    	gpu_set_blendmode(bm_normal);
	}
}
//Fspecial Line ----------------------------------------------------------------

var _kunai_state = 0;
if (attack == AT_FSPECIAL || attack == AT_FSPECIAL_2){
	if (window == 5 || window == 6){
		with(asset_get("obj_article1")){
			if (state == 7){
				_kunai_state = 1;
			} else {
				_kunai_state = 0;
			}
		}
		if (!kunai_proj){
			if (kunai.wall = 0){
				if (!_kunai_state){
					drawLineTo(asset_get("obj_article1"), 1, - 28);
				} else {
					drawLineTo(asset_get("obj_article1"), 1, - 14);
				}
			} else {
				if (!_kunai_state){
					drawLineTo(asset_get("obj_article1"), 1, - 16);
				} else {
					drawLineTo(asset_get("obj_article1"), 1, - 16);
				}
			}
		} else {
			drawLineTo(kunai_proj, 1, 0);
		}
	}
}

//// [ 💧 BLU PARTICLE SYSTEM 💧 ] ////

for (var i = 0; i < ds_list_size(bps_pre_active_parts); i+= 1) {
	temp_part = bps_pre_active_parts[| i]
	if (temp_part.init == false) {
		temp_part.init = true
		temp_part.angle = (temp_part.min_angle + random_func_2(i, (abs(temp_part.min_angle-temp_part.max_angle)), false))-270
		temp_part.speed = temp_part.min_speed + random_func(i, (abs(temp_part.min_speed-temp_part.max_speed)), false)
		print(temp_part.angle)
	} else if (temp_part.life == temp_part.lifetime) {
		ds_list_delete(bps_pre_active_parts, i)
	} else {
		if (not bps_game_paused) {
			temp_part.gravity += temp_part.weight
			old_x = temp_part.x
			old_y = temp_part.y
			temp_part.x += sin(degtorad(temp_part.angle))*(temp_part.speed*temp_part.dir)
			temp_part.y += (cos(degtorad(temp_part.angle))*temp_part.speed)+temp_part.gravity
			new_x = temp_part.x
			new_y = temp_part.y
			temp_part.x = temp_part.x&~2
			temp_part.y = temp_part.y&~2
			temp_part.life += 1
			temp_part.spr_angle = point_direction(new_x, new_y, old_x, old_y)-90
		}
		shader_start()
		draw_sprite_ext(temp_part.sprite, 0, temp_part.x, temp_part.y, (small_sprites+1), (small_sprites+1), (temp_part.spr_angle), c_white, 1)
		shader_end()
		ds_list_set(bps_pre_active_parts, i, temp_part)
 	}
}

/////////////////////////////////

#define drawLineTo(target, alpha, y_off)

if (!red_mode){
	var col = $b93c00;
} else {
	var col = $090499;	
}
var _width = 0

if (window == 6){
	if (!red_mode){
		col = $ffe9ac;
	} else {
		col = $231dea;
	}
	_width = 8;
}

//This is so scuffed
if (window == 5){
	if (window_timer <= 5){
		_width = 1
	} else if (window_timer <= 10){
		_width = 3
	} else if (window_timer <= 15){
		_width = 5
	} else if (window_timer <= 20){
		_width = 6
	} else {
		_width = 7
	}
}
draw_set_alpha(alpha);

//draw_line_width_color(x, y - 35, target.x, target.y + y_off, 12, c_white, c_white);
//draw_circle_color(x, y, 10, c_white, c_white, 0);
//draw_circle_color(target.x, target.y + y_off, 10, c_white, c_white, 0);


draw_line_width_color(x, y - 35, kunai.x, kunai.y + y_off, _width, col, col);
//draw_circle_color(x, y, 8, col, col, 0);
//draw_circle_color(target.x, target.y + y_off, 8, col, col, 0);

draw_set_alpha(1);
