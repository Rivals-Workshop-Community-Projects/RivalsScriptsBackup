// article1_pre_draw.gml

/*
gpu_set_fog(1, hud_color, 0, 1);

shader_end();
draw_sprite_ext( sprite_index,		// sprite
0,										// image_index
x,										// x
y + 2,										// y
1.3,										// xscale
1.3,										// yscale
0,						// rot
hud_color,								// color
1 );									// alpha

gpu_set_fog(0, c_white, 0, 0);
*/

draw_sprite_ext( sprite_get("indicator"), 0, x - 0*spr_dir, y - 46, 1, 1, 0, hud_color, 1 );