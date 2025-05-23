//Slenderman post_draw.gml

if (dsp_air_try_cd_timer)
{
	var a_slope = ease_quadOut(0, 100, dsp_air_try_cd_timer, dsp_air_try_cd_timer_max) / 100;
	draw_sprite_ext(sprite_get("__operator_symbol"), 0, x, y - 100, 2, 2, 0, -1, a_slope);
}

// Slenderman intro.
if (state == PS_SPAWN && get_gameplay_time() <= 122)
{
	shader_end();
	maskHeader();
	var a_slope = ease_cubeIn( 100, 0, clamp(state_timer,0,122), 122 )/100
	draw_sprite_ext( sprite_get("__static_masker"), 0, x, y-66, 3, 3, 0, -1, a_slope )
	maskMidder();
	if (static_wait > 0) static_wait--;
	if (static_wait == 0) draw_sprite_tiled_ext(sprite_get("__static"), get_gameplay_time() * 0.4, x - 120, y - 120, 2, 2, -1, 1);
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
	if (instance_number(oTestPlayer) > 0)
	{
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
