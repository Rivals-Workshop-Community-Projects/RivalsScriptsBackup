
//draw_debug_text(x , y-12, "get_synced_var( player) " + string(get_synced_var( player)));
//draw_debug_text(x , y-24, "nude_alt " + string(nude_alt));

var num_alts = skin_alts;
var alt_cur_1 = get_player_color(player);

draw_sprite_ext(sprite_get("charbackground"), alt_cur_1, x + 8, y + 8, 2, 2, 0, -1, 1);

//skin stuff
if(css_char_anim_time = 70){
	sound_play( sound_get(chance[random_func(0, 4, true)]));
}


if(css_char_anim_time < 85){
	draw_sprite_ext(css_char_pic, css_char_anim_time/5, x + 8, y + 8, 2, 2, 0, -1, 1);
}else if(voice_button = 0 || voice_button = 2 ){
	draw_sprite_ext(css_char_pic, 17, x + 8, y + 8, 2, 2, 0, -1, 1);
	
}else{
	draw_sprite_ext(css_char_pic, 16, x + 8, y + 8, 2, 2, 0, -1, 1);
}


//voice button

var voice_button_pos = 
[
    x + voice_button_x,
    y + voice_button_y,
    x + voice_button_x+20,
    y + voice_button_y+26,
]

//if get_synced_var(player) > 4 {
//	set_synced_var( player, 0)
//}

var voice_button_index = voice_button*3;

cursor_x = get_instance_x(cursor_id);
cursor_y = get_instance_y(cursor_id);

if (cursor_x > voice_button_pos[0] && cursor_x < voice_button_pos[2] && cursor_y > voice_button_pos[1] && cursor_y < voice_button_pos[3] && !instance_exists(oTestPlayer))
{
	/*
	suppress_cursor = true;
   if (menu_a_pressed){
       voice_button_index++;
       sound_play(asset_get("mfx_option"));
       if (!voice_button)
       {
           voice_button = true;
           sound_stop(sound_get("jerma_voice_on"));
           sound_play(sound_get("jerma_voice_on"), false, noone, 2);
       }
       else if (voice_button)
       {
       	   sound_stop(sound_get("jerma_voice_on"));
           voice_button = false;
       }
   }
   */
   voice_button_index++;
}


//set_synced_var( player, voice_button)



draw_sprite_ext(sprite_get("cssvoice_button"), voice_button_index, voice_button_pos[0], voice_button_pos[1], 1, 1, 0, -1, 1);








// css_draw
 
var temp_x = x + 8;
var temp_y = y + 9;



//animation - character
if (css_anim_time < 140)
{
    draw_sprite_ext(
        preview_idle,
        css_anim_time * preview_anim_speed,
        temp_x + (css_anim_time < 60 ?  + 24 + (css_anim_time / 20) : 16 + (css_anim_time / 5)), //if css_anim time is under 60 it positions the character differently
        temp_y + 128,
        preview_scale, //so it is affected by small_sprites aswell
        preview_scale,
        0,
        c_white,
        css_anim_time > 10 ? (css_anim_time * -0.01 + 1.25) + 0.2 : css_anim_time * 0.1 //if css_anim_time is over 10 the sprite's transperency acts differently
    );
}



patch_ver = " ";
patch_day = " ";
patch_month = " ";
 
 
 
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Goggles";
alt_name[1]  = "Specs";
alt_name[2]  = "Headphones";
alt_name[3]  = "Bobblehat";
alt_name[4]  = "Rider";
alt_name[5]  = "Gloves";
alt_name[6]  = "Mask";
alt_name[7]  = "Skull";
alt_name[8]  = "Army";
alt_name[9]  = "Aloha";
alt_name[10] = "Emperor";
alt_name[11] = "Shadow";
alt_name[12] = "Alt";
alt_name[13] = "Agent 3";
alt_name[14] = "Agent 4";
alt_name[15] = "Calie";
alt_name[16] = "Marie";
alt_name[17] = "Pearl";
alt_name[18] = "Marina";
alt_name[19] = "Shiver";
alt_name[20] = "Frye";
alt_name[21] = "Big man";
alt_name[22] = "Agent 8";
alt_name[23] = "Sanitized";
alt_name[24] = "Salmon Run";
alt_name[25] = "Manga";
alt_name[26] = "Rick";
alt_name[27] = "SQUID GAMES!!!!";
alt_name[28] = "Vaporwave";
alt_name[29] = "Peter Griffin";
alt_name[30] = "BLM";




 
//Patch
 
draw_set_halign(fa_left);
 
textDraw(temp_x - 10, temp_y - 25, "fName", c_white, 0, 1000, 1, true, 1, " " + patch_ver + patch_day + patch_month);
 
 
 
 
//Alt
 
rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
var draw_y = -1;
for(i = 0; i < num_alts; i++){
	var draw_x = temp_x + 2 + 10 * i;
	if(i < 16){
		draw_y = 4;
	} else {
		draw_x -= temp_x * 7 + 6;
		draw_y = -1;
	}
    var draw_color = (i == alt_cur_1) ? c_white : c_gray;
    
    rectDraw(draw_x, temp_y + 137+draw_y, draw_x + 7, temp_y + 140+draw_y, draw_color);
}
 
draw_set_halign(fa_left);
 
//include alt. name
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur_1 < 9 ? "0" : "") + string(alt_cur_1 + 1) + ": " + alt_name[alt_cur_1]);
 
//exclude alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur_1 < 9 ? "0" : "") + string(alt_cur_1 + 1));
 
// IMPORTANT: The 12 (first argument) in this function should be the same number as the user event.
player_tag_palettes(12);
init_shader();
// Ideally, this is above all #defines, but below everything else.

// As usual, #defines all go at the bottom of the script.

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
#define player_tag_palettes
///(user_event, ?arg)
__ssnk_tagpal_scr = script_get_name(1);
__ssnk_tagpal_arg = argument_count > 1 ? argument[1] : 0;
user_event(argument[0]);
return "__ssnk_tagpal_res" in self ? __ssnk_tagpal_res : 0;

 