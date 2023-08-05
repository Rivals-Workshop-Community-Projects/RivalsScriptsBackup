//
if (object_index == oTestPlayer) {
	/*
	if (!test_frame_advance) {
		draw_debug_text(x - 80, y + 8, "Press Taunt to Toggle")
	} else {
		draw_debug_text(x - 80, y + 8, "Press Shield to Advance")
	}
	draw_debug_text(x - 80, y + 28, "Window: " + string(window))
	draw_debug_text(x - 80, y + 48, "Window Timer: " + string(window_timer))
	*/
	with pHitBox {
		if (sprite_index == asset_get("hitbox_square_spr")) {
			var _sprite = 1;
		} else if (sprite_index == asset_get("hitbox_rounded_rectangle")) {
			var _sprite = 2;
		} else {
			var _sprite = 0;
		}
		var _angle = kb_angle
		if (kb_angle == 361) {
			_angle = 45;
		}
		//if (hitbox_timer > 1 || other.window_reset != true) {
			draw_sprite_ext(
				other.spr_shapes[_sprite], 
				0,
				x, 
				y, 
				image_xscale, 
				image_yscale,  
				0, 
				c_white, 
				.5
			);
			//Direction
			if spr_dir == -1 {
				draw_sprite_ext(
					other.spr_shapes[3], 
					0,
					x, 
					y, 
					1, 
					1,  
					(180 - _angle), 
					c_white, 
					.5
				);
			} else {
				draw_sprite_ext(
					other.spr_shapes[3], 
					0,
					x, 
					y, 
					1, 
					1,  
					(_angle), 
					c_white, 
					.5
				);
			}
		//}
		//print(sprite_index);
	}
} 












