if kaioken{
	
	draw_outline(kaioken_red_dark);
	
}

else if ssj{
	
	draw_outline(ssjs[ssj].color);
	
}



#define draw_outline(col)

gpu_set_alphatestenable(true);
gpu_set_fog(1, col, 0, 1);

for (i = phone_fast; i < 2; i++){
	var rand_x = random_func(i + 00, 5, true) - 2;
	var rand_y = random_func(i + 10, 5, true) - 2;
	
	draw_sprite_ext(sprite_index, image_index, x + rand_x - clamp(hsp, -15, 15) * (i + 1), y + rand_y - vsp * (i + 1) + 4 + draw_y, image_xscale * 2.2, image_yscale * 2.2, spr_angle, c_white, 0.5);
}
    
gpu_set_fog(0, c_white, 0, 0);
gpu_set_alphatestenable(false);