
 
 
//Patch
 

//Alt
 
// rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
// for(i = 0; i < num_alts; i++){
// 	var draw_color = (i == alt_cur) ? c_white : c_gray;
// 	var draw_x = temp_x + 2 + 10 * i;
// 	rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
// }

if("alt_name" in self){
  draw_set_halign(fa_right);
  
  //include alt. name
  is_mod = is_array(alt_name[alt_cur])
  textDraw(temp_x + 204, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1,
  `Alt. ${(alt_cur < 10 ? "0" : "")}${alt_cur}${is_mod ? chr(modifier + 97): ""}: ${(!is_mod ? alt_name[alt_cur] : alt_name[@alt_cur][@modifier])}`);
  
  //exclude alt. name
  //textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));
  
  if(show_switcher != -1) draw_changer()
}
#define draw_changer

shader_end()
// draw_rectangle_color(changer.x, changer.y, changer.x + changer.width, changer.y + changer.height, c_fuchsia,c_fuchsia,c_fuchsia,c_fuchsia,true)
draw_sprite_ext(changer.sprite, (menu_a_down or menu_rb_down or menu_lb_down)*inside_switcher, changer.x, changer.y, changer.scale, changer.scale, 0, c_white, 1)

 
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