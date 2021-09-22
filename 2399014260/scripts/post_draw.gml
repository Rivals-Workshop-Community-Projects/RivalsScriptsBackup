if (phone_attacking && attack == AT_DSPECIAL_AIR && window == 2 && (dspecial_hold_timer > 35 && dspecial_hold_timer % 10 < 5)){
	shader_start();
	draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, 0, c_gray, 1);
	shader_end();
}



if instance_exists(luma) && luma.state == PS_ATTACK_AIR && luma.attack == AT_NSPECIAL_AIR{
	var frame = 2;
	
	with luma switch(window){
		case 1:
			if window_timer > 1 frame = image_index + 2;
			break;
		case 2:
		case 3:
			frame = 4;
			break;
	}
	
	shader_start();
	
	draw_sprite_ext(spr_nspecial_overlay, frame, x, y, 1, 1, 0, c_white, 1);
	
	shader_end();
}



if bee_ui_alpha > 0.25{
	shader_start();
	
	var draw_f = lerp(25, 0, bee_time / bee_time_max);
	var draw_x = x + 48;
	var draw_y = y - 64;
	var draw_w = 2 - bee_ui_alpha;
	var draw_h = bee_ui_alpha;
	
	draw_sprite_ext(spr_uspecial_ui, draw_f, draw_x, draw_y, draw_w, draw_h, 0, c_white, 1);
	
	shader_end();
}



muno_event_type = 4;
user_event(14);