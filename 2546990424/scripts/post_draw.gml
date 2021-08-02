print (grab_timer);

shader_start();

//Draws the Turbine Max Charge Effect
if (turbine_cont >= 70){
	draw_sprite_ext(sprite_get("charged_front"), get_gameplay_time()*.4, x, y, 2, 2, 0, c_white, .85);	
}

//The Arrow when creating/aiming the Whirlwind
if (attack == AT_DSPECIAL && window == 2 && window_timer > 0 
&& (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
    if ((up_down || joy_pad_idle) && !right_down && !left_down && !down_down){
		draw_sprite_ext(sprite_get("arrows"), 0, x, y-80, 2, 2, 0, c_white, 1);
	}
	if (up_down && right_down){
		draw_sprite_ext(sprite_get("arrows"), 1, x+40, y-70, 2, 2, 0, c_white, 1);
	}
	if (right_down && !up_down && !down_down){
		draw_sprite_ext(sprite_get("arrows"), 2, x+50, y-40, 2, 2, 0, c_white, 1);
	}
	if (down_down && right_down && !left_down){
		draw_sprite_ext(sprite_get("arrows"), 3, x+40, y, 2, 2, 0, c_white, 1);
	}
	if (down_down && !right_down && !left_down && !up_down){
		draw_sprite_ext(sprite_get("arrows"), 4, x, y+20, 2, 2, 0, c_white, 1);
	}
	if (down_down && !right_down && left_down){
		draw_sprite_ext(sprite_get("arrows"), 5, x-40, y, 2, 2, 0, c_white, 1);
	}
	if (left_down && !up_down && !down_down){
		draw_sprite_ext(sprite_get("arrows"), 6, x-60, y-40, 2, 2, 0, c_white, 1);
	}
	if (up_down && left_down){
		draw_sprite_ext(sprite_get("arrows"), 7, x-40, y-70, 2, 2, 0, c_white, 1);
	}
	
}

if (turbine_gust_cont != 0){
	draw_sprite_ext(sprite_get("fspecial_projectile"), turbine_gust_cont-1, 
	turbine_gustx+(15*spr_dir), turbine_gusty, turbine_gust_spr, 1, 0, c_white, 1);
}

shader_end();
