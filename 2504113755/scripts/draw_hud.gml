

shader_start()

if "blink_countdown" in self {
if (self != other ) {
var temp_color = c_white;
if (blink_countdown > 0) { temp_color = c_gray; }
init_shader()
draw_sprite_ext(sprite_get("nspecial_cooldown_icon"), 0, temp_x+178, temp_y-24, 2, 2, 0, temp_color, 1);
}
shader_end()
}
user_event(11);



	
	
	
//Defines, put at bottom of file
#define maskHeader
{
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false,false,false,true);
    draw_set_alpha(0);
    draw_rectangle_color(0,0, room_width, room_height, c_white, c_white, c_black, c_black, false);
    draw_set_alpha(1);
}

#define maskMidder
{
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
    gpu_set_alphatestenable(true);
}

#define maskFooter
{
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
}