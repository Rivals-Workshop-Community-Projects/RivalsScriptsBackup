// css_draw will draw things in your character select screen.
//css_draw.gml

alt_cur = get_player_color(player);

//thanks to supersonic, we can use colors directly from init_shader.gml
//which is useful for adding special colored outlines to our alts
shader_end();
prepare_shader();

shader_start();
//draw portrait again to prevent fuckups
draw_sprite_ext(get_char_info(player, INFO_CHARSELECT), 0, x+8, y+8, 2, 2, 0, c_white, 1);

//animation - character
if (css_anim_time < 140)
{
    draw_sprite_ext(
        preview_idle,
        css_anim_time * preview_anim_speed,
        preview_x + (css_anim_time < 60 ?  + 24 + (css_anim_time / 20) : 16 + (css_anim_time / 5)),
        preview_y + 128,
        preview_scale,
        preview_scale,
        0,
        c_white,
        css_anim_time > 10 ? (css_anim_time * -0.01 + 1.25) + 0.2 : css_anim_time * 0.1
    );
}

shader_end();
prepare_shader(); //resets shader

//everything below this point shouldn't use shaders

//alt icons
//alts 13(abyss) to 18(gold rank) reffer to the rivals time based/unlockable alts
//switch (alt_cur)
//{
//    case 13: draw_sprite_ext(asset_get("prem_skin_spr"), 3, icon_x_pos + 32, icon_y_pos + 34, 2, 2, 0, c_white, 1); break; //abyss
 //   case 14: draw_sprite_ext(asset_get("prem_skin_spr"), 2, icon_x_pos + 32, icon_y_pos + 34, 2, 2, 0, c_white, 1); break; //early access
//    case 15: draw_sprite_ext(asset_get("prem_skin_spr"), 8, icon_x_pos + 32, icon_y_pos + 34, 2, 2, 0, c_white, 1); break; //milestone
//    case 16: draw_sprite_ext(asset_get("prem_skin_spr"), 7, icon_x_pos + 32, icon_y_pos + 34, 2, 2, 0, c_white, 1); break; //seasonal
//    case 17: draw_sprite_ext(asset_get("prem_skin_spr"), 0, icon_x_pos + 32, icon_y_pos + 34, 2, 2, 0, c_white, 1); break; //infamous/premium
//    case 18: draw_sprite_ext(asset_get("prem_skin_spr"), 5, icon_x_pos + 32, icon_y_pos + 34, 2, 2, 0, c_white, 1); break; //gold rank
//}
//other notable icon include:
//  image_index 1: custom colors
//  image_index 4: early access gameboy icon but with GP instead of EA
//  image_index 6: gear icon
//  image_index 9: another gear icon
//  image_index 10: gift package alt (as seen on ori and shovel knight's free champion skins)


//alt boxes
draw_set_halign(fa_left);
var thin = alt_total > 16;
rectDraw(x+78, y+9, 132, 6, c_black);
for (i = 0; i < alt_total; i++)
{
	var draw_color = (i == alt_cur) ? c_white : c_gray * 0.5;
	var draw_x = x + 78 + (thin ? 4 : 8) * i;
	rectDraw(draw_x, y + 9, thin ? 1 : 5, 4, draw_color);
}
var txt = "#" + string(alt_cur);
rectDraw(x + 76, y + 15, 42, 20, c_black);
textDraw(x + 82, y + 19, "fName", c_white, 20, 1000, fa_left, 1, false, 1, txt, false);

//animation - alt name text
if (css_anim_time < 140)
{
    textDraw(
        floor(x) + (css_anim_time < 10 ? 10 + floor(css_anim_time) : 20 + floor(css_anim_time / 10)),
        floor(y) + 43,
        "fName",
        c_white,
        0,
        1000,
        fa_left,
        1,
        true,
        css_anim_time < 10 ? css_anim_time * 0.1 : css_anim_time*-0.05+7,
        string(alt_name[alt_cur]),
        false
    );
}

var cursorPos = [get_instance_x(cursor_id)-cursorPosOffset, get_instance_y(cursor_id)-cursorPosOffset];
var onButton = (abs(cursorPos[0]-(buttonPos[0]-buttonOffset)) < buttonRadius && abs(cursorPos[1]-(buttonPos[1]-buttonOffset)) < buttonRadius);

draw_sprite_ext(sprite_get("inputbutton"), projectEWallJump, buttonPos[0], buttonPos[1], 2, 2, 0, c_white, 1);
if onButton{
	
	draw_sprite_ext(sprite_get("inputoverlay"), projectEWallJump, buttonPos[0], buttonPos[1], 2, 2, 0, c_white, 0.5 + (menu_a_down/3));
	
	var commsOffset = [-120, -20];
	
	if projectEWallJump draw_debug_text(floor(buttonPos[0]+commsOffset[0]), floor(buttonPos[1]+commsOffset[1]), 
	
	"Disable Project: Evolve 
	walljump input"
	
	);	
	
	else draw_debug_text(floor(buttonPos[0]+commsOffset[0]), floor(buttonPos[1]+commsOffset[1]), 
	
	"Enable Project: Evolve 
	walljump input"
	
	);
	
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

//functions by muno
#define rectDraw(x1, y1, width, height, color)
{
    draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);
}
#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)
{
    draw_set_font(asset_get(font));
    draw_set_halign(align);

    if outline {
        for (i = -1; i < 2; i++) {
            for (j = -1; j < 2; j++) {
                draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
            }
        }
    }

    if alpha draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

    if array_bool return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
    else return;
}