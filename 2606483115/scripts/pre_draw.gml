//pre_draw
if (get_player_color(player) == 10){
    g7fx_timer += 0.15;
    draw_sprite(sprite_get("G7_Effect"), g7fx_timer % 14, x - 45, y - 76)
}

if(get_player_color(player) == 8){
    g7fx_timer += 0.2;
    draw_sprite_ext(sprite_get("blw_flag"), g7fx_timer, x, y - 40, flag_width, 1, 0, c_white, 0.5)
	if(attack == AT_TAUNT && state == PS_ATTACK_GROUND || attack == AT_TAUNT_2 && state == PS_ATTACK_GROUND){
	    if(flag_width < 1){
            flag_width += 0.1
        }else{
            flag_width = 1
        }
	}else{
	    if(flag_width > 0){
	        flag_width -= 0.1
	    }else{
	        flag_width = 0
	    }
	}
}

//Runes

if(has_rune("O") || all_runes){
	with(oPlayer){
	    if(chained && chained_player == other){
	    	var temp_chain_timer = chain_timer
			var temp_chain_stack = chain_stack
	        with(other){
	         //rope_dir = point_direction(x,y,hook.x,hook.y);
	            var bamboo_dir = point_direction(x, y - 25, other.x, other.y - 25);
	            var bamboo_dist = point_distance(x, y - 25, other.x, other.y - 25);
	            
	            //since the arm sprite's origin isn't centered, do some math
	            if (bamboo_dist < 7) bamboo_dist = 7; //needs minimum distance to prevent arcsin errors
	            var arm_dir = bamboo_dir + 180
	            if (bamboo_dist > 16){
	                var rope_x = other.x  + lengthdir_x(16, arm_dir);
	                var rope_y = other.y - 25  + lengthdir_y(16, arm_dir);
	                
	                var rope_length = 0;
	                var max_rope_length = point_distance(x, y - 25, other.x, other.y - 25);
	                while (rope_length < max_rope_length-16){
	                	if(chain_deactivation_timer <= 0){
		                	if(other.chain_break_timer > 0){
		                		draw_sprite_ext(sprite_get("chain"), 1, rope_x, rope_y, 1, 1, arm_dir, c_white, 1);
		                		//Chain Stack Rune
		                		if(has_rune("O") || all_runes){
			                		if(temp_chain_stack >= 2){
			                			draw_sprite_ext(sprite_get("chain"), 1, rope_x - 8, rope_y - 8, 1, 1, arm_dir, c_white, 1);
			                		}
			                		if(temp_chain_stack >= 3){
			                			draw_sprite_ext(sprite_get("chain"), 1, rope_x + 8, rope_y + 8, 1, 1, arm_dir, c_white, 1);
			                		}
		                		}
		                	}else{
		                		if(distance_to_object(other) > 180){
		                			var shake = 4
		                		}else if(distance_to_object(other) > 150){
		                    		var shake = 2
		                		}else{
		                			var shake = 0
		                		}
		                		chain_shake_x = (shake * -0.5) + random_func_2((rope_length / 16), shake, true)
		                		chain_shake_y = (shake * -0.5) + random_func_2((rope_length / 16) + 1, shake, true)
		                		draw_sprite_ext(sprite_get("chain"), 0, rope_x + chain_shake_x, rope_y + chain_shake_y, 1, 1, arm_dir, c_white, 1);
		                		//Chain Stack Rune
		                		if(has_rune("O") || all_runes){
			                		if(temp_chain_stack >= 2){
			                			chain_shake_x = (shake * -0.5) + random_func_2((rope_length / 16) + 2, shake, true)
			                			chain_shake_y = (shake * -0.5) + random_func_2((rope_length / 16) + 3, shake, true)
			                			draw_sprite_ext(sprite_get("chain"), 0, rope_x - 8 + chain_shake_x, rope_y - 8 + chain_shake_y, 1, 1, arm_dir, c_white, 1);
			                		}
			                		if(temp_chain_stack >= 3){
			                			chain_shake_x = (shake * -0.5) + random_func_2((rope_length / 16) + 4, shake, true)
			                			chain_shake_y = (shake * -0.5) + random_func_2((rope_length / 16) + 5, shake, true)
			                			draw_sprite_ext(sprite_get("chain"), 0, rope_x + 8 + chain_shake_x, rope_y + 8 + chain_shake_y, 1, 1, arm_dir, c_white, 1);
			                		}
		                		}
		                	}
	                	}else{
	                		if(chain_deactivation_timer >= 44){
	                			draw_sprite_ext(sprite_get("chain"), 0, rope_x, rope_y, 1, 1, arm_dir, c_gray, 0.35);
	                			//Chain Stack Rune
	                			if(has_rune("O") || all_runes){
		                			if(temp_chain_stack >= 2){
			                			draw_sprite_ext(sprite_get("chain"), 0, rope_x - 8, rope_y - 8, 1, 1, arm_dir, c_gray, 1);
			                		}
			                		if(temp_chain_stack >= 3){
			                			draw_sprite_ext(sprite_get("chain"), 0, rope_x + 8, rope_y + 8, 1, 1, arm_dir, c_gray, 1);
			                		}
	                			}
	                		}else{
	                			draw_sprite_ext(sprite_get("chain"), 0, rope_x, rope_y, 1, 1, arm_dir, c_white, 0.35 + ((1 - (chain_deactivation_timer / 45)) * 0.65))
	                			//Chain Stack Rune
	                			if(has_rune("O") || all_runes){
		                			if(temp_chain_stack >= 2){
			                			draw_sprite_ext(sprite_get("chain"), 0, rope_x - 8, rope_y - 8, 1, 1, arm_dir, c_white, 0.35 + ((1 - (chain_deactivation_timer / 45)) * 0.65))
			                		}
			                		if(temp_chain_stack >= 3){
			                			draw_sprite_ext(sprite_get("chain"), 0, rope_x + 8, rope_y + 8, 1, 1, arm_dir, c_white, 0.35 + ((1 - (chain_deactivation_timer / 45)) * 0.65))
			                		}
	                			}
	                		}
	                	}
	                    rope_x += lengthdir_x(16, arm_dir);
	                    rope_y += lengthdir_y(16, arm_dir);
	                    rope_length += 16;
	                }
	            }
	            var break_ang = point_direction(x, y - 19, other.x, other.y - 19)
	            if(has_rune("G") || all_runes){
	            	rune_alpha_distance = 62.5 * (1 - (temp_chain_timer / 600))
	            }else{
	            	rune_alpha_distance = 62.5
	            }
	            if(chain_deactivation_timer > 0){
	            	var break_alpha = (-0.5 + (distance_to_object(other) / rune_alpha_distance)) * (1 - (chain_deactivation_timer / 45))
	            	if (break_alpha < 0){
	            		break_alpha = 0
	            	}
	            }else{
	        		var break_alpha = (-0.5 + (distance_to_object(other) / rune_alpha_distance))
	            }
	            if(chain_deactivation_timer < 44){
					break_distance = draw_sprite_ext(sprite_get("chain_range"), 0, x, y - 25, 1, 1, break_ang, c_white, break_alpha);
	            }
	        }
	    }
	}
}