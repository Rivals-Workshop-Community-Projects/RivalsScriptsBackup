//css_draw.gml
//this script allows us to draw anything over the CSS - icons, text etc.
//NOTE: CSS is short for Character Select Screen

alt_cur = get_player_color(player); //checks the current alt

//milestone alt mask - this draws directly behind the character, so you should make the character somewhat transparent for the effect to work
if (alt_cur == 15)
{
    //these 3 functions are custom functions which allow you to draw masks in the range of whatever you want

    //this section starts with you setting up the frame for the mask, think of it like a hole that's shaped like what you're putting here
    //in this case, this is our player
    maskHeader(); 
    draw_sprite_ext(get_char_info(player, INFO_CHARSELECT), 0, x+8, y+8, 2, 2, 0, c_white, 1);

    //this section stops the shape of our mask and starts the set up for the actual texture we put below it
    //basically, this is what we see through our "hole"
    //we use draw_sprite_tiled as it coverts the entire screen, but it doesn't need to
    maskMidder();
    shader_end(); //css_draw actually starts with the shader on, but i don't want my texture to use the shader
    draw_sprite_tiled(
        sprite_get("vfx_milestone_mask"),
        css_anim_time * mask_anim_speed,
        x + css_anim_time * mask_move_x,
        y + css_anim_time * mask_move_y
    );

    //closes the masking and goes back to drawing normally again
    maskFooter();
}

//thanks to supersonic, we can use colors directly from init_shader.gml
//which is useful for adding special colored outlines to our alts
shader_end();
prepare_shader();

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
switch (alt_cur)
{
    case 13: draw_sprite_ext(asset_get("prem_skin_spr"), 3, icon_x_pos + 32, icon_y_pos + 34, 2, 2, 0, c_white, 1); break; //abyss
    case 14: draw_sprite_ext(asset_get("prem_skin_spr"), 2, icon_x_pos + 32, icon_y_pos + 34, 2, 2, 0, c_white, 1); break; //early access
    case 15: draw_sprite_ext(asset_get("prem_skin_spr"), 8, icon_x_pos + 32, icon_y_pos + 34, 2, 2, 0, c_white, 1); break; //milestone
    case 16: draw_sprite_ext(asset_get("prem_skin_spr"), 7, icon_x_pos + 32, icon_y_pos + 34, 2, 2, 0, c_white, 1); break; //seasonal
    case 17: draw_sprite_ext(asset_get("prem_skin_spr"), 0, icon_x_pos + 32, icon_y_pos + 34, 2, 2, 0, c_white, 1); break; //infamous/premium
    case 18: draw_sprite_ext(asset_get("prem_skin_spr"), 5, icon_x_pos + 32, icon_y_pos + 34, 2, 2, 0, c_white, 1); break; //gold rank
}
//other notable icon include:
//  image_index 1: custom colors
//  image_index 4: early access gameboy icon but with GP instead of EA
//  image_index 6: gear icon
//  image_index 9: another gear icon
//  image_index 10: gift package alt (as seen on ori and shovel knight's free champion skins)

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


//this version does NOT work properly for the CSS playtest, and will draw the character in a dark void
#define maskHeader
{
    //set the mask to take effect on pretty much everything in the room
    //below this function, add the MASK
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false, false, false, true);
    draw_set_alpha(0);
    draw_rectangle_color(-200 ,-200 , room_width + 200, room_height + 200, c_white, c_white, c_white, c_white, false);
    draw_set_alpha(1);
}
#define maskMidder
{
    //sets the thing underneath the mask to be drawn
    //below this function, add the TEXTURE
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
    gpu_set_alphatestenable(true);
}
#define maskFooter
{
    //go back to drawing normally again
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
}