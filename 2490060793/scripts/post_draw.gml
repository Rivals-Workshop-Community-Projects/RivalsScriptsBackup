//post-draw

shader_start()
if (state = PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_FSPECIAL && window <= 3 && state_timer > 1 {
    draw_sprite_ext(sprite_get("fspec_indicator"), floor(state_timer/4), fspec_coords[0], fspec_coords[1], spr_dir, 1, 0, c_white, 0.5)
}

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_NSPECIAL {
    draw_sprite_ext(sprite_get("nspecial_vfx"), image_index, x, y, spr_dir, 1, 0, c_white, 1)
}
shader_end()

if draw_limit {
    var blend = gpu_get_blendmode(); //gets the current blend mode
    gpu_set_blendmode(bm_add); //use additive blending for next draw_* calls
    
    draw_set_alpha(limit_circle_alpha)
    draw_circle_color(x, y - 40, floor(limit_circle_radius), limit_circle_col, c_black, false)
    draw_set_alpha(1)
    
    gpu_set_blendmode(blend); //goes back to whatever blend mode you were in.
    
}

if draw_limit_flash {
    gpu_set_alphatestenable(true);
	gpu_set_fog(1, c_white, 0, 1);
    
        
    draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, 0, c_white, (30 - limit_flash_timer)/30)
    
    gpu_set_fog(0, c_white, 0, 0);
    gpu_set_alphatestenable(false);
}


with obj_article1 if player_id == other.id && !was_bashed {
	var blend = gpu_get_blendmode(); //gets the current blend mode
	var playercol = get_player_color(player);
    var orbcol = make_color_rgb(get_color_profile_slot_r(playercol,4),get_color_profile_slot_g(playercol,4),get_color_profile_slot_b(playercol,4))
    if playercol == 0 orbcol = make_color_rgb(181, 30, 30)
    gpu_set_blendmode(bm_add); //use additive blending for next draw_* calls
    
    draw_set_alpha(0.5)
	draw_circle_color(x, y, 50, orbcol, c_black, false)
	draw_set_alpha(1)
	
	gpu_set_blendmode(blend); //goes back to whatever blend mode you were in.
}

//xslash text
if tip_active && break_active {
	draw_debug_text(floor(x-80), floor(y+10), "Press Attack + Special!")
}


if genesis_timer > 0 {
	maskHeader();

	// draw mask shape
	draw_circle_color(x, y, genesis_timer_2*30, c_black, c_black, false)
	
	maskMidder();
	
	with asset_get("par_block") {
		var _id = self
		var _x = get_instance_x(_id)
		var _y = get_instance_y(_id)
		with other {
			//if _x > view_get_xview() && _x < view_get_xview() + view_get_wview() {
				var _xscale = 0
				var _yscale = 0
				
				while position_meeting(_x+(_xscale*32),_y,_id) {
					_xscale += 0.5
				}
				
				while position_meeting(_x,_y+(_yscale*32),_id) {
					_yscale += 0.5
				}
				draw_sprite_ext(sprite_get("b_error"), 0, _x, _y, _xscale, _yscale, 0, c_white, genesis_timer/20)
			//}
		}
	}
	
	with asset_get("par_jumpthrough") {
		var _id = self
		var _x = get_instance_x(_id)
		var _y = get_instance_y(_id)
		with other {
			var _xscale = 0
			var _yscale = 0
			
			while position_meeting(_x+(_xscale*32),_y,_id) {
				_xscale += 0.5
			}
			
			while position_meeting(_x,_y+(_yscale*32),_id) {
				_yscale += 0.5
			}
			draw_sprite_ext(sprite_get("j_error"), 0, _x, _y, _xscale, _yscale, 0, c_white, genesis_timer/20)
		}
	}
	

	maskFooter();
	
}



#define maskHeader

gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle_color(0,0, room_width, room_height, c_white, c_white, c_white, c_white, false);
draw_set_alpha(genesis_timer/20);

#define maskMidder

gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);

#define maskFooter

gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);