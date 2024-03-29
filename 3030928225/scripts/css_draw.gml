//css_draw.gml
//this script allows us to draw anything over the CSS - icons, text etc.
//NOTE: CSS is short for Character Select Screen

//thanks to supersonic, we can use colors directly from init_shader.gml
//which is useful for adding special colored outlines to our alts
shader_end();

draw_sprite_ext(sprite_get("uspecial_button"),
				uspecial_button_frame, x + uspecial_button_origin_x, y + uspecial_button_origin_y,
				2, 2, 0, c_white, 1);
if ((uspecial_button_frame % 2) == 1) {
	line_1 = "Will only consume uspecial";
	line_2 = "charge if button isn't held";
	if (uspecial_mode_active) {
		line_2 = "charge if button is held";
	}
	
	draw_rectangle_color(x + 10, y + box_vert_offset,
						x + 210, y + box_vert_offset + 40,
						c_black, c_black, c_black, c_black, false);
	textDraw(x + 14, y + box_vert_offset + 4, "fName", c_white, 20, 1000, fa_left, 1, true, 1, line_1, false);
	textDraw(x + 14, y + box_vert_offset + 22, "fName", c_white, 20, 1000, fa_left, 1, true, 1, line_2, false);
}


/*
prepare_shader();

//outline colors - the set_outline function is similar to the outline_color array- the numbers are red, green and blue values
switch (alt_cur)
{
    case 7: set_outline(150, 0, 0); break; //shadow
    case 14: set_outline(15, 56, 15); break; //early access / gameboy
    case 15: set_outline(0, 255, 0); break; //milestone
    default: set_outline(0, 0, 0); break;
}

shader_start();
//we need to draw over the portrait so the outline colors apply to it too
draw_sprite_ext(get_char_info(player, INFO_CHARSELECT), 0, x+8, y+8, 2, 2, 0, c_white, 1);

//animation - character
if (css_anim_time < 140)
{
    draw_sprite_ext(
        preview_idle,
        css_anim_time * preview_anim_speed,
        preview_x + (css_anim_time < 60 ?  + 24 + (css_anim_time / 20) : 16 + (css_anim_time / 5)), //if css_anim time is under 60 it positions the character differently
        preview_y + 128,
        preview_scale, //so it is affected by small_sprites aswell
        preview_scale,
        0,
        c_white,
        css_anim_time > 10 ? (css_anim_time * -0.01 + 1.25) + 0.2 : css_anim_time * 0.1 //if css_anim_time is over 10 the sprite's transperency acts differently
    );
}

shader_end();

prepare_shader(); //resets shader
//everything below this point shouldn't use shaders (which means it won't recolor with alts)


//alt icons
//alts 13(abyss) to 18(gold rank) reffer to the rivals time based/unlockable alts
if (alt_cur >= 13 && alt_cur <= 18) draw_sprite(sprite_get("css_icons"), alt_cur-13, icon_x_pos, icon_y_pos);


//alt boxes
draw_set_halign(fa_left);
var thin = alt_total > 16; //if we have more than 16 alts, the box sizes change accordingly

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
//this is not in the same place as the character sprites because it shouldn't be affected by the shader (unless you want it to be)
if (css_anim_time < 140)
{
    textDraw(
        floor(x) + (css_anim_time < 10 ? 10 + floor(css_anim_time) : 20 + floor(css_anim_time / 10)), //if css_anim_time is under 10 the positioning work differently
        floor(y) + 43,
        "fName",
        c_white,
        0,
        1000,
        fa_left,
        1,
        true,
        css_anim_time < 10 ? css_anim_time * 0.1 : css_anim_time*-0.05+7, //if css_anim_time is under 10 the alpha works differently
        string(alt_name[alt_cur]),
        false
    );
}
*/


//functions by supersonic


//Code below by Muno
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