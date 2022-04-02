//
/*

//triangle/percentage
draw_sprite_ext(sprite_get("indicator"), 0, x, y - 66, 1, 1, 0, c_gray, 1);
draw_set_font(asset_get("roundFont"));
draw_set_halign(fa_center);
draw_text_colour_outline(x, y - 100, string(damage) + "%", c_white,c_white,1,c_black,c_black,1,2,4,1,1,0);
//draw_text_transformed_color(x, y-100, string(damage) + "%", 1, 1, 0, c_white,c_white,c_white,c_white,1)
*/
//draw_debug_text(x - 20, y+10, get_state_name(state))

if timer > 1 && (player_id.hitbox_view && player_id.practice_mode) {
    draw_sprite_ext(mask_index, image_index, x, y, 1, 1, 0, c_white, 0.5);
}

draw_sprite_ext(non_sprite, image_index, x, y, spr_dir, 1, 0, c_white, 1);

#define draw_text_colour_outline
///draw_text_colour_outline(x, y, string, textColor1, textColor2, textAlpha, outlineColor1, outlineColor2, outlineAlpha, outlineThickness, outlineQuality, xscale, yscale, angle);
//By Blokatt - @blokatt, blokatt.net
var i;
for (i = 0; i < 360; i += 360 / argument10){
    draw_text_transformed_color(argument0 + lengthdir_x(argument9, i), argument1 + lengthdir_y(argument9, i), string(argument2), argument11, argument12, argument13, argument6, argument6, argument7, argument7, argument8);
}
draw_text_transformed_color(argument0, argument1, string(argument2), argument11, argument12, argument13, argument3, argument3, argument4, argument4, argument5);