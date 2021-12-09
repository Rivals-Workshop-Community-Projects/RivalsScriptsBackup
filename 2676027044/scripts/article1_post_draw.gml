// article1_post_draw
// post_draw draws sprites on top of an article

var sprite_timer = get_gameplay_time() / 6;

if (state < 3 || state >= 6){
	draw_sprite_ext(current_sprite_index, sprite_timer, x - image_xmovement, y - image_ymovement, 1, 1, 0, c_white, wisp_alpha)

	if (image_yup){image_ymovement = image_ymovement + .9;}
	else {image_ymovement = image_ymovement - 1.2;}


	if (image_ymovement >= 10){
		image_yup = false;
	}
	if (image_ymovement <= -5){
		image_yup = true;	
	}
	
	if (state == 7){
		if (image_xup){image_xmovement = image_xmovement + .9;}
		else {image_xmovement = image_xmovement - .9;}


		if (image_xmovement >= 5){
			image_xup = false;
		}
		if (image_xmovement <= -5){
			image_xup = true;	
		}	
	}
}

if (state == 3){
	if (explosion_timer <= 15){
		draw_sprite_ext(sprite_curse_morph, thunder_anim_timer, x, y, 1, 1, 0, c_white, 1)

		thunder_anim_timer = thunder_anim_timer + 0.3;
	}
	else {
//		draw_sprite_ext(sprite_curse_tip, thunder_anim_timer, x, y, 1, 1, 0, c_white, 1)
		draw_sprite_part(sprite_curse_tip, thunder_anim_timer, 0, 0, 72, thunder_part_length, x - 36, y - 68);

		thunder_anim_timer = thunder_anim_timer + 0.2;
	}
}

if (state == 4 || state == 5){
	if (explosion_timer <= 15){
		draw_sprite_ext(sprite_get("blank"), thunder_anim_timer, x, y, 1, 1, 0, c_white, 1)

		thunder_anim_timer = thunder_anim_timer + 0.3;
	}
	else {
		
		if (state == 5){
			draw_sprite_ext(current_sprite_index, thunder_anim_timer, x, y, 1, 1, 0, c_white, end_alpha)
		}
		if (state == 4){
			draw_sprite_part(current_sprite_index, thunder_anim_timer, 0, 0, 72, thunder_part_length, x - 36, y - 56);
		}

		thunder_anim_timer = thunder_anim_timer + 0.2;
	}
}

		
if (get_match_setting(SET_HITBOX_VIS)){
	draw_sprite_ext(mask_index, 0, x, y, 1, 1, 0, c_white, .3)
}

