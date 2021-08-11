
if(state != PS_ROLL_BACKWARD and state != PS_ROLL_FORWARD and state != PS_TECH_GROUND and state != PS_TECH_FORWARD and state != PS_TECH_BACKWARD and state != PS_WALL_TECH and state != PS_AIR_DODGE and state != PS_PARRY and (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND)){
	if(attack == AT_FSPECIAL){
		if(window == 2){
			for(var t = 0; t < demon_trail_size; t++){
	        	var i = demon_trail[t];
	        	if(i.life > 0){
	        		
	            	draw_sprite_ext(i.sprite_index, i.image_index, i.x, i.y, (1+small_sprites)*i.spr_dir, 1+small_sprites, 0, i.color, (i.life/3)/1.5);
	        	}
	    	}
	    	
		
		} else if (window == 6){
			draw_sprite_ext(sprite_get("demon_large"), 4, x, y, 1+small_sprites, 1+small_sprites, 0, c_white, max(0, (11-window_timer)/11));
		}
		
	}
	
	
	if(attack == AT_USPECIAL){
		if(window == 1){
			gpu_set_blendmode_ext(bm_inv_dest_colour, bm_inv_src_colour );
			draw_sprite_ext(sprite_get("shine_inner"), round(window_timer/4), x+spr_dir*2, y-32, 1+small_sprites, 1+small_sprites, 0, c_white, 1);
			gpu_set_blendmode(bm_normal);
		} else if (window == 2){
			if(window_timer < 6){
				gpu_set_blendmode_ext(bm_inv_dest_colour, bm_inv_src_colour );
				draw_sprite_ext(sprite_get("shine_inner"), round(3 - window_timer/3), x+spr_dir*2, y-32, 1+small_sprites, 1+small_sprites, 0, c_white, 1);
				gpu_set_blendmode(bm_normal);
			} else  if(window_timer > 16){
				gpu_set_blendmode_ext(bm_inv_dest_colour, bm_inv_src_colour );
				draw_sprite_ext(sprite_get("shine_inner"), min(3,round((window_timer-16)/3)), uspec_end_x+spr_dir*2, uspec_end_y-32, 1+small_sprites, 1+small_sprites, 0, c_white, 1);
				gpu_set_blendmode(bm_normal);
			}
		} else if (window == 3){
			gpu_set_blendmode_ext(bm_inv_dest_colour, bm_inv_src_colour );
			draw_sprite_ext(sprite_get("shine_inner"), round(4-window_timer/8), uspec_end_x+spr_dir*2, uspec_end_y-32, 1+small_sprites, 1+small_sprites, 0, c_white, 1);
			gpu_set_blendmode(bm_normal);
		} else if (window == 6){
			gpu_set_blendmode_ext(bm_inv_dest_colour, bm_inv_src_colour );
			draw_sprite_ext(sprite_get("shine_inner"), 3-((image_index-12))/2, uspec_end_x+spr_dir*2, uspec_end_y-32, 1+small_sprites, 1+small_sprites, 0, c_white, 1);
			gpu_set_blendmode(bm_normal);
		}
	}
	if(attack == AT_DSPECIAL_2){
		if(window_timer < 10){
			gpu_set_blendmode_ext(bm_inv_dest_colour, bm_inv_src_colour );
			draw_sprite_ext(sprite_get("shine_inner"), floor(window_timer/3), x+spr_dir*2, y-32, 1+small_sprites, 1+small_sprites, 0, c_white, 1);
			gpu_set_blendmode(bm_normal);
		} else {
			gpu_set_blendmode_ext(bm_inv_dest_colour, bm_inv_src_colour );
			draw_sprite_ext(sprite_get("shine_inner"), 3-floor((window_timer-10)/3), x+spr_dir*2, y-32, 1+small_sprites, 1+small_sprites, 0, c_white, 1);
			gpu_set_blendmode(bm_normal);
		}
	}
	
	if(attack == AT_FSTRONG){
		if(window == 1){
			gpu_set_blendmode_ext(bm_inv_dest_colour, bm_inv_src_colour );
			draw_sprite_ext(sprite_get("shine_inner"), round(window_timer/4), x+spr_dir*2, y-32, 1+small_sprites, 1+small_sprites, 0, c_white, 1);
			gpu_set_blendmode(bm_normal);
		} else if (window == 2){
			if(window_timer < 6){
				gpu_set_blendmode_ext(bm_inv_dest_colour, bm_inv_src_colour );
				draw_sprite_ext(sprite_get("shine_inner"), round(3 - window_timer/3), x+spr_dir*2, y-32, 1+small_sprites, 1+small_sprites, 0, c_white, 1);
				gpu_set_blendmode(bm_normal);
			} else  if(window_timer > 8){
				gpu_set_blendmode_ext(bm_inv_dest_colour, bm_inv_src_colour );
				draw_sprite_ext(sprite_get("shine_inner"), round((window_timer-8)/3), x-spr_dir*16, y-32, 1+small_sprites, 1+small_sprites, 0, c_white, 1);
				gpu_set_blendmode(bm_normal);
			}
		} else if (window == 3 and window_timer < 8){
			gpu_set_blendmode_ext(bm_inv_dest_colour, bm_inv_src_colour );
			draw_sprite_ext(sprite_get("shine_inner"), round(4-window_timer/3), x-spr_dir*16, y-32, 1+small_sprites, 1+small_sprites, 0, c_white, 1);
			gpu_set_blendmode(bm_normal);
		} 
	}
	
	
	if(attack == AT_USTRONG){
		if(window == 1){
			gpu_set_blendmode_ext(bm_inv_dest_colour, bm_inv_src_colour );
			draw_sprite_ext(sprite_get("shine_inner"), round(window_timer), x+spr_dir*2, y-32, 1+small_sprites, 1+small_sprites, 0, c_white, 1);
			gpu_set_blendmode(bm_normal);
		} else if (window == 2){
			if(window_timer < 4){
				gpu_set_blendmode_ext(bm_inv_dest_colour, bm_inv_src_colour );
				draw_sprite_ext(sprite_get("shine_inner"), round(2 - window_timer/3), x+spr_dir*2, y-32, 1+small_sprites, 1+small_sprites, 0, c_white, 1);
				gpu_set_blendmode(bm_normal);
			} else if(window_timer > 6){
				gpu_set_blendmode_ext(bm_inv_dest_colour, bm_inv_src_colour );
				draw_sprite_ext(sprite_get("shine_inner"), round((window_timer-6)/3), x+spr_dir*2, y-32, 1+small_sprites, 1+small_sprites, 0, c_white, 1);
				gpu_set_blendmode(bm_normal);
			}
		} else if (window == 3){
			if(window_timer < 5){
				gpu_set_blendmode_ext(bm_inv_dest_colour, bm_inv_src_colour );
				draw_sprite_ext(sprite_get("shine_inner"), round(3-(window_timer)/2), x+spr_dir*2, y-32, 1+small_sprites, 1+small_sprites, 0, c_white, 1);
				gpu_set_blendmode(bm_normal);
			} 
		} 
	}
}
with(pHitBox){
	if(player == other.player and attack == AT_DSPECIAL){
		var dir = 0;
		var width = 12;
		gpu_set_fog(true, color, 0, 0);
		draw_primitive_begin(pr_trianglestrip);
		draw_vertex_color(x+lengthdir_x(6, proj_angle), y+lengthdir_y(6, proj_angle), c_white, 1);
		draw_vertex_color(x-lengthdir_x(6, proj_angle), y-lengthdir_y(6, proj_angle), c_white, 1);
		for(var i = 0; i < 8; i++){
			var t = trail_array[i];
			var len = width/2 - ((i+1)/9*width/2);
			if(t.x != trail_array[i+1].x or t.y != trail_array[i+1].y){
				dir = point_direction(t.x, t.y,trail_array[i+1].x, trail_array[i+1].y)
			}
			var xx = lengthdir_x(len, dir+90);
			var yy = lengthdir_y(len, dir+90);
		
			draw_vertex_color(t.x+xx, t.y+yy, c_blue, (8 - i)/8);
			draw_vertex_color(t.x-xx, t.y-yy, c_blue, (8 - i)/8);
		}
		draw_primitive_end();
		gpu_set_fog(false, c_white, 0, 0);
	}
}