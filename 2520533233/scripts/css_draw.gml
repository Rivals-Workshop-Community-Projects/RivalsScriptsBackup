#macro BOX_VOICE_ENABLE 0
#macro BOX_COLOR_PAGE 1

#macro BUTTON_NAME 0
#macro BUTTON_IX 1
#macro BUTTON_EX 2
#macro BUTTON_IY 3
#macro BUTTON_EY 4
#macro BUTTON_SPRITE_INDEX 5
#macro BUTTON_MASK_INDEX 6
#macro BUTTON_CURSOR_DETECTED 7
#macro BUTTON_PRESSED 8
#macro BUTTON_CURSOR_HOVER_TIMER 9

#macro DRAW_NO_MENU 0

#macro CURSOR_HOVER_SHOULD_DRAW 0
#macro CURSOR_HOVER_SPRITE_INDEX 1
#macro CURSOR_HOVER_IMAGE_INDEX 2
#macro CURSOR_HOVER_DRAW_X 3
#macro CURSOR_HOVER_DRAW_Y 4
#macro CURSOR_HOVER_MENU_BUTTON 5


init_shader();

if(get_player_color(player) == 0){
    set_character_color_slot(0, 0, 0, 10);
    set_character_color_slot(6, 10, 8, 0);
    set_character_color_slot(2, 26, 38, 128);
    set_character_color_slot(3, 106, 0, 0);
}  


switch(draw_menu){
	case DRAW_NO_MENU:
		// Draw Sub Menu Button
		shader_end();
		draw_menu_button(0);
		draw_menu_button(1);
		if(!mute_audio){menu_box[@BOX_VOICE_ENABLE][@BUTTON_MASK_INDEX] = 0;}
		else {menu_box[@BOX_VOICE_ENABLE][@BUTTON_MASK_INDEX] = 1;}
		
		
		if(!color_shift){menu_box[@BOX_COLOR_PAGE][@BUTTON_MASK_INDEX] = 0;}
		else {menu_box[@BOX_COLOR_PAGE][@BUTTON_MASK_INDEX] = 1;}
	break;
}



user_event(12);

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

draw_set_font(asset_get(argument[2]));
draw_set_halign(fa_left); // This is important cause it will cause the text to not align properly
if argument[7]{
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}

draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);

return string_width_ext(argument[9], argument[4], argument[5]);


#define rectDraw(x1, y1, x2, y2, color, out_color, alpha)

draw_set_alpha(argument[6]);
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[5], argument[5], argument[5], argument[5], false);
draw_set_alpha(argument[6]*1.5);
draw_rectangle_color(argument[0]+2, argument[1]+2, argument[2]-2, argument[3]-2, argument[4], argument[4], argument[4], argument[4], false);
draw_set_alpha(1);

#define draw_menu_button(number)
{
	//from function in init
	//menu_box[number] = [
    var temp_name = menu_box[number][0]; //0
    var temp_ix = menu_box[number][1]; //1
    var temp_ex = menu_box[number][2]; //2
    var temp_iy = menu_box[number][3]; //3
    var temp_ey = menu_box[number][4]; //4
    var temp_sprite_index = menu_box[number][5]; //5
    var temp_image_index = menu_box[number][6]; //6
    //cursor_detected, // 7
    //button_pressed, // 8
    //];
    var center_x = ((temp_ex - temp_ix) / 2) + temp_ix;
    var center_y = ((temp_ey - temp_iy) / 2) + temp_iy;
    
    draw_sprite_ext(sprite_get(temp_sprite_index),temp_image_index,center_x,center_y,1,1,0,c_white,1);
	//print(center_x)
	//print(center_y)
	//print(get_instance_x(cursor_id))
	//print(get_instance_y(cursor_id))
	
}