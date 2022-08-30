if(instance_exists(clone_object_ID)){
//Triangle/percentage from Ruber
draw_sprite_ext(sprite_get("indicator"), 0, x, y - 70, 1, 1, 0, get_player_hud_color(player), 1);
draw_set_font(asset_get("fName"));
draw_set_halign(fa_center);
draw_text_colour_outline(x - (spr_dir * 0), y - 80 - 15, string(clone_hud_text), get_player_hud_color(player),get_player_hud_color(player),1,c_black,c_black,1,2,10,1,1,0);
draw_text_colour_outline(x - (spr_dir * 0), y - 80 - 31, string(get_player_damage(player)) + "%", c_white,c_white,1,c_black,c_black,1,2,10,1,1,0);
}

#define draw_text_colour_outline
///draw_text_colour_outline(x, y, string, textColor1, textColor2, textAlpha, outlineColor1, outlineColor2, outlineAlpha, outlineThickness, outlineQuality, xscale, yscale, angle);
//By Blokatt - @blokatt, blokatt.net
var i;
for (i = 0; i < 360; i += 360 / argument10){
    draw_text_transformed_color(argument0 + lengthdir_x(argument9, i), argument1 + lengthdir_y(argument9, i), string(argument2), argument11, argument12, argument13, argument6, argument6, argument7, argument7, argument8);
}
draw_text_transformed_color(argument0, argument1, string(argument2), argument11, argument12, argument13, argument3, argument3, argument4, argument4, argument5);
