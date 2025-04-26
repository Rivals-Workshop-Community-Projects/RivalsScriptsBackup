//css-draw
if !(variable_instance_exists(id, "cssTimer")) {
    cssTimer = 0;
}

cssTimer++;
//print_debug(string(cssTimer));
var alt_cur = get_player_color(player);

var temp_x = x + 8;
var temp_y = y + 9;

var num_alts = 12;
var alt_cur = get_player_color(player);

var alt_new = get_player_color(player);

if (!"currAlt" in self)
{
	currAlt = alt_new;
}
else if (alt_new != currAlt)
{
	sound_stop(asset_get("mfx_change_color"));
	if(get_player_color(player) == 10){
		sound_play(sound_get("boop_distorted"), 0, 0, 2);
	}else if(get_player_color(player) == 11){
		sound_play(sound_get("pkmn"), 0, 0, 2);
	}else{
		sound_play(sound_get("boop"), 0, 0, 2);
	}
	currAlt = alt_new;
}

 //Fstrong button
set_synced_var(player, compressed_vars)
 
if(abs(get_instance_x(cursor_id) - (temp_x + 12)) < 14 && abs(get_instance_y(cursor_id) - (temp_y + 150)) < 13){
	if(!masked){
		button = draw_sprite(sprite_get("css_button"), 3, temp_x + 1, temp_y + 140)
	}else{
		button = draw_sprite(sprite_get("css_button"), 2, temp_x + 1, temp_y + 140)
	}
}else{
	if(!masked){
		button = draw_sprite(sprite_get("css_button"), 1, temp_x + 1, temp_y + 140)
	}else{
		button = draw_sprite(sprite_get("css_button"), 0, temp_x + 1, temp_y + 140)
	}
}

//Alt name init. var doesn't work with arrays lol

if(!masked){
	alt_name[0]  = "Galega";
	alt_name[1]  = "Torga";
	alt_name[2]  = "Craggy";
	alt_name[3]  = "Frostbitten";
	alt_name[4]  = "Sunburst";
	alt_name[5]  = "Wild";
	alt_name[6]  = "Vibrant";
	alt_name[7]  = "Canyon";
	alt_name[8]  = "Dusk";
	alt_name[9]  = "BLW";
	alt_name[10]  = "Genesis";
	alt_name[11]  = "Blastoise";
}else{
	alt_name[0]  = "Galega [Masked]";
	alt_name[1]  = "Torga [Masked]";
	alt_name[2]  = "Craggy [Masked]";
	alt_name[3]  = "Frostbitten [Masked]";
	alt_name[4]  = "Sunburst [Masked]";
	alt_name[5]  = "Wild [Masked]";
	alt_name[6]  = "Vibrant [Masked]";
	alt_name[7]  = "Canyon [Masked]";
	alt_name[8]  = "Dusk [Masked]";
	alt_name[9]  = "BLW [Masked]";
	alt_name[10]  = "Genesis [Masked]";
	alt_name[11]  = "Blastoise [Masked]";
}

//Alt

var masked_offset = 0
if(masked){
	masked_offset = 22
}
if(get_player_color(player) == 9){
    draw_sprite(sprite_get("icons"), 2, temp_x + 4 + masked_offset, temp_y + 101)
}else if(get_player_color(player) == 10){
    draw_sprite(sprite_get("icons"), 0, temp_x + 4 + masked_offset, temp_y + 101)
}else if(get_player_color(player) == 11){
    draw_sprite(sprite_get("icons"), 4, temp_x + 4 + masked_offset, temp_y + 101)
}
if(masked){
    draw_sprite(sprite_get("masked_charselect"), 1, x + 8, y + 8)
    draw_sprite(sprite_get("icons"), 1, temp_x + 4, temp_y + 101)
}

rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
for(i = 0; i < num_alts; i++){
    var draw_color = (i == alt_cur) ? c_white : c_gray;
    var draw_x = temp_x + 2 + 10 * i;
    rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
}
 
draw_set_halign(fa_left);
 
//include alt. name
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);
 
//exclude alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));
 

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