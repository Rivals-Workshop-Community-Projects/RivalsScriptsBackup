//Hyuponia's template didn't work sometimes :(

//Sound stuff 

var temp_z = 0;

if (get_color_profile_slot_r(0, 7) == 178) {
    sound_play(sound_get("Select"));
    set_color_profile_slot( 0, 7, 179, 115, 43 );
}

var alt = get_player_color(player);

if (alt == 20){
	draw_sprite_ext(sprite_get("background_css"),0,x+8,y+8,2,2,0,-1,1);
	draw_sprite_ext(sprite_get("kart_1_css"),0,x+8,y+8,2,2,0,-1,1);
}

if (alt == 19){
	draw_sprite_ext(sprite_get("background_css"),0,x+8,y+8,2,2,0,-1,1);
	draw_sprite_ext(sprite_get("kart_2_css"),0,x+8,y+8,2,2,0,-1,1);
}

//Fancy CSS template by Muno
//Put in css_draw.gml
 
var temp_x = x + 8;
var temp_y = y + 9;
 
var num_alts = 20;
var alt_cur = get_player_color(player);
 
//Patch
 
draw_set_halign(fa_left);
 
//Alt
 
rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
for(i = 0; i < num_alts; i++){
    var draw_color = (i == alt_cur) ? c_white : c_gray;
    var draw_x = temp_x + 2 + 10 * i;
    rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
}
 
draw_set_halign(fa_left);
 
muno_event_type = 6;
user_event(14);
 
 
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