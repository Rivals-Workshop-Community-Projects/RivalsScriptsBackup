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
	c_energy = make_color_rgb(get_color_profile_slot_r(selected_player_color, 0),
							  get_color_profile_slot_g(selected_player_color, 0),
							  get_color_profile_slot_b(selected_player_color, 0));
	var num_afterimages = ds_list_size(afterimages);
	gpu_set_fog(true, c_energy, 0, 1);
	if (num_afterimages > 0) {
		for (var i = 0; i < num_afterimages; i++) {
			// Only draw X of them
			//if ((i % 3) == 2) {
			//if ((i % 2) == 1) {
			if ((i % 2) == 1) {
			//if (i > 0) {
				var curr = afterimages[| i];
				//store_article_colors();
				//shader_start();
				//gpu_set_blendmode(bm_add);
				/*
				set_article_color_slot(0, color_get_red(c_energy), color_get_green(c_energy), color_get_blue(c_energy));
				set_article_color_slot(1, color_get_red(c_energy), color_get_green(c_energy), color_get_blue(c_energy));
				set_article_color_slot(2, color_get_red(c_energy), color_get_green(c_energy), color_get_blue(c_energy));
				set_article_color_slot(3, color_get_red(c_energy), color_get_green(c_energy), color_get_blue(c_energy));
				set_article_color_slot(4, color_get_red(c_energy), color_get_green(c_energy), color_get_blue(c_energy));
				set_article_color_slot(5, color_get_red(c_energy), color_get_green(c_energy), color_get_blue(c_energy));
				set_article_color_slot(6, color_get_red(c_energy), color_get_green(c_energy), color_get_blue(c_energy));
				set_article_color_slot(7, color_get_red(c_energy), color_get_green(c_energy), color_get_blue(c_energy));
				*/
				draw_sprite_ext(curr.sprite_index, curr.image_index,
								curr.x, curr.y, curr.spr_dir, 1, 0,
								c_white, i / num_afterimages);
				//draw_sprite_ext(curr.sprite_index, curr.image_index,
				//				curr.x, curr.y, curr.spr_dir, 1, 0,
				//				c_energy, i / num_afterimages);
				//gpu_set_blendmode(bm_normal);
				//shader_end();
				//restore_article_colors();
			}
		}
	}
	gpu_set_fog(false, c_white, 0, 1);
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

// Store current colors
#define store_article_colors
c_0 = make_color_rgb(get_color_profile_slot_r(selected_player_color, 0),
					 get_color_profile_slot_g(selected_player_color, 0),
					 get_color_profile_slot_b(selected_player_color, 0));
c_1 = make_color_rgb(get_color_profile_slot_r(selected_player_color, 1),
					 get_color_profile_slot_g(selected_player_color, 1),
					 get_color_profile_slot_b(selected_player_color, 1));
c_2 = make_color_rgb(get_color_profile_slot_r(selected_player_color, 2),
					 get_color_profile_slot_g(selected_player_color, 2),
					 get_color_profile_slot_b(selected_player_color, 2));
c_3 = make_color_rgb(get_color_profile_slot_r(selected_player_color, 3),
					 get_color_profile_slot_g(selected_player_color, 3),
					 get_color_profile_slot_b(selected_player_color, 3));
c_4 = make_color_rgb(get_color_profile_slot_r(selected_player_color, 4),
					 get_color_profile_slot_g(selected_player_color, 4),
					 get_color_profile_slot_b(selected_player_color, 4));
c_5 = make_color_rgb(get_color_profile_slot_r(selected_player_color, 5),
					 get_color_profile_slot_g(selected_player_color, 5),
					 get_color_profile_slot_b(selected_player_color, 5));
c_6 = make_color_rgb(get_color_profile_slot_r(selected_player_color, 6),
					 get_color_profile_slot_g(selected_player_color, 6),
					 get_color_profile_slot_b(selected_player_color, 6));
c_7 = make_color_rgb(get_color_profile_slot_r(selected_player_color, 7),
					 get_color_profile_slot_g(selected_player_color, 7),
					 get_color_profile_slot_b(selected_player_color, 7));

// Restore previous colors
#define restore_article_colors
set_article_color_slot(0, color_get_red(c_0), color_get_green(c_0), color_get_blue(c_0));
set_article_color_slot(1, color_get_red(c_1), color_get_green(c_1), color_get_blue(c_1));
set_article_color_slot(2, color_get_red(c_2), color_get_green(c_2), color_get_blue(c_2));
set_article_color_slot(3, color_get_red(c_3), color_get_green(c_3), color_get_blue(c_3));
set_article_color_slot(4, color_get_red(c_4), color_get_green(c_4), color_get_blue(c_4));
set_article_color_slot(5, color_get_red(c_5), color_get_green(c_5), color_get_blue(c_5));
set_article_color_slot(6, color_get_red(c_6), color_get_green(c_6), color_get_blue(c_6));
set_article_color_slot(7, color_get_red(c_7), color_get_green(c_7), color_get_blue(c_7));