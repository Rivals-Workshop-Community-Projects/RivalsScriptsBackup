#macro codename_mettaton_number     22
#macro codename_cabinet_number      24

// Draw Rotom's aura if applicable
if (codename_rotom_active) {
	//shader_start();
	//gpu_set_blendmode_ext(bm_src_color, bm_dest_color);
	gpu_set_fog(true, aura_color, 0, 1);
	draw_sprite_ext(sprite_index, image_index,
					x, y+2, spr_dir, 1, 0,
					c_white, 1);
	draw_sprite_ext(sprite_index, image_index,
					x, y-2, spr_dir, 1, 0,
					c_white, 1);
	draw_sprite_ext(sprite_index, image_index,
					x+2, y, spr_dir, 1, 0,
					c_white, 1);
	draw_sprite_ext(sprite_index, image_index,
					x-2, y, spr_dir, 1, 0,
					c_white, 1);
	draw_sprite_ext(sprite_index, image_index,
					x+2, y+2, spr_dir, 1, 0,
					c_white, 1);
	draw_sprite_ext(sprite_index, image_index,
					x+2, y-2, spr_dir, 1, 0,
					c_white, 1);
	draw_sprite_ext(sprite_index, image_index,
					x-2, y+2, spr_dir, 1, 0,
					c_white, 1);
	draw_sprite_ext(sprite_index, image_index,
					x-2, y-2, spr_dir, 1, 0,
					c_white, 1);
	gpu_set_fog(false, c_white, 0, 1);
	//gpu_set_blendmode(bm_normal);
	//shader_end();
}

// Draw afterimages
if (afterimage_countdown > 0) {
	var num_afterimages = ds_list_size(afterimages);
	if (num_afterimages > 0) {
		for (var i = 0; i < num_afterimages; i++) {
			// Only draw X of them
			//if ((i % 3) == 2) {
			if ((i % 2) == 1) {
				var curr = afterimages[| i];
				shader_start();
				gpu_set_blendmode(bm_add);
				draw_sprite_ext(curr.sprite_index, curr.image_index,
								curr.x, curr.y, curr.spr_dir, 1, 0,
								c_white, i / num_afterimages);
				gpu_set_blendmode(bm_normal);
				shader_end();
			}
		}
	}
}

// Draw special transformation

if (PS_ATTACK_GROUND) && (attack == AT_TAUNT_2) {
	if (window >= 3) && (window <= 6) {
		shader_start();
		init_shader();
		if (selected_taunt_transformation == codename_mettaton_number) {
			// Time to build-a-Mettaton!
			var rand_index = 0;
			draw_sprite_ext(mettaton_leg_sprite,
							mettaton_left_leg,
							x + current_mettaton_x_offset, y + current_mettaton_y_offset, spr_dir, 1, 0,
							c_white, 1);
			draw_sprite_ext(mettaton_leg_sprite,
							mettaton_right_leg,
							x - (2 * spr_dir) + current_mettaton_x_offset, y + current_mettaton_y_offset, -spr_dir, 1, 0,
							c_white, 1);
			if (mettaton_left_arm < mettaton_max_arm_index) {
				draw_sprite_ext(mettaton_arm_sprite,
								mettaton_left_arm,
								x + current_mettaton_x_offset, y + current_mettaton_y_offset, spr_dir, 1, 0,
								c_white, 1);
			}
			if (mettaton_right_arm < mettaton_max_arm_index) {
				draw_sprite_ext(mettaton_arm_sprite,
								mettaton_right_arm,
								x - (2 * spr_dir) + current_mettaton_x_offset, y + current_mettaton_y_offset, -spr_dir, 1, 0,
								c_white, 1);
			}
			draw_sprite_ext(mettaton_torso_sprite,
							0,
							x + current_mettaton_x_offset, y + current_mettaton_y_offset, spr_dir, 1, 0,
							c_white, 1);
			draw_sprite_ext(sprite_get("taunt_filling_mettaton_mouth"),
							mettaton_mouth,
							x + current_mettaton_x_offset, y + current_mettaton_y_offset, spr_dir, 1, 0,
							c_white, 1);
			draw_sprite_ext(sprite_get("taunt_filling_mettaton_eye"),
							mettaton_eye,
							x + current_mettaton_x_offset, y + current_mettaton_y_offset, spr_dir, 1, 0,
							c_white, 1);
			if (mettaton_left_arm == mettaton_max_arm_index) {
				draw_sprite_ext(mettaton_arm_sprite,
								mettaton_left_arm,
								x + current_mettaton_x_offset, y + current_mettaton_y_offset, spr_dir, 1, 0,
								c_white, 1);
			}
			if (mettaton_right_arm == mettaton_max_arm_index) {
				draw_sprite_ext(mettaton_arm_sprite,
								mettaton_right_arm,
								x - (2 * spr_dir) + current_mettaton_x_offset, y + current_mettaton_y_offset, -spr_dir, 1, 0,
								c_white, 1);
			}
		} else if (selected_taunt_transformation == codename_cabinet_number) {
			draw_sprite_ext(cabinet_sprite,
							(cabinet_song_clip_current * 2) + (cabinet_flicker_version_current / cabinet_flicker_duration),
							x, y, spr_dir, 1, 0,
							c_white, 1);
		} else {
			draw_sprite_ext(transformed_taunt_sprite,
							selected_taunt_transformation,
							x, y, spr_dir, 1, 0,
							c_white, 1);
		}
		shader_end();
	}
}