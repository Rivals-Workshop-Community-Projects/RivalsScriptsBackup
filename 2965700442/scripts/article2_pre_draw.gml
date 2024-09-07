
if (script_get_index("pre_draw_" + string(obj_type)) >= 0) script_execute(script_get_index("pre_draw_" + string(obj_type)));

#define pre_draw_0() 
if (timer != 0)
{
	draw_set_alpha(alpha_screen);
    draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
	draw_set_alpha(1);
}

#define pre_draw_1() 
if (timer != 0)
{ 
	if (spr_index > -1) {
	    gpu_set_blendmode(bm_add);
	    for (var ix = -2; ix <= 2; ix += 2) for (var iy = -2; iy <= 2; iy += 2)
	    {
	        draw_sprite_ext(spr_index, img_index, (view_get_xview() + view_get_wview()/2) + ix, (view_get_yview() + view_get_hview()/2) + iy, 2, 2, image_angle, c_white, 0.5 * alpha_screen);
	    }
	    gpu_set_blendmode(bm_normal);
	}
}

#define pre_draw_2() 
if (timer != 0)
{ 
	if (spr_index > -1) {
	    gpu_set_blendmode(bm_add);
	    draw_sprite_ext(spr_index, 0, x, room_height / 2, image_xscale, image_yscale, image_angle, c_yellow, 0.3 * alpha_screen);
	    gpu_set_blendmode(bm_normal);
	}
}