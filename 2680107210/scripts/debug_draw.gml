//debug-draw
// Draw Screen

if(variable_instance_exists(self,"phone_cheats") && phone_cheats[CHEAT_DEBUG] == 1)
{
    with(oPlayer)
	{
		if(self != other)
		{
			draw_debug_text(x, y + 20, "HSP, VSP: " + string(hsp) + ", " + string(vsp));
			draw_debug_text(x, y + 40, "State: " + string(get_state_name(state)) + " (" + string(state) + ")");
			draw_debug_text(x, y + 60, "Window: " + string(window) + " (" + string(window_timer) + ")");
		}
	}
	
	with(obj_article1)
	{
		draw_debug_text(x, y + 20, "HSP, VSP: " + string(hsp) + ", " + string(vsp));
		draw_debug_text(x, y + 40, "MiState: " + string(microstate) + ", " + string(state_timer));
		draw_debug_text(x, y + 60, "Index: " + string(index));
		//draw_debug_text(x, y + 60, "Owner: " + string(my_hitbox.player));
	}
}

//Shader demonstration
/*
if(false)
{
    //bm_zero	        (0, 0, 0, 0)
    //bm_one	        (1, 1, 1, 1)
    //bm_src_color	    (Rs, Gs, Bs, As)
    //bm_inv_src_color	(1-Rs, 1-Gs, 1-Bs, 1-As)
    //bm_src_alpha	    (As, As, As, As)
    //bm_inv_src_alpha	(1-As, 1-As, 1-As, 1-As)
    //bm_dest_alpha	    (Ad, Ad, Ad, Ad)
    //bm_inv_dest_alpha	(1-Ad, 1-Ad, 1-Ad, 1-Ad)
    //bm_dest_color	    (Rd, Gd, Bd, Ad)
    //bm_inv_dest_color	(1-Rd, 1-Gd, 1-Bd, 1-Ad)
    //bm_src_alpha_sat	(f, f, f, 1) where f = min(As, 1-Ad)
    //gpu_set_blendmode_ext_sepalpha(bm_inv_dest_color,bm_inv_src_color,bm_src_alpha,bm_src_alpha);
    gpu_set_blendmode_ext(bm_inv_dest_color,bm_inv_src_color);
    draw_circle_color(x, y+spr_char_center, 92, c_white, c_white, false);
    draw_circle_color(x, y+spr_char_center, 64, c_white, c_white, false);
    gpu_set_blendmode(bm_normal);
}*/