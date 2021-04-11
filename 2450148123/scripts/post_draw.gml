
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
{
	if (attack == AT_FSPECIAL_2 || attack == AT_FSPECIAL){
		

		
	draw_sprite_ext( sprite_get("fspecialfx"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
	
	
		if (has_hit && !polarhit){
		polarhit = spawn_hit_fx( x, y, polarisfx );
		polarhit.depth = depth - 1;
		polarhit = true;
		}
		
	}
	
	if (attack == AT_USPECIAL_2 || attack == AT_USPECIAL){
	draw_sprite_ext( sprite_get("uspecialfx"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
		
	}
	
	if (attack == 49){

		gpu_set_blendmode_ext(bm_src_alpha, bm_one);
		gpu_set_alphatestenable(true);


		if (final_smash_loop < 10)
		draw_sprite_ext( sprite_get("fs_beam"), image_index - 1, x, y, spr_dir, 1, 0, c_white, 0.6);
		else
		draw_sprite_ext( sprite_get("fs_beam"), 3 + image_index, x, y, spr_dir, 1, 0, c_white, 0.6);
				
		gpu_set_alphatestenable(false);
		gpu_set_blendmode(bm_normal);
	}
	
	if (attack == AT_FAIR){
		
	
	draw_sprite_ext( sprite_get("fairfx"), image_index, x, y, spr_dir, 1, 0, c_white, 1);

		
	}

	if (install)
	{
		
		switch (attack){
		case AT_DAIR:
			draw_sprite_ext( sprite_get("dair_install"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
		break;
		
		case AT_BAIR:
			draw_sprite_ext( sprite_get("bair_install"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
		break;
		
		case AT_FSTRONG:
			draw_sprite_ext( sprite_get("fstrong_install"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
		break;
		
		case AT_DSTRONG:
			draw_sprite_ext( sprite_get("dstrong_install"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
		break;
		
		case AT_USTRONG:
			draw_sprite_ext( sprite_get("ustrong_install"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
		break;
		}
	}
}




if (state == PS_AIR_DODGE)
{
    if (air_dodge_dir >= 2 && air_dodge_dir <= 4 && spr_dir = 1) || (air_dodge_dir >= 6 && air_dodge_dir <= 8 && spr_dir = -1)
    draw_sprite_ext( sprite_get("airdodge_forwardfx"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
    
    else if (air_dodge_dir >= 2 && air_dodge_dir <= 4 && spr_dir = -1) || (air_dodge_dir >= 6 && air_dodge_dir <= 8 && spr_dir = 1)
    draw_sprite_ext( sprite_get("airdodge_backfx"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
    
    else if (air_dodge_dir = 1)
    draw_sprite_ext( sprite_get("airdodge_upfx"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
    
    else if (air_dodge_dir = 5)
    draw_sprite_ext( sprite_get("airdodge_downfx"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
}

if (airdashing)
{
	if (dashdir = -1)
	{
		draw_sprite_ext( sprite_get("airdodge_backfx"), 0, x, y, spr_dir, 1, 0, c_white, 1);
	}
	else if (dashdir = 1)
	{
		draw_sprite_ext( sprite_get("dashstartfx"), 1, x, y - 2, spr_dir, 1, 0, c_white, 1);
	}
	
}

if (state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD)
{
	draw_sprite_ext( sprite_get("rollfx"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
}

if (state == PS_DASH)
{
	draw_sprite_ext( sprite_get("dashfx"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
}

if (state == PS_DASH_START)
{
	draw_sprite_ext( sprite_get("dashstartfx"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
}


user_event(12);