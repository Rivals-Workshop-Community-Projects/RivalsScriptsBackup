// css_draw
// Checks if the seventh slot of the first skins blue shade is 255 (it is),
// then plays the noise and sets the colour to 256. 256 rounds down to 255
// in game automatically so there is no penalty to alts for using this method.

/*
    SupersonicNK's css_draw.gml
    
    please don't take this without permission!
    you can ask me if you want to use it.
    discord: Supersonic#9999
*/

cpu_hover_draw(); 

var is_defined_alt = alt_cur < array_length(alts)
if is_defined_alt {
		var alt_really_cur = get_player_color(player)
		var is_still_defined_alt = alt_really_cur < array_length(alts)
		var icon_count = array_length(alts[alt_really_cur][2])
		var icon_arr = alts[alt_really_cur][2]
		var icon_spr = sprite_get("css_icons")
		var w = sprite_get_width(icon_spr)*2
		var dist = w
		if slide_timer < 20 {
			dist = ease_backOut(4, w, slide_timer, 20, 1);
		} else if slide_timer < 100 {
			dist = w
		} else {
			dist = ease_sineInOut(w, 4, slide_timer-100, 20);
		}
		for (var i = 0; i < icon_count; i++) {
			var _x = floor(dist * (i+1-icon_count))
			
			draw_sprite_ext(icon_spr, icon_arr[i], x+202-w+_x, y+108, 2, 2, 0, -1, 1)
		}
}
if slide_timer < 120 { 
    draw_set_font(asset_get("fName")) //ensure correct font for text length measurement
    var text = (css_hovered ? `#${alt_cur+1}: ` : "") + (alt_cur < array_length(alts) ? alts[alt_cur][0] : "undefined; add another alt");
    var max_s = max(80,string_width(text)+20);
    var char_max = 40;
    if slide_timer < 20 {
        slide_pos = ease_backOut(0,max_s,slide_timer,20,1);   
        text_pos = slide_pos;    
        char_pos = ease_circOut(10,char_max,slide_timer,20);  
    } else if slide_timer < 100 { 
        slide_pos = lerp(slide_pos,max_s,0.5);  
        if abs(max_s-slide_pos) < 1 slide_pos = max_s; 
        text_pos = max_s;
        char_pos = lerp(char_pos,char_max,0.5);  
        if abs(80-char_pos) < 1 char_pos = 80; 
    } else {
        slide_pos = ease_sineIn(max_s,0,slide_timer-100,20); 
        text_pos = slide_pos;
        char_pos = ease_sineIn(char_max,10,slide_timer-100,20);  
    }
    var cssline_spr = sprite_get("css_line");
    var offs_y = 140;
    var offs_x = 10;
    
    var width = sprite_get_width(preview_idle)*preview_scale;
    var height = sprite_get_height(preview_idle)*preview_scale;
    var xoffs = sprite_get_xoffset(preview_idle)*preview_scale;
    var yoffs = sprite_get_yoffset(preview_idle)*preview_scale;
	//var dist_to_left_edge = (width-xoffs);
	//print(dist_to_left_edge);
	
	var char_xpos = x-xoffs+offs_x+char_pos-16;
	//var left_edge = char_xpos+dist_to_left_edge;
    
    var dist_from_side = (char_xpos)-(x+offs_x);
    //print(dist_from_side);
    
    
    draw_sprite_part_ext(preview_idle, css_timer*preview_anim_speed,
			-dist_from_side/2,
		    0,
		    width,
		    height,
		    char_xpos-dist_from_side,
		    y-yoffs+offs_y+4,
		    preview_scale, 
		    preview_scale,
		    -1,
		    text_pos/max_s)
    	shader_end();
    	//draw_line_color(x-xoffs+offs_x,y-40+offs_y,x-xoffs+offs_x-dist_from_side,y-40+offs_y,c_red,c_red)
    maskHeader();
        draw_rectangle_color(x+8,y+8,x+210,y+171, c_lime,c_lime,c_lime,c_lime,false)
    maskMidder();
    	
        draw_sprite_ext(cssline_spr,0,x+offs_x,y+offs_y,(1/sprite_get_width(cssline_spr))*slide_pos,2,0,__dclr,1);
        draw_sprite_ext(cssline_spr,1,x+offs_x+slide_pos,y+offs_y,2,2,0,__dclr,1);
        draw_set_alpha(text_pos/max_s);
        draw_debug_text(floor(x)+offs_x+floor(text_pos/max_s*6),floor(y)+offs_y-8,text);
        draw_set_alpha(1);
        
    maskFooter();
    
}

if array_length(__soup_alt_directives[@ alt_cur]) > 0 {
	draw_sprite_ext(sprite_get("alt_swap_button"),alt_directive_hovering_button ? 1+(alt_directive_button_timer>0) : 0, x+alt_directive_button_pos[0], y+alt_directive_button_pos[1], 2, 2, 0, -1, 1);
}

draw_sprite_ext(sprite_get("cssvoice_button"), cur_lang * 3 + lang_button_state, x + lang_x, y + lang_y, 2, 2, 0, c_white, 1);

#define maskHeader

gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle_color(0,0, room_width, room_height, c_white, c_white, c_white, c_white, false);
draw_set_alpha(1);

#define maskMidder

gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);

#define maskFooter

gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
 
draw_set_font(asset_get(argument[2]));
 
if argument[7]{ //outline. doesn't work lol
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}
 
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
 
return string_width_ext(argument[9], argument[4], argument[5]);
 
 
 
#define rectDraw(x1, y1, x2, y2, color)
 
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);

#define cpu_hover_draw()
if (cpu_hover_time > 0) {
    var prog = min(cpu_hover_time/10, 1);
    var colprog = min(cpu_color_swap_time/5, 1);
    var col = merge_color(cpuh_prev_color, cpuh_new_color, colprog);
    draw_sprite_ext(cpu_hover_sprite, 0, x - 4, y - 6, 2, 2, 0, col, prog);
    draw_set_alpha(prog);
    draw_debug_text(plate_bounds[2]-17, plate_bounds[3]+1, `P${cpu_hovering_player}`);
    draw_set_alpha(1);
}