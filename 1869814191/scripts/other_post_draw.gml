//post-draw

var indicator_on = (get_local_setting(SET_HUD_SIZE) || get_local_setting(SET_HUD_NAMES))

var ind_hud = get_local_setting(SET_HUD_SIZE);
var ind_name = get_local_setting(SET_HUD_NAMES)*16;

if ("sansKR" in self && sansKR > 0) {
	draw_set_halign(fa_middle)
	draw_set_valign(fa_middle)
	
	//draw_set_font((ind_hud == 2) ? asset_get("roundFont") : asset_get("fName"));
	draw_set_font(asset_get("fName"));
    var str = "KR " + string(sansKR) + "%";
	var _x = x;
	//var _y = y+24;
	var _y = y-(char_height+20);
	//var _y = y-char_height-44-((ind_hud == 2)*11);
	
	//var _y = y+24;
	var _width = string_width(str)/2;
	var _height = string_height(str)/2;
	//var kr_col = get_player_hud_color(sansKR_player);
	var kr_col = /*#*/$FF00FF
    
    draw_rectangle_color(
        _x-_width-4, 
        _y+2, 
        _x+_width+1, 
        _y-_height-2, 
        c_black, c_black, c_black, c_black, 0);
    
    draw_text_colour(_x, _y, str, kr_col, kr_col, kr_col, kr_col, 1);
    draw_text_colour(_x-_width+8, _y, "KR", c_white, c_white, c_white, c_white, 1);
} 

if ("sansGrab_id" in self && other_player_id == sansGrab_id){
    var soul_spr = -1;
    var arrow_spr = -1;
    with (sansGrab_id){
        soul_spr = sprite_get("blue_soul");
        arrow_spr = sprite_get("arrow");
        shader_start();
    }
    if (arrow_spr != -1)
        draw_sprite_ext(arrow_spr, 0, x-1, y-char_height*.5, 1, 1, sansGrab_id.dspecJoyDir, c_white, 1);
        draw_sprite(soul_spr, 0, x, y-char_height*.5);
    with (sansGrab_id){
        shader_end();
    }
}