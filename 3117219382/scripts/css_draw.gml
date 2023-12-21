
 
 
//Patch
 

//Alt
 
// rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
// for(i = 0; i < num_alts; i++){
// 	var draw_color = (i == alt_cur) ? c_white : c_gray;
// 	var draw_x = temp_x + 2 + 10 * i;
// 	rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
// }

if("alt_name" not in self or "preview_x" not in self) exit;

draw_set_halign(fa_right);
  
//include alt. name
is_mod = is_array(alt_name[alt_cur])
textDraw(preview_x + 204, preview_y + 124, "fName", c_white, 0, 1000, 1, true, 1,
`Alt. ${(alt_cur < 10 ? "0" : "")}${alt_cur}${is_mod ? chr(modifier + 97): ""}: ${(!is_mod ? alt_name[alt_cur] : alt_name[@alt_cur][@modifier])}`);

//exclude alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));

if(show_switcher != -1) draw_changer()
#define draw_changer

// draw_rectangle_color(changer.x, changer.y, changer.x + changer.width, changer.y + changer.height, c_fuchsia,c_fuchsia,c_fuchsia,c_fuchsia,true)
shader_end()
if(alt_cur != 19){
	draw_sprite_ext(changer.sprite, (menu_a_down or menu_rb_down or menu_lb_down)*inside_switcher, changer.x + preview_x, changer.y + preview_y, changer.scale, changer.scale, 0, c_white, 1)
}else{
	if(flags_open) draw_open_flags()
	else draw_flags_button()
}

#define draw_open_flags()

var flag_per_row = 5
var n = alt_mods_amounts
var color = c_aqua


var i = 0
repeat(n){
	draw_sprite_ext(flags_spr, i, temp_x + 26*floor(i/flag_per_row) + 4, temp_y + 18*(i%flag_per_row) + 40, 2, 2, 0, c_white, 1)
	i++
}
var flag_left = temp_x + 26*floor(modifier/flag_per_row) + 5
var flag_top = temp_y + 18*(modifier%flag_per_row) + 40
draw_rectangle_color(flag_left, flag_top, flag_left + 25, flag_top + 18, c_white, c_white, c_white, c_white, true);


#define draw_flags_button()

draw_sprite_ext(flag_button_spr, 0, changer.x + 3, changer.y + 3, changer.scale, changer.scale, 0, c_black, 0.8)
draw_sprite_ext(flag_button_spr, 0, changer.x, changer.y, changer.scale, changer.scale, 0, c_white, 1)

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
 
draw_set_font(asset_get(argument[2]));
 
if argument[7]{ //outline. doesn't work lol
    for (i = -2; i < 2; i++){
        for (j = -2; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}
 
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
 
return string_width_ext(argument[9], argument[4], argument[5]);

#define RectDraw(x1, y1, x2, y2, color, alpha)
{
	draw_set_alpha(alpha);
	draw_rectangle_color(x1, y1, x2, y2, color, color, color, color, false);
	draw_set_alpha(1);
}

//functions by supersonic
#define prepare_shader()
{
    //init_shader(); fails to generate these variables for some reason,
    //so we assign them to these completely equivalent values
    //this allows shader_start() to be run in css_draw.gml!!!
    static_colorB = colorB;
    static_colorO = colorO;
    static_colorT = colorT;
    static_colorI = colorI;
    init_shader();
}
#define set_outline(r, g, b)
{
    //we use this function to add custom outlines to our character's portrait
    var start = 8*4; //outline
    static_colorO[start] = r/255;
    static_colorO[start+1] = g/255;
    static_colorO[start+2] = b/255;
}


