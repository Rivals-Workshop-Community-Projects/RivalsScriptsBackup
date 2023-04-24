if (is_attacking) switch (attack)
{
    case AT_DSTRONG:
        shader_start();
        if (window == 5 && dstrong_hit_tipper) {
            draw_sprite_ext(sprite_get("hfx_dstrong_bg"), 0, round(x + 140 * spr_dir), round(y), spr_dir, 1, 0, c_white, 1);
            
        }
        if (window == 6 && dstrong_hit_tipper) {
            var frame = ease_linear(0, 6, window_timer, window_end-1);
            if (frame < 4) {
                draw_sprite_ext(sprite_get("hfx_dstrong_bg"), frame, round(x + 140 * spr_dir), round(y), spr_dir, 1, 0, c_white, 1);
            }
        }
        shader_end();
        break;
    case AT_USPECIAL:
        var frame = -1;
    	if (window == 1 && window_timer >= 1) {
            frame = ease_linear(0, 1, window_timer, window_end-1);
    	}
    	if (window == 2) {
    		frame = 2 + ((window_timer * 0.125) % 4);
    	}
    	if (window == 3) {
    		frame = 2 + ((window_timer * 0.25) % 4);
    	}
    	if (frame >= 0)
        	draw_sprite_ext(sprite_get("fx_uspecial_portal"), frame, round(uspecial_portal_x), round(uspecial_portal_y), 1, 1, uspecial_portal_angle, c_white, 1);
        	
        		
    	if ((window >= 4 && window <= 6) || (window >= 7 && window <= 9) ) {
    		if (window >= 4 && window <= 6) {
    			spr_angle =  uspecial_portal_angle - 90;
    			
    			if (uspecial_portal_angle > -120 && uspecial_portal_angle < -60) {
	    			draw_y = -32;
    			}
	    		else
	    			draw_y = -32;
    		}
    		else {
    			spr_angle = spr_dir == -1  ?  uspecial_portal_angle - 180 : uspecial_portal_angle;
	    		draw_y = -32;
    		}
    	}
    	else {
    		spr_angle = 0;
    		draw_y = 0;
    	}
        break;
}

with (obj_article1) {
	if (player_id != other.id) continue;
	if (window == 1) 
	{
	    gpu_set_fog(1, c_gray, 0, 0);
	    for (i = -4; i < 4; i++){
	        for (j = -4; j < 4; j++) {
	            draw_sprite_ext(sprite_index, image_index, round(x + i), round(y + j), image_xscale * spr_dir, image_yscale, image_angle, c_white, 1)
	        }
	    }
	    gpu_set_fog(0, c_black, 0, 0);
	}
}

//Color Shift
var col_R = get_color_profile_slot_r( get_player_color(player), 8);
var col_G = get_color_profile_slot_g( get_player_color(player), 8);
var col_B = get_color_profile_slot_b( get_player_color(player), 8);
var col_final = make_color_rgb(col_R, col_G, col_B);

var amount = 1;
if (impulse_timer % 120 > 60) {
   amount = pingpong(1, 0, impulse_timer, 60)
}

for (var i = 0; i < 5; i++) {
    if (i == 1) continue;
	var col_R1 = get_color_profile_slot_r( get_player_color(player), i);
	var col_G1 = get_color_profile_slot_g( get_player_color(player), i);
	var col_B1 = get_color_profile_slot_b( get_player_color(player), i);
	
	var col_final1 = make_color_rgb(col_R1, col_G1, col_B1);
	
    var color_shifted = merge_colour(col_final, col_final1, amount);
	set_character_color_slot(i, color_get_red(color_shifted), color_get_green(color_shifted), color_get_blue(color_shifted), 1);
}
	
if (impulse_active) {
	impulse_glow_alpha = lerp(impulse_glow_alpha, 0.5, 0.01);
}
else {
	impulse_glow_alpha = lerp(impulse_glow_alpha, 0, 0.08);
}
	
//Glow
gpu_set_blendmode(bm_add)
shader_start()
draw_sprite_ext(sprite_get("fx_install_glow"), get_gameplay_time() * 0.125, round(x + 2 * spr_dir), round(y - 32), 1, 1, 0, c_white, impulse_glow_alpha);
shader_end()
gpu_set_blendmode(bm_normal) 
	

#define pingpong(_s, _e, _time, _time_max)
var dir = 1
if (_time % _time_max >= _time_max / 2)
	dir = -1;
return lerp(_s, _e, (dir == 1 ? (_time % _time_max) / (_time_max / 2) : (_time_max - (_time % _time_max))/ (_time_max / 2)))

#define set_shading(arr)
for (var ix = 0; ix < array_length(arr); ix++) 
	set_character_color_shading(ix, arr[ix]);