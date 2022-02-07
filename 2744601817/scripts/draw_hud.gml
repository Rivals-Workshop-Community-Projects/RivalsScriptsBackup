//Hud Icon----------------------------------------------------------------------

var hudico = sprite_get("_hudico")

if (state_cat != SC_HITSTUN && state != PS_HITSTUN_LAND){
    if ("red_mode" in self && "red_flash" in self && !red_mode) {
        shader_start();
        draw_sprite(hudico, 0, temp_x+28, temp_y+8);
        shader_end();
        draw_sprite_ext(hudico, 2, temp_x+28, temp_y+8, 1,1,0,$ff890a,red_flash);
    } else {
    	if ("red_flash" in self) {
			shader_start();
			draw_sprite(hudico, 1, temp_x+28, temp_y+8);
			shader_end();
			draw_sprite_ext(hudico, 2, temp_x+28, temp_y+8, 1,1,0,$231dea,red_flash);
    	}
    } 
} else {
    if ("red_mode" in self && "red_flash" in self && !red_mode) {
        shader_start();
        draw_sprite(hudico, 3, temp_x+28, temp_y+8);
        shader_end();
        draw_sprite_ext(hudico, 5, temp_x+28, temp_y+8, 1,1,0,$ff890a,red_flash);
    } else {
       	if ("red_flash" in self) {
			shader_start();
			draw_sprite(hudico, 4, temp_x+28, temp_y+8);
			shader_end();
			draw_sprite_ext(hudico, 5, temp_x+28, temp_y+8, 1,1,0,$231dea,red_flash);
    	}
    } 
}


//Hud Soul----------------------------------------------------------------------
if ("red_flash" in self){

	var _x = temp_x - 2;
	var _y = temp_y - 44 + red_flash * 2;
	var _spr = sprite_get("_hud_soul");
	
	//Background
	draw_sprite_ext(_spr,0,_x,_y,1,1,0,1,1);
	
	//Soul
	var loop_time = 0;
	//Blue
	if (!red_mode){
	    textDraw(_x + 42,_y + 28, "fName", $ff980a, 1000, 1000, fa_center, 1, 1, 1, "Blue", 0);
		shader_start();
		//Joycon Alt
		if (joycons){
	    	draw_sprite_ext(_spr, 19,_x,_y,1,1,0,c_white,1);
		} 
		//Normal
		else {
			draw_sprite_ext(_spr, 1 + 1 * (get_gameplay_time() / 6) % 6,_x,_y,1,1,0,c_white,1);
		}
		shader_end();
	} 
	//Purple
	else if (red_mode == 2){
	    textDraw(_x + 48,_y + 28, "fName", $ff00bb, 1000, 1000, fa_center, 1, 1, 1, "Purple", 0);
		shader_start();
	    draw_sprite_ext(_spr, 13 + 1 * (get_gameplay_time() / 6) % 6,_x,_y,1,1,0,c_white,1);
		shader_end();
	} 
	//Red
	else {
	    textDraw(_x + 40,_y + 28, "fName", $231dea, 1000, 1000, fa_center, 1, 1, 1, "Red", 0);
		shader_start();
		//Joycon Alt
		if (joycons){
	    	draw_sprite_ext(_spr, 20,_x,_y,1,1,0,c_white,1);
		} 
		//Normal
		else {
	    	draw_sprite_ext(_spr, 7 + 1 * (get_gameplay_time() / 6) % 6,_x,_y,1,1,0,c_white,1);
		}
		shader_end();
	}

}

/*
muno_event_type = 5;
user_event(14);
*/

#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, get_size)

x1 = round(x1);
y1 = round(y1);

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline {
	for (i = -1; i < 2; i++) {
		for (j = -1; j < 2; j++) {
			draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
		}
	}
}

if alpha > 0.01 draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

if get_size phone.last_text_size = [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
