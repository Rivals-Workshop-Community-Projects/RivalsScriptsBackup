//article2_post_draw
if(player_id.phone_cheats[player_id.CHEAT_DEBUG] == 2)
{
	with oPlayer
	{
		if(hsp != 0 || vsp != 0)
		{
			var vsp_mult = -2 * abs(vsp) * lerp(-1,1,!other.is_exit);

			var in_portal = collision_rectangle(other.x - other.detect_x[other.growth], other.y, other.x + other.detect_x[other.growth], other.y + vsp_mult,self,true,false);
			var below_portal = collision_rectangle(other.x - other.detect_x[other.growth], other.y, other.x + other.detect_x[other.growth], other.y - vsp_mult,self,true,false);
			
			if(in_portal && free && (vanda_in_nspecial == noone || vanda_in_nspecial == other.player_id))
			{
				draw_sprite_ext(a_hud_life_spr, 2, other.x - other.detect_x[other.growth], other.y, 1, 1, 0, c_red, 1);
				draw_sprite_ext(a_hud_life_spr, 2, other.x - other.detect_x[other.growth], other.y + vsp_mult, 1, 1, 0, c_red, 1);
				draw_sprite_ext(a_hud_life_spr, 2, other.x + other.detect_x[other.growth], other.y, 1, 1, 0, c_red, 1);
				draw_sprite_ext(a_hud_life_spr, 2, other.x + other.detect_x[other.growth], other.y + vsp_mult, 1, 1, 0, c_red, 1);
			}
			else
			{
				draw_sprite_ext(a_hud_life_spr, 2, other.x - other.detect_x[other.growth], other.y, 1, 1, 0, c_white, 1);
				draw_sprite_ext(a_hud_life_spr, 2, other.x - other.detect_x[other.growth], other.y + vsp_mult, 1, 1, 0, c_white, 1);
				draw_sprite_ext(a_hud_life_spr, 2, other.x + other.detect_x[other.growth], other.y, 1, 1, 0, c_white, 1);
				draw_sprite_ext(a_hud_life_spr, 2, other.x + other.detect_x[other.growth], other.y + vsp_mult, 1, 1, 0, c_white, 1);
			}
			if(below_portal && vsp*lerp(-1,1,other.is_exit) < 0 && vanda_in_nspecial == other.player_id)
			{
				draw_sprite_ext(a_hud_life_spr, 3, other.x - other.detect_x[other.growth], other.y, 1, 1, 0, c_blue, 1);
				draw_sprite_ext(a_hud_life_spr, 3, other.x - other.detect_x[other.growth], other.y - vsp_mult, 1, 1, 0, c_blue, 1);
				draw_sprite_ext(a_hud_life_spr, 3, other.x + other.detect_x[other.growth], other.y, 1, 1, 0, c_blue, 1);
				draw_sprite_ext(a_hud_life_spr, 3, other.x + other.detect_x[other.growth], other.y - vsp_mult, 1, 1, 0, c_blue, 1);
			}
			else
			{
				draw_sprite_ext(a_hud_life_spr, 3, other.x - other.detect_x[other.growth], other.y, 1, 1, 0, c_gray, 1);
				draw_sprite_ext(a_hud_life_spr, 3, other.x - other.detect_x[other.growth], other.y - vsp_mult, 1, 1, 0, c_gray, 1);
				draw_sprite_ext(a_hud_life_spr, 3, other.x + other.detect_x[other.growth], other.y, 1, 1, 0, c_gray, 1);
				draw_sprite_ext(a_hud_life_spr, 3, other.x + other.detect_x[other.growth], other.y - vsp_mult, 1, 1, 0, c_gray, 1);
			}
		}
	}
}


#define pre_draw_shader_method(start_x, start_y, end_x, end_y)
    //Change the alpha without changing the color of the background
    gpu_set_colorwriteenable(false,false,false,true);
    draw_set_alpha(1);
    
    gpu_set_blendmode_ext_sepalpha(bm_one, bm_zero, bm_inv_src_alpha, bm_zero);
    draw_rectangle_color(x - sprite_xoffset, y - sprite_yoffset, x + sprite_width - sprite_xoffset, y + sprite_height - sprite_yoffset, c_white, c_white, c_white, c_white, false);
    
    gpu_set_blendmode(bm_normal)
    draw_rectangle_color(start_x, start_y, end_x, end_y, c_white, c_white, c_white, c_white, false);
    
    gpu_set_colorwriteenable(true,true,true,true);
    
    //In the draw event, all sprites will be drawn according to this blendmode, which is reset first thing in post draw
    gpu_set_blendmode_ext_sepalpha(bm_src_alpha, bm_inv_src_alpha, bm_inv_dest_alpha, bm_inv_src_alpha);
    
#define post_draw_shader_method(start_x, start_y, end_x, end_y)
    gpu_set_colorwriteenable(true,true,true,false);
    
    gpu_set_blendmode_ext_sepalpha(bm_inv_dest_alpha, bm_dest_alpha, bm_src_alpha, bm_inv_src_color);
    draw_rectangle_color(start_x, start_y, end_x, end_y, nspecial_shader_color, nspecial_shader_color, nspecial_shader_color, nspecial_shader_color, false);