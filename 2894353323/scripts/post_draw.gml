var bar_x = x - 22;
var bar_y = y - char_height - 32 - hud_offset + 1;
var bar_width = 44;
var bar_height = 2;

var exp_gague_total = skill_exp_smooth / ease_quadIn(skill_exp_min, skill_exp_max, skill_level-1, skill_level_max);
var bar_color = skill_exp_smooth >= skill_exp - 0.1 ? make_color_rgb(106, 229, 255) : c_white;

draw_sprite_ext(sprite_get("hud_exp_player"), 0, x, y - char_height - 32 - hud_offset, 2, 2, 0, c_black, 1);
draw_rectangle_color(bar_x, bar_y + 1, bar_x + (bar_width * exp_gague_total), bar_y + bar_height, bar_color, bar_color, bar_color, bar_color, false);

if (is_attacking && attack == AT_NSPECIAL_2) {
	
}

if (is_attacking && attack == AT_DSPECIAL) {
    var box_xoff = x-48;
    var box_yoff = y-192;
    
    var desc_xoff = x-48;
    var desc_yoff = y-192-64;
    
    var box_color = can_select_skill ? c_white : c_gray;
    
    if (window == 4 || (window == 5 && window_timer <= 12)) {
        //Overlay
        sprite_draw_hud(sprite_get("hud_ol"), 0, box_xoff, box_yoff, box_color, 1);
        
        //Buttons
        var button_speed = (window == 5 && window_timer <= 12) ? 4 : 12
        sprite_draw_hud(sprite_get("hud_btn"), get_gameplay_time() % button_speed <= 4 ? 0 : 1, box_xoff + 64, box_yoff + (32 * skill_index), box_color, 1);
        if (!in_battle)
        	sprite_draw_hud(sprite_get("hud_arrows"), get_gameplay_time() % button_speed <= 4 ? 0 : 1, box_xoff - 32, box_yoff + (32 * skill_index), box_color, 1);
        
        if (skill_next[0] != undefined) sprite_draw_hud(skill_next[0].icon, skill_next[0].icon_img, box_xoff + 64, box_yoff + (32 * 0), box_color, 1);
        if (skill_next[1] != undefined) sprite_draw_hud(skill_next[1].icon, skill_next[1].icon_img, box_xoff + 64, box_yoff + (32 * 1), box_color, 1);
        if (skill_next[2] != undefined) sprite_draw_hud(skill_next[2].icon, skill_next[2].icon_img, box_xoff + 64, box_yoff + (32 * 2), box_color, 1);
        if (skill_next[3] != undefined) sprite_draw_hud(skill_next[3].icon, skill_next[3].icon_img, box_xoff + 64, box_yoff + (32 * 3), box_color, 1);
        
        text_draw(box_xoff + 64 + 40, box_yoff + 16, "fName", box_color, 0, 1000, 1, true, 1, skill_next[0] != undefined ? skill_next[0].name : "---");
        text_draw(box_xoff + 64 + 40, box_yoff + 32 + 16, "fName", box_color, 0, 1000, 1, true, 1, skill_next[1] != undefined ? skill_next[1].name : "---");
        text_draw(box_xoff + 64 + 40, box_yoff + 64 + 16, "fName", box_color, 0, 1000, 1, true, 1, skill_next[2] != undefined ? skill_next[2].name : "---");
        text_draw(box_xoff + 64 + 40, box_yoff + 96 + 16, "fName", box_color, 0, 1000, 1, true, 1, skill_next[3] != undefined ? skill_next[3].name : "---");
        
        sprite_draw_hud(sprite_get("hud_ol"), 0, box_xoff, box_yoff, box_color, 1);
        text_draw(desc_xoff + 8, desc_yoff + 8, "fName", box_color, 16, 1000, 1, true, 1, string_line_break(skill_next[skill_index] != undefined ? skill_next[skill_index].description_short : "", 208));
        text_draw(desc_xoff + 8, desc_yoff - 16, "medFont", skill_points > 0 ? c_white : c_red, 0, 1000, 1, true, 1, "SP: " + (!in_battle ? "Infinite!" : string(skill_points)));
        
    }
    
    if (window == 5) {
        var window_anim = window_end / get_window_value(attack, window, AG_WINDOW_ANIM_FRAMES) ;
        
        if (window_timer >= window_anim * 3 && window_timer <= window_anim * 5) {
            if (skill_next[skill_index] != undefined) sprite_draw_hud(skill_next[skill_index].icon, skill_next[skill_index].icon_img, x + 34 * spr_dir, y - 96, c_white, 1);
        }
    }
}

#define string_line_break(_str, _width)
var textbox_pos = 0;
var textbox_linenum = 0;
var empty_char = ' ';
var typetext = "";
var textbox_linetext = "";
repeat(string_length(_str)) {
    var word = "";	
	if (empty_char == ' ') {
    	for (var j = textbox_pos; j < string_length(_str); j++) {
    		if (string_char_at(_str, j + 1) == ' ') {
    			break;
    		}
    		else {
    			word += string_char_at(_str, j + 1);
    		}
    	}
	}
	var word_width = string_width(word);
	if (word_width + string_width(textbox_linetext) > _width) {
		typetext += "
		";
		textbox_linenum ++;
		textbox_linetext = "";
		
	}
	empty_char = string_char_at(_str, textbox_pos + 1)

	// Save the text
	typetext += string_char_at(_str,textbox_pos+1);
	textbox_linetext += string_char_at(_str,textbox_pos+1);
	textbox_pos++;
}
return typetext

#define text_draw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

draw_set_halign(fa_left);
draw_set_font(asset_get(argument[2]));
 
if (argument[7]){
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}
 
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
 
return string_width_ext(argument[9], argument[4], argument[5]);

#define sprite_draw_hud(_spr, _img, _x, _y, _color, _alpha)
draw_sprite_ext(_spr, _img, _x, _y, 2, 2, 0, _color, _alpha);