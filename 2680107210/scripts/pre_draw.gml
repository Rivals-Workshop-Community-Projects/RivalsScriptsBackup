var ct = current_time;
//pre-draw
gpu_set_blendmode(bm_normal);
gpu_set_colorwriteenable(true,true,true,true);

//shader_start();

switch(state)
{
	case PS_ATTACK_AIR:
	{
		switch(attack)
		{
			case AT_DSPECIAL_AIR:
			{
				if(window == clamp(window, 2, 5))
				{
					//DSpecial Shader Stuff
					if(window == 2 && window_timer >= 1)
					{
						draw_set_alpha(dspecial_big_circle_alpha);
						draw_circle_color(x, y + dspecial_y_offset, ease_sineOut(0, dspecial_big_circle, window_timer, dspecial_circle_time_in), dspecial_big_circle_color, dspecial_big_circle_color, false);
						draw_set_alpha(1);
						
						gpu_set_blendmode_ext(bm_inv_dest_color,bm_inv_src_color);
						draw_circle_color(x, y + dspecial_y_offset, ease_sineOut(0, dspecial_big_circle, window_timer, dspecial_circle_time_in), c_white, c_white, false);
					}
					else if(window != 2 && window != 5)
					{
						draw_set_alpha(dspecial_big_circle_alpha);
						draw_circle_color(x, y + dspecial_y_offset, dspecial_big_circle, dspecial_big_circle_color, dspecial_big_circle_color, false);
						draw_set_alpha(1);
						
						gpu_set_blendmode_ext(bm_inv_dest_color,bm_inv_src_color);
						draw_circle_color(x, y + dspecial_y_offset, dspecial_big_circle, c_white, c_white, false);
					}
					else if(window == 5)
					{
						draw_set_alpha(dspecial_big_circle_alpha);
						draw_circle_color(x, y + dspecial_y_offset, floor(ease_sineOut(dspecial_big_circle, 0, clamp(window_timer, 0, dspecial_circle_time_out), dspecial_circle_time_out)), dspecial_big_circle_color, dspecial_big_circle_color, false);
						draw_set_alpha(1);
						
						gpu_set_blendmode_ext(bm_inv_dest_color,bm_inv_src_color);
						draw_circle_color(x, y + dspecial_y_offset, floor(ease_sineOut(dspecial_big_circle, 0, clamp(window_timer, 0, dspecial_circle_time_out), dspecial_circle_time_out)), c_white, c_white, false);
					}
					gpu_set_blendmode(bm_normal);
					
					
					var spr_r = ease_sineOut(0, dspecial_big_circle, clamp(state_timer - dspecial_start_time, 0, dspecial_circle_time_in), dspecial_circle_time_in);
					var spr_sc = ease_sineOut(1, 100, clamp(state_timer - dspecial_start_time, 0,dspecial_circle_time_in), dspecial_circle_time_in) / 100;
					var spr_do = ease_sineOut(-1 * dspecial_big_circle, 0, clamp(state_timer - dspecial_start_time, 0, dspecial_circle_time_in), dspecial_circle_time_in);
					
					if(window == 5)
					{
						spr_r = floor(ease_sineOut(dspecial_big_circle, 0, clamp(window_timer, 0, dspecial_circle_time_out), dspecial_circle_time_out));
						spr_sc = ease_sineOut(1,0,clamp(window_timer, 0, dspecial_circle_time_out), dspecial_circle_time_out);
					}
					var final_sa = dspecial_sacrifice_angle + spr_do;
					
					//dspecial_selected  |  1 = NSpecial, 2 = FSpecial, 4 = USpecial
					//dspecial_sel2      |  0 = NSpecial, 1 = FSpecial, 2 = USpecial
					var dspecial_sel2 = min(dspecial_selected, 3) - 1;
					var old_dspecial_sel2 = min(dspecial_selected_old, 3) - 1;
					
					var lerp_timer = dspecial_selected_old_timer / dspecial_points_interp_frames;
					
					if(sacrifice_level == sacrifice_max && dspecial_selected == -1)
					{
						//var num_spikes = sacrifice_max;
						var num_spikes = 5;
						for(var i = 0; i < num_spikes; i++)
						{
							draw_line_width_color(x + spr_r * dcos(final_sa + (360 / num_spikes) * i), y + dspecial_y_offset + spr_r * dsin(final_sa + (360 / num_spikes) * i), x + spr_r * dcos(final_sa + (360 / num_spikes) * ((i + dspecial_pentagram_offset) % num_spikes)), y + dspecial_y_offset + spr_r * dsin(final_sa + (360 / num_spikes) * ((i+dspecial_pentagram_offset) % num_spikes)), dspecial_points_bg_width, dspecial_points_bg_color, dspecial_points_bg_color);
						}
						if(dspecial_points_use_fg)
						{
							for(var i = 0; i < num_spikes; i++)
							{
								draw_line_width_color(x + spr_r * dcos(final_sa + (360 / num_spikes) * i), y + dspecial_y_offset + spr_r * dsin(final_sa + (360 / num_spikes) * i), x + spr_r * dcos(final_sa + (360 / num_spikes) * ((i + dspecial_pentagram_offset) % num_spikes)), y + dspecial_y_offset + spr_r * dsin(final_sa + (360 / num_spikes) * ((i+dspecial_pentagram_offset) % num_spikes)), dspecial_points_fg_width, dspecial_points_fg_color, dspecial_points_fg_color);
							}
						}
					}
					else if(dspecial_sel2 == clamp(dspecial_sel2, 0, 2) && old_dspecial_sel2 == clamp(old_dspecial_sel2, 0, 2))
					{
						for(var i = 0; i < array_length(dspecial_points_graph); i++)
						{
							var this_graph_set = dspecial_points_graph[i];
							var node1_coords = [dspecial_points_x[dspecial_sel2][this_graph_set[0]], dspecial_points_y[dspecial_sel2][this_graph_set[0]]];
							
							var node2_coords = [dspecial_points_x[dspecial_sel2][this_graph_set[1]], dspecial_points_y[dspecial_sel2][this_graph_set[1]]];
							
							var old_node1_coords = [dspecial_points_x[old_dspecial_sel2][this_graph_set[0]], dspecial_points_y[old_dspecial_sel2][this_graph_set[0]]];
							
							var old_node2_coords = [dspecial_points_x[old_dspecial_sel2][this_graph_set[1]], dspecial_points_y[old_dspecial_sel2][this_graph_set[1]]];
							
							draw_line_width_color(x + spr_r * lerp(node1_coords[0], old_node1_coords[0], lerp_timer), y + dspecial_y_offset - spr_r * lerp(node1_coords[1], old_node1_coords[1], lerp_timer), x + spr_r * lerp(node2_coords[0], old_node2_coords[0], lerp_timer), y + dspecial_y_offset - spr_r * lerp(node2_coords[1], old_node2_coords[1], lerp_timer), dspecial_points_bg_width, dspecial_points_bg_color, dspecial_points_bg_color);
						}
						if(dspecial_points_use_fg)
						{
							for(var i = 0; i < array_length(dspecial_points_graph); i++)
							{
								var this_graph_set = dspecial_points_graph[i];
								var node1_coords = [dspecial_points_x[dspecial_sel2][this_graph_set[0]], dspecial_points_y[dspecial_sel2][this_graph_set[0]]];
								
								var node2_coords = [dspecial_points_x[dspecial_sel2][this_graph_set[1]], dspecial_points_y[dspecial_sel2][this_graph_set[1]]];
								
								var old_node1_coords = [dspecial_points_x[old_dspecial_sel2][this_graph_set[0]], dspecial_points_y[old_dspecial_sel2][this_graph_set[0]]];
								
								var old_node2_coords = [dspecial_points_x[old_dspecial_sel2][this_graph_set[1]], dspecial_points_y[old_dspecial_sel2][this_graph_set[1]]];
								
								draw_line_width_color(x + spr_r * lerp(node1_coords[0], old_node1_coords[0], lerp_timer), y + dspecial_y_offset - spr_r * lerp(node1_coords[1], old_node1_coords[1], lerp_timer), x + spr_r * lerp(node2_coords[0], old_node2_coords[0], lerp_timer), y + dspecial_y_offset - spr_r * lerp(node2_coords[1], old_node2_coords[1], lerp_timer), dspecial_points_fg_width, dspecial_points_fg_color, dspecial_points_fg_color);
							}
						}
					}
					//shader_start();
					draw_sprite_ext(s_dspecial_circle, 3, x, y + dspecial_y_offset, spr_sc * 1.03, spr_sc * -1.03, (360 - final_sa) % 360, c_black, 1);
					
					var rune_progress = (window_timer / get_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH)) * dspecial_runes_num;
					
					var rune_scale = lerp(2, ease_sineOut(2, 0, clamp(window_timer, 0, dspecial_circle_time_out), dspecial_circle_time_out), window == 5);
					
					if(window != 2)
					{
						rune_progress = dspecial_runes_num;
					}
					
					var m = rune_progress % 1;
					var rune_alpha = ceil(rune_progress - 1) + max(0, (m - dspecial_runes_fade_percent*floor(m) - dspecial_runes_fade_percent) / (1 - dspecial_runes_fade_percent));
					
					var spr_r = ease_sineOut(0, dspecial_runes_distance, clamp(state_timer - dspecial_start_time, 0, dspecial_circle_time_in), dspecial_circle_time_in);
					
					if(window == 5)
					{
						spr_r = floor(ease_sineOut(dspecial_runes_distance, 0, clamp(window_timer, 0, dspecial_circle_time_out), dspecial_circle_time_out));
					}
					
					if(dspecial_sel2 == clamp(dspecial_sel2, 0, 2))
					{
						var win4_length = get_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_LENGTH);
						for(var i = 0; i < ceil(rune_progress); i++)
						{
							var dspec_sel_subimg = (i * 16) % 9 + 9 * dspecial_sel2 + 1;
							var temp_alpha = rune_progress - i;
							if(window == 4 && window_timer >= 2)
							{
								//dspec_sel_subimg = 28;
								temp_alpha = (state_timer % 6 >= 2) * (2 + win4_length - window_timer) / win4_length;
						
							}
							var this_ang = 90 - (360 / dspecial_runes_num) * i + (360 - dspecial_sacrifice_angle);
							draw_sprite_ext(s_fx_dspecial, dspec_sel_subimg, x + dcos(this_ang) * spr_r - 5 * rune_scale, y + dspecial_y_offset - dsin(this_ang) * spr_r - 5 * rune_scale, rune_scale, rune_scale, 0, c_white, min(1, temp_alpha));
						}
					}
					
					if(!(window == 4 && window_timer >= 2) && old_dspecial_sel2 == clamp(old_dspecial_sel2, 0, 2) && dspecial_selected_old_timer > 0)
					{
						for(var i = 0; i < ceil(rune_progress); i++)
						{
							var dspec_sel_old_subimg = (i * 16) % 9 + 9 * old_dspecial_sel2 + 1;
							
							var this_ang = 90 - (360 / dspecial_runes_num) * i + (360 - dspecial_sacrifice_angle);
							draw_sprite_ext(s_fx_dspecial, (i * 16) % 9 + 9 * old_dspecial_sel2 + 1, x + dcos(this_ang) * spr_r - 5 * rune_scale, y + dspecial_y_offset - dsin(this_ang) * spr_r - 5 * rune_scale, rune_scale, rune_scale, 0, c_white, min(1, rune_progress - i) * lerp_timer);
						}
					}
					
					//shader_end();
				}
				break;
			}
			case AT_FSPECIAL_AIR:
			{
				//Image index is set to NaN for this frame only, not sure why
				if(state_timer == 0 && image_index != 0)
				{
					image_index = 0;
				}
				draw_trails(0, 1);
				//draw_trails(1, 1);
				draw_trails(2, 0);
				//draw_trails(3, 0);
				break;
			}
		}
	}
	default: break;

}


//shader_start();
for(var i = 0; i < ds_list_size(dspecial_fx_list); i++)
{
	draw_set_alpha(dspecial_fx_list[|i][10]);
	draw_sprite(s_fx_dspecial, dspecial_fx_list[|i][6], dspecial_fx_list[|i][2], dspecial_fx_list[|i][3]);
}
draw_set_alpha(1);
//shader_end();

if(phone_cheats[CHEAT_DEBUG] == 2)
{
	ds_list_insert(pre_draw_perf, 0, current_time - ct);
	if(ds_list_size(pre_draw_perf) > perf_size)
	{
		ds_list_delete(pre_draw_perf, perf_size);
	}
}

#define draw_trails(stream_offset, which_index)
	var num_entries = ds_list_size(fspecial_stall_particle_array);
	
	var lerp_overflow_x = 0;
	var lerp_overflow_y = 0;
	
	var l_size = ds_list_size(fspecial_stall_particle_array);
	
	draw_primitive_begin(pr_trianglestrip);
	
	for(var i = num_entries - 1; i >= 0; i -= 1)
	{
		var this_point = fspecial_stall_particle_array[|i];
		var this_index = this_point[6];
		
		lerp_percent = ((fspecial_stall_particle_max_lifetime - num_entries) + i) / fspecial_stall_particle_max_lifetime;
		
		if(i == num_entries - 1 && this_point != noone)
		{
			lerp_overflow_x = fspecial_stall_particle_lasting_overflow[stream_offset * 2];
			lerp_overflow_y = fspecial_stall_particle_lasting_overflow[stream_offset * 2 + 1];
			
			var pos_x = lerp(this_point[2], this_point[0], lerp_percent);
			var pos_y = lerp(this_point[3], this_point[1], lerp_percent);
			
			pos_x = pos_x + lerp_overflow_x * spr_dir;
			pos_y = pos_y + lerp_overflow_y;
			
			draw_vertex_color(pos_x, pos_y, fspecial_stall_particle_color[which_index], fspecial_stall_particle_alpha);
			draw_vertex_color(pos_x, pos_y, fspecial_stall_particle_color[which_index], fspecial_stall_particle_alpha);
		}
		else if(/*i > 0 && */this_point != noone)
		{
			var l_arr_index = min(l_size - 1, i + 1);
			var last_point = fspecial_stall_particle_array[|l_arr_index];
			var last_index = last_point[6];
			
			lerp_overflow_x = lerp(lerp_overflow_x, fspecial_stall_particle_coords[last_index][stream_offset * 2], fspecial_stall_particle_easing_rate);
			lerp_overflow_y = lerp(lerp_overflow_y, fspecial_stall_particle_coords[last_index][stream_offset * 2 + 1], fspecial_stall_particle_easing_rate);
			
			var pos_x = lerp(this_point[2], this_point[0], lerp_percent);
			var pos_y = lerp(this_point[3], this_point[1], lerp_percent);
			
			pos_x = pos_x + lerp_overflow_x * spr_dir;
			pos_y = pos_y + lerp_overflow_y;
			
			draw_vertex_color(pos_x, pos_y, fspecial_stall_particle_color[which_index], fspecial_stall_particle_alpha);
			
			pos_x = lerp(this_point[4], this_point[0], lerp_percent);
			pos_y = lerp(this_point[5], this_point[1], lerp_percent);
			
			pos_x = pos_x + lerp_overflow_x * spr_dir;
			pos_y = pos_y + lerp_overflow_y;
			
			draw_vertex_color(pos_x, pos_y, fspecial_stall_particle_color[which_index], fspecial_stall_particle_alpha);
		}/*
		else if(this_point != noone)
		{
			var pos_x = lerp(this_point[2], this_point[0], lerp_percent);
			var pos_y = lerp(this_point[3], this_point[1], lerp_percent);
			
			pos_x = pos_x + fspecial_stall_particle_coords[this_index][stream_offset * 2] * spr_dir;
			pos_y = pos_y + fspecial_stall_particle_coords[this_index][stream_offset * 2 + 1];
			
			draw_vertex_color(pos_x, pos_y, fspecial_stall_particle_color[which_index], fspecial_stall_particle_alpha);
			
			pos_x = lerp(this_point[4], this_point[0], lerp_percent);
			pos_y = lerp(this_point[5], this_point[1], lerp_percent);
			
			pos_x = pos_x + fspecial_stall_particle_coords[this_index][stream_offset * 2] * spr_dir;
			pos_y = pos_y + fspecial_stall_particle_coords[this_index][stream_offset * 2 + 1];
			
			draw_vertex_color(pos_x, pos_y, fspecial_stall_particle_color[which_index], fspecial_stall_particle_alpha);
		}*/
	}
	draw_vertex_color(x + fspecial_stall_particle_coords[this_index][stream_offset * 2] * spr_dir, y + fspecial_stall_particle_coords[this_index][stream_offset * 2 + 1], fspecial_stall_particle_color[which_index], fspecial_stall_particle_alpha);
	
	draw_primitive_end();