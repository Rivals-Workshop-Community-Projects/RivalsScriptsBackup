//post_draw
gpu_set_blendmode(bm_normal);
gpu_set_colorwriteenable(true,true,true,true);
//Munophone Touch
{
	muno_event_type = 4;
	user_event(14);
}
shader_start();

switch(state)
{
	case PS_ATTACK_GROUND:
	{
		switch(attack)
		{
			case AT_TAUNT:
			{
				if(window == 2 && prev_state != PS_RESPAWN)
				{
					//init_shader();
					//var rand_offset = (sacrifice_level - 2) * 2 + 1;
					
					var amp = 11;
					var minimum_angle = 15;
					var rand_offset_h = floor(amp * sqrt(dsin(max(180 * window_timer / get_window_value(AT_TAUNT, window, AG_WINDOW_LENGTH), minimum_angle))));
					
					var amp = 3;
					var minimum_angle = 45;
					var rand_offset_v = floor(amp * sqrt(dsin(max(180 * window_timer / get_window_value(AT_TAUNT, window, AG_WINDOW_LENGTH), minimum_angle))));
					
					var distr_h = (rand_offset_h - 1) / -2;
					var distr_v = (rand_offset_v - 1) / -2;
					//gpu_set_colorwriteenable(red, green, blue, alpha);
					var r_red_h = random_func(0, rand_offset_h, true);
					var r_green_h = random_func(1, rand_offset_h, true);
					var r_blue_h = random_func(2, rand_offset_h, true);
					
					var r_red_v = random_func(3, rand_offset_v, true);
					var r_green_v = random_func(4, rand_offset_v, true);
					var r_blue_v = random_func(5, rand_offset_v, true);
					
					var x_red = x + (distr_h + r_red_h)// * (state_timer + 1) % 3 - 1;
					var y_red = y + (distr_v + r_red_v)// * (state_timer + 1) % 3 - 1;
					
					var x_green = x + (distr_h + r_green_h)// * (state_timer + 0) % 3 - 1;
					var y_green = y + (distr_v + r_green_v)// * (state_timer + 0) % 3 - 1;
					
					var x_blue = x + (distr_h + r_blue_h)// * (state_timer - 1) % 3 - 1;
					var y_blue = y + (distr_v + r_blue_v)// * (state_timer - 1) % 3 - 1;
					
					draw_set_alpha(0.33);
					
					init_shader();
					gpu_set_colorwriteenable(true, false, false, false);
					draw_sprite_ext(sprite_index, reduced_index, x_red, y_red, spr_dir * 2, 2, 0, c_white, 1);

					gpu_set_colorwriteenable(false, true, false, false);
					draw_sprite_ext(sprite_index, reduced_index, x_green, y_green, spr_dir * 2, 2, 0, c_white, 1);

					gpu_set_colorwriteenable(false, false, true, false);
					draw_sprite_ext(sprite_index, reduced_index, x_blue, y_blue, spr_dir * 2, 2, 0, c_white, 1);
					
					gpu_set_colorwriteenable(true, true, true, true);
					draw_set_alpha(1);
					
					//var temp_index = (reduced_index % (sprite_get_number(current_sprite_ref) / 8));
					//draw_sprite_ext(s_taunt_eyes, (sacrifice_level * 8) + temp_index - 5, x_red, y_red, spr_dir, 1, 0, c_white, 1);
					
					gpu_set_blendmode(bm_normal);
					gpu_set_colorwriteenable(true,true,true,true);
				}
				break;
			}
		
			case AT_FSPECIAL:
			{
				shader_end();
				if(window == 2 || window == 3 || window == 7)
				{
					draw_set_alpha(0.75 * lerp(1, window_timer / get_window_value(AT_FSPECIAL, window, AG_WINDOW_LENGTH), window == 7));
					
					draw_line_width_color(x - 28 + 32 * spr_dir, y + spr_char_center * 3.15, x + 32 * spr_dir, y + spr_char_center * 3.5, 4, c_white, c_white);
					draw_line_width_color(x + 28 + 32 * spr_dir, y + spr_char_center * 3.15, x + 32 * spr_dir, y + spr_char_center * 3.5, 4, c_white, c_white);
					draw_set_alpha(1);
				}
				break;
			}
		}
		
		break;
	}
	case PS_ATTACK_AIR:
	{
		switch(attack)
		{
			case AT_DSPECIAL_AIR:
			{
				if(window == clamp(window,3,4))
				{
					draw_sprite_ext(current_sprite_ref, selected_index, x, y, spr_dir * 2, 2, 0, c_white, dspecial_alpha_level);
				}
				
				if(window == 4 && window_timer <= 6)
				{
					draw_sprite_ext(s_dspecial_lightning, window_timer, x, y, spr_dir, 1, 0, c_white, 1);
				}
				
				if(window == 3)
				{
					var menu_y_offset = 0;
					var img_index = (image_index % (sprite_get_number(current_sprite_ref) / 8));
					if(img_index == clamp(img_index, 7, 8) || img_index == clamp(img_index, 13, 14))
					{
						menu_y_offset = 1;
					}
					else if(img_index == clamp(img_index, 15, 16) || img_index == clamp(img_index, 21, 22))
					{
						menu_y_offset = 2;
					}
					else if(img_index == clamp(img_index, 17, 20))
					{
						menu_y_offset = 3;
					}
					draw_sprite_ext(s_dspecial_menu, dspecial_selected - 1, x, y + 2 * menu_y_offset, spr_dir, 1, 0, c_white, 1);
				}
				break;
			}
			case AT_FSPECIAL_AIR:
			{
				if(fspecial_stall_enable_color && (window == 2 || window == 3 || window == 6))
				{
					var this_alpha = (clamp(7 * dsin(fspecial_stall_accumulator * fspecial_stall_color_multiplier * (90/12)), 0, 1)) * fspecial_stall_color_max_opacity;
					//shader_start();
					//Pre-draw draw_shader_method() stuff
					draw_shader_method(x - sprite_get_width(sprite_index) / 2, y - sprite_get_height(sprite_index), x + sprite_get_width(sprite_index) / 2, y);
					
					//Draw
					//Bug: This does not follow reduced index for some reason
					draw_sprite_ext(sprite_index, reduced_index, x, y, spr_dir * 2, 2, 0, c_black, this_alpha);

					//Post-draw draw_shader_method() stuff
					{
						gpu_set_blendmode_ext_sepalpha(bm_inv_dest_alpha, bm_dest_alpha, bm_src_alpha, bm_inv_src_color);
						
						draw_rectangle_color(x - sprite_xoffset, y - sprite_yoffset, x + sprite_width - sprite_xoffset, y + sprite_height - sprite_yoffset, fspecial_stall_color, fspecial_stall_color, fspecial_stall_color, fspecial_stall_color, false);
					}
					gpu_set_blendmode(bm_normal);
					gpu_set_colorwriteenable(true,true,true,true);
					//shader_end();
				}
				break;
			}
			case AT_FSPECIAL:
			{
				shader_end();
				if(window == 3 && !rune_c_special_down)
				{
					draw_set_alpha(0.75);
					
					draw_line_width_color(x - 28 + 32 * spr_dir, y + spr_char_center * 3.15, x + 32 * spr_dir, y + spr_char_center * 3.5, 4, c_white, c_white);
					draw_line_width_color(x + 28 + 32 * spr_dir, y + spr_char_center * 3.15, x + 32 * spr_dir, y + spr_char_center * 3.5, 4, c_white, c_white);
					draw_set_alpha(1);
				}
				break;
			}
		}
		
		break;
	}
	default: break;
}

shader_end();
if(dspecial_points_timer > 0)
{
	var dspecial_sel2 = min(dspecial_selected, 3) - 1;
	var old_dspecial_sel2 = min(dspecial_selected_old, 3) - 1;
	
	var alpha_lerp = (dspecial_points_timer / dspecial_points_timer_max);
	alpha_lerp = sin(alpha_lerp);
	
	var size_lerp = dspecial_big_circle * (1 + ((dspecial_points_timer_max - dspecial_points_timer) / dspecial_points_timer_max)) * lerp(1, 0.75, dspecial_bad_input_display);
	var thick_lerp = 2 * (dspecial_points_timer_max - dspecial_points_timer) / dspecial_points_timer_max;
	draw_set_alpha(alpha_lerp * 2);
	if(dspecial_sel2 == clamp(dspecial_sel2, 0, 2) && old_dspecial_sel2 == clamp(old_dspecial_sel2, 0, 2))
	{
		for(var i = 0; i < array_length(dspecial_points_graph); i++)
		{
			var this_graph_set = dspecial_points_graph[i];
			var node1_coords = [dspecial_points_x[dspecial_sel2][this_graph_set[0]], dspecial_points_y[dspecial_sel2][this_graph_set[0]]];
			
			var node2_coords = [dspecial_points_x[dspecial_sel2][this_graph_set[1]], dspecial_points_y[dspecial_sel2][this_graph_set[1]]];
			
			draw_line_width_color(x + size_lerp * node1_coords[0], y + dspecial_y_offset - size_lerp * node1_coords[1], x + size_lerp * node2_coords[0], y + dspecial_y_offset - size_lerp * node2_coords[1], dspecial_points_bg_width + thick_lerp, merge_color(c_red, dspecial_points_bg_color, alpha_lerp), merge_color(c_red, dspecial_points_bg_color, alpha_lerp));
		}
		if(dspecial_points_use_fg)
		{
			for(var i = 0; i < array_length(dspecial_points_graph); i++)
			{
				var this_graph_set = dspecial_points_graph[i];
				var node1_coords = [dspecial_points_x[dspecial_sel2][this_graph_set[0]], dspecial_points_y[dspecial_sel2][this_graph_set[0]]];
				
				var node2_coords = [dspecial_points_x[dspecial_sel2][this_graph_set[1]], dspecial_points_y[dspecial_sel2][this_graph_set[1]]];
				
				draw_line_width_color(x + size_lerp * node1_coords[0], y + dspecial_y_offset - size_lerp * node1_coords[1], x + size_lerp * node2_coords[0], y + dspecial_y_offset - size_lerp * node2_coords[1], dspecial_points_fg_width + thick_lerp, merge_color(c_red, dspecial_points_fg_color, alpha_lerp), merge_color(c_red, dspecial_points_fg_color, alpha_lerp));
			}
		}
	}
	draw_set_alpha(1);
}

if(active_runes[?"O"])
{
	with(oPlayer)
	{
		if(dspecial_points_timer > 0 && vanda_rune_o_mark != 0 && vanda_rune_o_player == other)
		{
			with(other)
			{
				var dspecial_sel2 = min(other.vanda_rune_o_mark, 3) - 1;
				var old_dspecial_sel2 = min(other.vanda_rune_o_mark, 3) - 1;
				var alpha_lerp = (other.dspecial_points_timer / dspecial_points_timer_max);
				alpha_lerp = sin(alpha_lerp);
				
				var size_lerp = dspecial_big_circle * (1 + ((dspecial_points_timer_max - other.dspecial_points_timer) / dspecial_points_timer_max)) * lerp(1, 0.75, dspecial_bad_input_display);
				var thick_lerp = 2 * (dspecial_points_timer_max - other.dspecial_points_timer) / dspecial_points_timer_max;
				draw_set_alpha(alpha_lerp * 2);
				if(dspecial_sel2 == clamp(dspecial_sel2, 0, 2) && old_dspecial_sel2 == clamp(old_dspecial_sel2, 0, 2))
				{
					for(var i = 0; i < array_length(dspecial_points_graph); i++)
					{
						var this_graph_set = dspecial_points_graph[i];
						var node1_coords = [dspecial_points_x[dspecial_sel2][this_graph_set[0]], dspecial_points_y[dspecial_sel2][this_graph_set[0]]];
						
						var node2_coords = [dspecial_points_x[dspecial_sel2][this_graph_set[1]], dspecial_points_y[dspecial_sel2][this_graph_set[1]]];
						
						draw_line_width_color(other.x + size_lerp * node1_coords[0], other.y + dspecial_y_offset - size_lerp * node1_coords[1], other.x + size_lerp * node2_coords[0], other.y + dspecial_y_offset - size_lerp * node2_coords[1], dspecial_points_bg_width + thick_lerp, merge_color(c_red, dspecial_points_bg_color, alpha_lerp), merge_color(c_red, dspecial_points_bg_color, alpha_lerp));
					}
					if(dspecial_points_use_fg)
					{
						for(var i = 0; i < array_length(dspecial_points_graph); i++)
						{
							var this_graph_set = dspecial_points_graph[i];
							var node1_coords = [dspecial_points_x[dspecial_sel2][this_graph_set[0]], dspecial_points_y[dspecial_sel2][this_graph_set[0]]];
							
							var node2_coords = [dspecial_points_x[dspecial_sel2][this_graph_set[1]], dspecial_points_y[dspecial_sel2][this_graph_set[1]]];
							
							draw_line_width_color(other.x + size_lerp * node1_coords[0], other.y + dspecial_y_offset - size_lerp * node1_coords[1], other.x + size_lerp * node2_coords[0], other.y + dspecial_y_offset - size_lerp * node2_coords[1], dspecial_points_fg_width + thick_lerp, merge_color(c_red, dspecial_points_fg_color, alpha_lerp), merge_color(c_red, dspecial_points_fg_color, alpha_lerp));
						}
					}
				}
				else if(dspecial_sel2 == -2)
				{
					var num_spikes = 5;
					var final_sa = 198;
					for(var i = 0; i < num_spikes; i++)
					{
						draw_line_width_color(other.x + size_lerp * dcos(final_sa + (360 / num_spikes) * i), other.y + dspecial_y_offset + size_lerp * dsin(final_sa + (360 / num_spikes) * i), other.x + size_lerp * dcos(final_sa + (360 / num_spikes) * ((i + dspecial_pentagram_offset) % num_spikes)), other.y + dspecial_y_offset + size_lerp * dsin(final_sa + (360 / num_spikes) * ((i+dspecial_pentagram_offset) % num_spikes)), dspecial_points_bg_width, merge_color(c_red, dspecial_points_bg_color, alpha_lerp), merge_color(c_red, dspecial_points_bg_color, alpha_lerp));
					}
					if(dspecial_points_use_fg)
					{
						for(var i = 0; i < num_spikes; i++)
						{
							draw_line_width_color(other.x + size_lerp * dcos(final_sa + (360 / num_spikes) * i), other.y + dspecial_y_offset + size_lerp * dsin(final_sa + (360 / num_spikes) * i), other.x + size_lerp * dcos(final_sa + (360 / num_spikes) * ((i + dspecial_pentagram_offset) % num_spikes)), other.y + dspecial_y_offset + size_lerp * dsin(final_sa + (360 / num_spikes) * ((i+dspecial_pentagram_offset) % num_spikes)), dspecial_points_fg_width, merge_color(c_red, dspecial_points_fg_color, alpha_lerp), merge_color(c_red, dspecial_points_fg_color, alpha_lerp));
						}
					}
				}
				draw_set_alpha(1);
			}
		}
		else if(dspecial_points_timer == 0 && vanda_rune_o_mark != 0 && vanda_rune_o_player == other)
		{
			with(other)
			{
				var dspecial_sel2 = min(other.vanda_rune_o_mark, 3) - 1;
				var old_dspecial_sel2 = min(other.vanda_rune_o_mark, 3) - 1;
				var alpha_lerp = lerp(0.5, 0.8, dsin((get_gameplay_time() % 480) * 360/480));
				//alpha_lerp = sin(alpha_lerp);
				
				var size_lerp = dspecial_big_circle * (1 + ((dspecial_points_timer_max - other.dspecial_points_timer) / dspecial_points_timer_max)) * 0.25;
				var thick_lerp = 2 * (dspecial_points_timer_max - other.dspecial_points_timer) / dspecial_points_timer_max;
				draw_set_alpha(alpha_lerp);
				if(dspecial_sel2 == clamp(dspecial_sel2, 0, 2) && old_dspecial_sel2 == clamp(old_dspecial_sel2, 0, 2))
				{
					for(var i = 0; i < array_length(dspecial_points_graph); i++)
					{
						var this_graph_set = dspecial_points_graph[i];
						var node1_coords = [dspecial_points_x[dspecial_sel2][this_graph_set[0]], dspecial_points_y[dspecial_sel2][this_graph_set[0]]];
						
						var node2_coords = [dspecial_points_x[dspecial_sel2][this_graph_set[1]], dspecial_points_y[dspecial_sel2][this_graph_set[1]]];
						
						draw_line_width_color(other.x + size_lerp * node1_coords[0], other.y + dspecial_y_offset - size_lerp * node1_coords[1], other.x + size_lerp * node2_coords[0], other.y + dspecial_y_offset - size_lerp * node2_coords[1], dspecial_points_bg_width * 0.5 + thick_lerp, merge_color(c_red, dspecial_points_bg_color, alpha_lerp), merge_color(c_red, dspecial_points_bg_color, alpha_lerp));
					}
					if(dspecial_points_use_fg)
					{
						for(var i = 0; i < array_length(dspecial_points_graph); i++)
						{
							var this_graph_set = dspecial_points_graph[i];
							var node1_coords = [dspecial_points_x[dspecial_sel2][this_graph_set[0]], dspecial_points_y[dspecial_sel2][this_graph_set[0]]];
							
							var node2_coords = [dspecial_points_x[dspecial_sel2][this_graph_set[1]], dspecial_points_y[dspecial_sel2][this_graph_set[1]]];
							
							draw_line_width_color(other.x + size_lerp * node1_coords[0], other.y + dspecial_y_offset - size_lerp * node1_coords[1], other.x + size_lerp * node2_coords[0], other.y + dspecial_y_offset - size_lerp * node2_coords[1], dspecial_points_fg_width * 0.5 + thick_lerp, merge_color(c_red, dspecial_points_fg_color, alpha_lerp), merge_color(c_red, dspecial_points_fg_color, alpha_lerp));
						}
					}
				}
				else if(dspecial_sel2 == -2)
				{
					var num_spikes = 5;
					var final_sa = 198;
					for(var i = 0; i < num_spikes; i++)
					{
						draw_line_width_color(other.x + size_lerp * dcos(final_sa + (360 / num_spikes) * i), other.y + dspecial_y_offset + size_lerp * dsin(final_sa + (360 / num_spikes) * i), other.x + size_lerp * dcos(final_sa + (360 / num_spikes) * ((i + dspecial_pentagram_offset) % num_spikes)), other.y + dspecial_y_offset + size_lerp * dsin(final_sa + (360 / num_spikes) * ((i+dspecial_pentagram_offset) % num_spikes)), dspecial_points_bg_width, merge_color(c_red, dspecial_points_bg_color, alpha_lerp), merge_color(c_red, dspecial_points_bg_color, alpha_lerp));
					}
					if(dspecial_points_use_fg)
					{
						for(var i = 0; i < num_spikes; i++)
						{
							draw_line_width_color(other.x + size_lerp * dcos(final_sa + (360 / num_spikes) * i), other.y + dspecial_y_offset + size_lerp * dsin(final_sa + (360 / num_spikes) * i), other.x + size_lerp * dcos(final_sa + (360 / num_spikes) * ((i + dspecial_pentagram_offset) % num_spikes)), other.y + dspecial_y_offset + size_lerp * dsin(final_sa + (360 / num_spikes) * ((i+dspecial_pentagram_offset) % num_spikes)), dspecial_points_fg_width, merge_color(c_red, dspecial_points_fg_color, alpha_lerp), merge_color(c_red, dspecial_points_fg_color, alpha_lerp));
						}
					}
				}
				draw_set_alpha(1);
			}
		}
	}
}


#define draw_shader_method(start_x, start_y, end_x, end_y)
	//Change the alpha without changing the color of the background
	gpu_set_colorwriteenable(false,false,false,true);
	draw_set_alpha(1);
	
	gpu_set_blendmode_ext_sepalpha(bm_one, bm_zero, bm_inv_src_alpha, bm_zero);
	draw_rectangle_color(x - sprite_xoffset, y - sprite_yoffset, x + sprite_width - sprite_xoffset, y + sprite_height - sprite_yoffset, c_white, c_white, c_white, c_white, false);
	
	gpu_set_blendmode(bm_normal);
	draw_rectangle_color(x - sprite_xoffset, y - sprite_yoffset, x + sprite_width - sprite_xoffset, y + sprite_height - sprite_yoffset, c_white, c_white, c_white, c_white, false);
	
	gpu_set_colorwriteenable(true,true,true,true);
	
	//In the draw event, all sprites will be drawn according to this blendmode, which is reset first thing in post draw
	gpu_set_blendmode_ext_sepalpha(bm_src_alpha, bm_inv_src_alpha, bm_inv_dest_alpha, bm_inv_src_alpha);