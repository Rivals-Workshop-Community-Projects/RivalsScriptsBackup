// slenderman pre-draw

if (state==PS_ATTACK_GROUND || state==PS_ATTACK_AIR){
	if (attack==AT_DSPECIAL){
		var shadow_size = 20*2
		var scale_calc = dsp_distance/(shadow_size/2)
		var b_slope = ease_quadIn( (dsp_end_timer!=0)?45:0, 80, clamp(dsp_end_timer,0,30), 30 )/100
		draw_sprite_ext( sprite_get("__shadow"), 0, x+(dsp_distance/2), y, scale_calc, 2, 0, -1, (dsp_timer>dsp_timer_min)?0.8-b_slope:0.45 )
		
		draw_sprite_ext(sprite_index,image_index,x+(4*dsp_orig_dir),y,2.4*spr_dir,1.9,0,c_black,((dsp_timer>dsp_timer_min)?0.8-b_slope:0.45)/2);
	}
}

if (state==PS_ATTACK_GROUND || state==PS_ATTACK_AIR){
	if (attack==AT_JAB){
		
		//What
		//draw_sprite_part_ext(sprite, subimg, left, top, width, height, x, y, xscale, yscale, colour, alpha);

		shader_end();
		maskHeader();
		
		var a_slope = ease_sineIn( 75, 0, clamp(jab_timer,0,jab_timer_min), jab_timer_min )/100
		var b_slope = ease_linear( 0, 75, clamp(jab_end_timer,0,30), 30 )/100

		draw_sprite_ext( sprite_get("__static_masker"), 0, x, y-66, 2.4, 2.4, 0, -1, 0.75-a_slope-b_slope )

		maskMidder();

		if (static_wait>0){
			static_wait--;
		}
		if (static_wait==0){
			draw_sprite_tiled_ext(sprite_get("__static"), get_gameplay_time()*0.4, 0, 0, 2, 2, -1, 1);
		}

		maskFooter();
		
		draw_sprite_ext(sprite_index,image_index,x,y,2.4*spr_dir,2.1,0,c_black,0.4-a_slope-b_slope);
	}
}





//alt stuff
if (get_player_color( player ) == 15){//eckva
	shader_end();
	maskHeader();
	draw_sprite_ext(sprite_index, image_index, x, y, 2*spr_dir, 2, 0, -1, 1)
	maskMidder();
	if (static_wait>0){
		static_wait--;
	}
	if (static_wait==0){
		draw_sprite_tiled_ext(sprite_get("__static_barred"), get_gameplay_time()*0.4, 0, (get_gameplay_time()*0.2), 1, 1, c_white, 1)
	}
	maskFooter();
}


//================================================================================
#define maskHeader
// Mask renderer utility: disables Normal draw.
// Draw shapes or sprites to be used as the stencil(s) by maskMidder.
//================================================================================
{
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false,false,false,true);
    draw_set_alpha(0);
    draw_rectangle_color(0,0, room_width, room_height, c_white, c_white, c_white, c_white, false);
    draw_set_alpha(1);
}
//================================================================================
#define maskMidder
// Reenables draw but only within the region drawn between maskHeader and maskMidder.
// Lasts until maskFooter is called.
//================================================================================
{
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
    gpu_set_alphatestenable(true);
}
//================================================================================
#define maskFooter
// Restores normal drawing parameters
//================================================================================
{
if instance_number(oTestPlayer) > 0 {
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false, false, false, true);
    draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false);
}
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);
gpu_set_blendenable(1);
gpu_set_colorwriteenable(true,true,true,true);
}
