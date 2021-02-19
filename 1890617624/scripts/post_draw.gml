if url != 1890617624{
	return;
}

shader_start();

// Credit to Lukaru for circle draw code

// Ronald Magic
if attack == AT_UTHROW and (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR){
	if window == 3{
		state_timer = 0 // horrible disgusting jank
		var scale1 = sin(get_gameplay_time() * 0.1) * 30
		var scale2 = sin((get_gameplay_time() * 0.1) + 2) * 30
		var scale = 0
		if get_gameplay_time() % 2 = 0{
			scale = scale1
		} else{
			scale = scale2
		}
		beam_scale_y = 1
		scale *= clamp( window_timer * 0.1 , 0, 2)
		shader_end();
		gpu_set_blendmode_ext_sepalpha(bm_inv_dest_color,bm_inv_src_color,bm_src_alpha,bm_src_alpha);
		draw_circle_colour(x + 40 * spr_dir, y - 90, scale, c_white, c_white, false);
		gpu_set_blendmode(bm_normal)
		shader_start();
	}
	if window > 3{
		if window == 4 and window_timer >= 1 and window_timer <= 2{
			gpu_set_blendmode_ext_sepalpha(bm_inv_dest_color,bm_inv_src_color,bm_src_alpha,bm_src_alpha);
			draw_sprite_ext(sprite_get("white"), 0, view_get_xview(), view_get_yview(), view_get_hview() * 2, view_get_wview(), 0, c_white, 1);
			gpu_set_blendmode(bm_normal);
			
		} else{
			shader_end();
			var scale_x = 1 + state_timer * 8 * spr_dir
			if state_timer > 3{
				beam_scale_y += (0 - beam_scale_y) / 6
			}
			
			gpu_set_blendmode_ext_sepalpha(bm_inv_dest_color,bm_inv_src_color,bm_src_alpha,bm_src_alpha);
			
			draw_sprite_ext(sprite_get("circle"), 0, x + 40 * spr_dir, y - 90, scale_x, beam_scale_y, 0, c_white, 1);
			
			gpu_set_blendmode(bm_normal)
			
			var scale_x = 0.02 + state_timer * 0.02
			var scale_y = 0.02 + state_timer * 0.3
			var alpha = 1 - (state_timer * 0.08)
			gpu_set_blendmode(bm_add)
			draw_sprite_ext(sprite_get("shockwave_r"), 0, x + 40 * spr_dir, y - 90, scale_x, scale_y, 0, c_white, alpha)
			draw_sprite_ext(sprite_get("shockwave_r"), 0, x + 40 * spr_dir, y - 90, scale_x, scale_y, 0, c_white, alpha)
			draw_sprite_ext(sprite_get("shockwave_r"), 0, x + 40 * spr_dir, y - 90, scale_x, scale_y, 0, c_white, alpha)
			
			var scale_x = 0.02 + state_timer * 0.01
			var scale_y = 0.02 + state_timer * 0.2
			var alpha = 1 - (state_timer * 0.05)
			gpu_set_blendmode(bm_add)
			draw_sprite_ext(sprite_get("shockwave_r"), 0, x + 40 * spr_dir, y - 90, scale_x, scale_y, 0, c_white, alpha)
			gpu_set_blendmode(bm_normal)
			shader_start();
		}
	}
}

// ZA WARUDO
if attack == AT_NTHROW and window >= 3 and window < 7 and (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR){
	var ticks = state_timer - 92
	
    shader_end();
    gpu_set_blendmode_ext_sepalpha(bm_inv_dest_color,bm_inv_src_color,bm_src_alpha,bm_src_alpha);
	draw_circle_colour(x, y - floor(char_height/2), ticks * 20, c_white, c_white, false);
    gpu_set_blendmode(bm_normal)
    shader_start();
    
    var dir = 1 - (x < view_get_xview() + view_get_wview() * 0.5) * 2
    var scale = 1 + (ticks * 0.2)
    var pos_x = view_get_xview() + (view_get_wview() * (dir = -1)) + (view_get_wview() * dir * (scale - 1) * -0.02)
    var pos_y = view_get_yview() + view_get_hview() + (view_get_hview() * (scale - 1) * 0.1)
    pos_x += (-20 + random_func(1, 40, true))
    pos_y += (-20 + random_func(2, 40, true))
    var alpha = (250 - ticks * 6) * 0.01
    alpha = clamp(alpha, 0, 1)
    
    // Have to make this a separate sprite so the CSS overlay offset doesn't break
    gpu_set_blendmode(bm_add)
	draw_sprite_ext( sprite_get("cutout"), 0, pos_x, pos_y, scale * dir, scale, 0, c_white, alpha)
    gpu_set_blendmode(bm_normal)
    
    draw_sprite_ext(sprite_index,image_index,x,y,spr_dir,1,0,c_white,1);
    
} else if za_warudo or (attack == AT_NTHROW and (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) and window >= 7){
	shader_end();
	gpu_set_blendmode_ext_sepalpha(bm_inv_dest_color,bm_inv_src_color,bm_src_alpha,bm_src_alpha);
	draw_sprite_ext(sprite_get("white"), 0, view_get_xview(), view_get_yview(), view_get_hview() * 2, view_get_wview(), 0, c_white, 1);
	gpu_set_blendmode(bm_normal);
    shader_start();
    
    draw_sprite_ext(sprite_index,image_index,x,y,spr_dir,1,0,c_white,1);
}

// Airdash Spark
if attack = AT_FTHROW and (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR){
	var airdash_dir = 0
	if get_window_value(AT_FTHROW,1,AG_WINDOW_HSPEED) > 0{
		airdash_dir = 1 * spr_dir
	} else{
		airdash_dir = -1 * spr_dir
	}
	
	var scale = 0.1 + window_timer * 0.1
	var opacity = 2.5 - (window_timer * 0.2)
	
	gpu_set_blendmode(bm_add)
	draw_sprite_ext(sprite_get("airdash_spark"), 0, airdash_x, airdash_y - char_height * 0.5, scale * airdash_dir, scale, 0, c_white, opacity);
	gpu_set_blendmode(bm_normal)
}


// Draw Giant Hamburger
if attack == AT_NSPECIAL_2 and (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) and window < 3{
	var rand = random_func( 1, 10, false )
	var scale = (rand * 0.03) + ((state_timer - 7) * 0.07)
	var x_offset = (-20 - ((state_timer - 7) * 2)) * spr_dir
	var y_offset = -80 + ((state_timer - 7) * 4)
	draw_sprite_ext(sprite_get("hamburger_giant"), 0, x + x_offset, y + y_offset, scale, scale, 0, c_white, 1)
}

// Willowisp / Soul Siphon / Mc. Burst particle
with asset_get("obj_article3") {
	switch(type){
	    case "willowisp":
			gpu_set_blendmode(bm_add)
			var frame = (round(get_gameplay_time()) % 18) + 1
			draw_sprite_ext(sprite_get("willowisp"), frame, x, y, 2 * spr_dir, 2, 0, c_white, v_alpha)
			gpu_set_blendmode(bm_normal)
			break;
		
		case "soulsiphon":
			gpu_set_blendmode(bm_add)
			if !has_hit{
				var rot = get_gameplay_time() * -15 * spr_dir
				draw_sprite_ext(sprite_get("soulsiphon"), 0, x, y, 1, 1, rot, c_white, 0.1)
			} else{
				var frame = floor(timer * 0.25)
				if frame <= 9{
					draw_sprite_ext(sprite_get("soulsiphon"), frame, x, y, 2, 2, 0, c_white, 1)
				}
			}
			gpu_set_blendmode(bm_normal)
			break;
		
		case "burst_particles":
			var alpha = (2 - timer * 0.1) * 0.25
			draw_sprite_ext(sprite_get("white"), 0, view_get_xview(), view_get_yview(), view_get_hview() * 2, view_get_wview(), 0, c_white, alpha);
			
			var frame = floor(timer * 0.5)
			var scale = 1 + timer * 0.08
			
			if frame < 11{
				gpu_set_blendmode(bm_add);
				draw_sprite_ext(sprite_get("counterspark"), frame, x, y, scale, scale, 0, c_white, 1);
				gpu_set_blendmode(bm_normal);
			}
			
			scale = timer * 0.3
			alpha = 2 - timer * 0.1
			draw_sprite_ext(sprite_get("shockwave"), 0, x, y, scale * 2, scale * 2, random_func(20,360,true), c_white, alpha);
			gpu_set_blendmode(bm_add);
			draw_sprite_ext(sprite_get("shockwave"), 0, x, y, scale, scale, random_func(20,360,true), c_white, alpha);
			gpu_set_blendmode(bm_normal);
			
			if timer <= 2{
				gpu_set_blendmode_ext_sepalpha(bm_inv_dest_color,bm_inv_src_color,bm_src_alpha,bm_src_alpha);
				draw_sprite_ext(sprite_get("white"), 0, view_get_xview(), view_get_yview(), view_get_hview() * 2, view_get_wview(), 0, c_white, 1);
				gpu_set_blendmode(bm_normal);
			}
			break;
		
		case "ai_prediction": // AI player ghost image for debugging purposes
			gpu_set_blendmode(bm_add)
			draw_sprite_ext(char_id.sprite_index,char_id.image_index,x,y,spr_dir,1,char_id.image_angle,c_white,0.25);
			gpu_set_blendmode(bm_normal)
			
			draw_debug_text(x, y - 100, string(attack_name))
			
			break;
	}
}

if attack == AT_FSTRONG_2 and (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR){
	draw_sprite_ext(sprite_index,image_index,x,y,spr_dir,1,image_angle,c_white,1);
}

// Barrier
with asset_get("obj_article_solid"){
	gpu_set_blendmode(bm_add)
	
	switch(state){
		case "init":
			var frame = clamp( floor(timer * 0.5), 0, 5)
			draw_sprite_ext(sprite_get("barrier"), frame, x, y, 1.5, 1.5, 0, c_white, 1)
			break;
		case "active":
			var frame = 7 + (floor(timer * 0.5) % 7)
			draw_sprite_ext(sprite_get("barrier"), frame, x, y, 1.5, 1.5, 0, c_white, 1)
			break;
		case "break":
			var frame = clamp( floor(timer * 0.25), 0, 4)
			draw_sprite_ext(sprite_get("barrier_break"), frame, x, y, 1.5, 1.5, 0, c_white, 1)
			break;
	}
	
	gpu_set_blendmode(bm_normal)
}

// Soul Siphon flash
if soul_flash_timer > 0{
	// Thanks SuperSonic for white sprite draw code
	var alpha = soul_flash_timer / 20;
	var target_overlay_color = c_white;
	
	gpu_set_blendenable(false)
	gpu_set_colorwriteenable(false,false,false,true);
	draw_set_alpha(0);
	draw_rectangle_color(0,0, room_width,room_height, c_white,c_white,c_white,c_white, false);
	draw_set_alpha(1);
	draw_sprite_ext(sprite_index,image_index,x,y,spr_dir,1,image_angle,c_white,alpha);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);
	
	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	draw_rectangle_color(x-200,y-200, x+200,y+200, target_overlay_color,target_overlay_color,target_overlay_color,target_overlay_color, false);
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
	
    soul_flash_timer -= 1
}

// Super Spark

gpu_set_blendmode(bm_add)

if attack = AT_EXTRA_1 and supertimer < 24 and (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR){
    draw_sprite_ext(sprite_get("superspark"), floor(supertimer / 2), x + (12 * spr_dir), y, 2, 2, 0, c_white, 1);
}

if attack = AT_UTHROW and window < 3 and (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR){
	supertimer = state_timer;
    if supertimer < 24{
		draw_sprite_ext(sprite_get("superspark"), floor(supertimer / 2), x + (12 * spr_dir), y, 2, 2, 0, c_white, 1);
    }
}

if attack = AT_NTHROW and window >= 3 and window < 7 and (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR){
	supertimer = state_timer - 92;
    if supertimer < 24{
    	draw_sprite_ext(sprite_get("superspark"), floor(supertimer / 2), x, y + 160, 4, 4, 0, c_white, 1);
    }
}

gpu_set_blendmode(bm_normal)

// Lazer

if attack = AT_EXTRA_1 and window == 3 and (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR){
    draw_sprite_ext(sprite_get("lazerprojectile"), floor(window_timer / 2), x - (60 * spr_dir), y - 296, 2 * spr_dir, 2, 0, c_white, 1);
}

if attack = AT_EXTRA_1 and window == 4 and (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR){
    var pos = ((x - (60 * spr_dir)) - (view_get_xview() + view_get_wview() / 2))
    var width = 2
    if pos < -350 and spr_dir = 1{
        width = 2 + abs((pos + 350) / 212)
    }
    else if pos > 350 and spr_dir = -1{
        width = 2 + abs((pos - 350) / 212)
    }
    draw_sprite_ext(sprite_get("lazerprojectile"), (floor(window_timer / 2) % 5) + 3, x - ((60 * spr_dir) * (width - 1)), y - 296, width * spr_dir, 2, 0, c_white, 1);
}

if attack = AT_EXTRA_1 and window == 5 and (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR){
    var length = get_window_value( attack, window, AG_WINDOW_LENGTH )
    var lengthmult = abs(window_timer - length) / length
    var pos = ((x - (60 * spr_dir)) - (view_get_xview() + view_get_wview() / 2))
    var width = 2
    if pos < -350 and spr_dir = 1{
        width = 2 + abs((pos + 350) / 212)
    }
    else if pos > 350 and spr_dir = -1{
        width = 2 + abs((pos - 350) / 212)
    }
    draw_sprite_ext(sprite_get("lazerprojectile"), (floor(window_timer / 2) % 5) + 3, x - ((60 * spr_dir) * (width - 1)), y - 96 - (200 * lengthmult), width * spr_dir, 2 * lengthmult, 0, c_white, 1 * lengthmult);
    
}

if attack = AT_EXTRA_2 and window >= 2{
    
    var bgalpha = 0
    
    if explodetimer < 120{
        bgalpha = (explodetimer - 90) * 0.05
    } else {
        bgalpha = 1 - ((explodetimer - 120) * 0.01)
    }
    
    draw_sprite_ext(sprite_get("white"), 0, view_get_xview(), view_get_yview(), view_get_hview() * 2, view_get_wview(), 0, c_white, bgalpha);
    
}

if attack = AT_EXTRA_3 and window = 3{
    var bgalpha = 0
    
    bgalpha = 1 - (window_timer / 5)
    
    draw_sprite_ext(sprite_get("white"), 0, view_get_xview(), view_get_yview(), view_get_hview() * 2, view_get_wview(), 0, c_white, bgalpha);
}

shader_end()

// Instakill counter
if attack = AT_TAUNT_2{
    gpu_set_blendmode(bm_subtract)
    gpu_set_colorwriteenable(false,true,true,true);
	
	draw_circle_colour(x, y - floor(char_height/2), state_timer * 20, c_white, c_white, false);

    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode(bm_normal)
	
	shader_start();
	draw_sprite_ext(sprite_index,image_index,x,y,spr_dir,1,0,c_white,1);
	shader_end()
	
	if state_timer < (11*3){
		shader_start();
		gpu_set_blendmode(bm_add)
        gpu_set_colorwriteenable(true,false,false,true);
		draw_sprite_ext(sprite_get("counterspark"),floor(state_timer / 3), x + 12, y - 59, 1 + (state_timer * 0.3), 1 + (state_timer * 0.3), 90, c_white, 1)
        gpu_set_colorwriteenable(true,true,true,true);
		gpu_set_blendmode(bm_normal)
		shader_end()
		
		shader_start();
		gpu_set_blendmode(bm_add)
		draw_sprite_ext(sprite_get("counterspark"),floor(state_timer / 3), x + 12, y - 59, 1 + (state_timer * 0.05), 1 + (state_timer * 0.05), 90, c_white, 1)
		gpu_set_blendmode(bm_normal)
		shader_end()
	}
}

if awakening and not(attack == AT_EXTRA_3 and window > 6) and not(attack == AT_TAUNT_2){
    var alpha = sin(get_gameplay_time() * 0.1) / 0.1
    gpu_set_blendmode(bm_add)
    gpu_set_colorwriteenable(true,false,false,true);
    draw_sprite_ext(sprite_index,image_index,x,y,spr_dir,1,0,c_white,alpha);
    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode(bm_normal)
}