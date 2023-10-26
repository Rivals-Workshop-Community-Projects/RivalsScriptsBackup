if("stored_dmg" not in self) exit;
	
draw_sprite_ext(sprite_get("hud_meter"), 0, temp_x + 34, temp_y - 4, 2, 2, 0, c_white, 1 );

var width;
if(!blue){
	width = (stored_dmg * 2) + 1;
}else{
	width = 60 - ((stored_dmg - 30) * 2) + 1;
}



maskHeader();
draw_sprite_part_ext(sprite_get("hud_meter"), 1, 0, 0, width, 4, temp_x + 34, temp_y - 4, 2, 2, c_white, 1);
maskMidder();
shader_start();
//draw_sprite_tiled_ext(sprite_get("hud_meterfill"), 0, temp_x + (get_gameplay_time() / (3 + (!blue * 5))), temp_y, 1, 1, c_white, 1);
//thank you lukaru
var scrollAmount = get_gameplay_time() / (3 + (!blue * 5));
draw_sprite_ext(sprite_get("hud_meterfill"), 0, temp_x-84 + scrollAmount%120, temp_y-2, 1, 1, 0, c_white, 1);
draw_sprite_ext(sprite_get("hud_meterfill"), 0, temp_x+36 + scrollAmount%120, temp_y-2, 1, 1, 0, c_white, 1);

maskFooter();
shader_end();

draw_set_font(asset_get("medFont"));

var font_col = c_white;
var font_x = 176;
var font_y = -16;
draw_text_color(temp_x + font_x - 2, temp_y + font_y - 2, string(stored_dmg), c_black, c_black, c_black, c_black, 1);
draw_text_color(temp_x + font_x + 2, temp_y + font_y - 2, string(stored_dmg), c_black, c_black, c_black, c_black, 1);
draw_text_color(temp_x + font_x - 2, temp_y + font_y + 2, string(stored_dmg), c_black, c_black, c_black, c_black, 1);
draw_text_color(temp_x + font_x + 2, temp_y + font_y + 2, string(stored_dmg), c_black, c_black, c_black, c_black, 1);

draw_text_color(temp_x + font_x, temp_y + font_y, string(stored_dmg), font_col, font_col, font_col, font_col, 1);

/*
if(get_match_setting( SET_PRACTICE )){
	draw_debug_text(temp_x - 8, temp_y - 24, "Taunt+Up/Down: Change Affinity");	
}
*/

//goes at bottom

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
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
}