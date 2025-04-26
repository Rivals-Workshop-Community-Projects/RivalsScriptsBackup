//
switch type {
	case 0:
		draw_sprite_ext(sprite_index, 0, x-2, y, image_xscale, image_yscale, image_angle, $000C74, 1);
		draw_sprite_ext(sprite_index, 0, x+2, y, image_xscale, image_yscale, image_angle, $000C74, 1);
		draw_sprite_ext(sprite_index, 0, x, y-2, image_xscale, image_yscale, image_angle, $000C74, 1);
		draw_sprite_ext(sprite_index, 0, x, y+2, image_xscale, image_yscale, image_angle, $000C74, 1);
		draw_sprite_ext(sprite_index, 1, x-2, y, image_xscale, image_yscale, image_angle*.5, c_black, 1);
		draw_sprite_ext(sprite_index, 1, x+2, y, image_xscale, image_yscale, image_angle*.5, c_black, 1);
		draw_sprite_ext(sprite_index, 1, x, y-2, image_xscale, image_yscale, image_angle*.5, c_black, 1);
		draw_sprite_ext(sprite_index, 1, x, y+2, image_xscale, image_yscale, image_angle*.5, c_black, 1);
		break;
	case 1:
		switch state {
			case 0:
				var scale = lerp(0,1,state_timer/10);
				var alpha = 1;
				break;
			case 1:
				var scale = 1+dsin(state_timer*2)*.1;
				var alpha = 1;
				break;
			case 2:
				var scale = state_timer < 16 ? lerp(1.1,1.2,state_timer/16) : 1.2;
				var alpha = state_timer < 16 ? lerp(1,0,state_timer/16) : 0;
				break;
		}
		
		draw_sprite_ext(sprite_get("fx_shockwave_impact"), get_gameplay_time()*.35, x, y, scale*4, 2, 0, c_white, alpha*.7);
		break;
}