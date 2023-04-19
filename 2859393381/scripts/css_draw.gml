cpu_hover_update();

//voice button

var voice_button_pos = 
[
    x + voice_button_x,
    y + voice_button_y,
    x + voice_button_x+30,
    y + voice_button_y+26,
]

var voice_button_index = voice_button*3;

cursor_x = get_instance_x(cursor_id);
cursor_y = get_instance_y(cursor_id);

if (cursor_x > voice_button_pos[0] && cursor_x < voice_button_pos[2] && cursor_y > voice_button_pos[1] && cursor_y < voice_button_pos[3] && !instance_exists(oTestPlayer))
{
   if (menu_a_pressed)
   {
       voice_button_index++;
       sound_play(asset_get("mfx_option"));
       if (!voice_button)
       {
           voice_button = true;
           sound_stop(sound_get("v_css_select1"));
           sound_stop(sound_get("v_css_select2"));
           sound_stop(sound_get("v_css_select3"));
               sound_play(sound_get("v_css_select" + string(1+random_func(1, 3, true))), 0, 0, 1, 1);
       }
       else if (voice_button)
       {
           voice_button = false;
       }
   }
   voice_button_index++;
}

draw_sprite_ext(sprite_get("voice_button"), voice_button_index, voice_button_pos[0], voice_button_pos[1], 1, 1, 0, -1, 1);

cpu_hover_draw(); 

var temp_x = x + 8;
var temp_y = y + 15;
var numAlts = 21;

//patch_ver = string(get_char_info(player, INFO_VER_MAJOR)) + "." + string(get_char_info(player, INFO_VER_MINOR)-1); 
patch_ver = string(get_char_info(player, INFO_VER_MAJOR)) + "." + string(get_char_info(player, INFO_VER_MINOR)); 
image_alpha = max(image_alpha-0.02, 0);

var alt_new = get_player_color(player);
if (!"offset" in self) offset = 0;
else offset/=1.4;
if (!"textLen" in self) textLen = 2;

if (!"currAlt" in self)
{
	image_alpha = 3;
	currAlt = alt_new;
}
else if (alt_new != currAlt)
{
	image_alpha = 1.5;
	offset = sign(alt_new - currAlt)*16;
	currAlt = alt_new;
}

alt_name[0]		= "The Ace Attorney";
alt_name[1]		= "Black Suit";
alt_name[2]		= "Blue Suit";
alt_name[3]		= "Rival Prosecutor";
alt_name[4]		= "Mind Piercer";
alt_name[5]		= "Analytical Psychologist";
alt_name[6]		= "Ancient Attorney";
alt_name[7]		= "Coffee Cyborg";
alt_name[8]		= "Coffee Predecessor";
alt_name[9]		= "Spirit Channeler";
alt_name[10]	= "Ace Magician";
alt_name[11]= "Homicide Investigator";
alt_name[12]	= "Police Chief";
alt_name[13]	= "Transcendance";
alt_name[14]	= "Better Call";
alt_name[15]	= "Hello Internet";
alt_name[16]	= "Jinkies!";
alt_name[17]	= "Sponge At Law";
alt_name[18]	= "44th President";
alt_name[19]	= "Daniel"; //no bias to adding this alt definitely not
alt_name[20]	= "BLM";

draw_set_halign(fa_right);
textDraw(temp_x + 150, temp_y + 24, "fName", c_aqua, 0, 1000, 1, false, 0.3, "v" + patch_ver);
textDraw(temp_x + 152, temp_y + 26, "fName", c_fuchsia, 0, 1000, 1, false, 0.3, "v" + patch_ver);

draw_set_halign(fa_left);

//draw_sprite_ext(sprite_get("logo"),currAlt,temp_x + 166,temp_y + 67,1,1,0,c_white,1); // logooooooooooooo

draw_set_halign(fa_left);

gpu_set_blendmode(bm_add);
RectDraw(temp_x, temp_y + 92, temp_x + textLen + min(image_alpha,1) * 16 + 14, temp_y + 110, c_aqua, image_alpha/2);
RectDraw(temp_x + 2, temp_y + 94, temp_x + textLen + min(image_alpha,1) * 16 + 16, temp_y + 112, c_fuchsia, image_alpha/2);
gpu_set_blendmode(bm_normal);

if (currAlt != 0)			textDraw(temp_x + 2 + min(image_alpha,1) * 8, temp_y + 80 + offset, "fName", c_gray, 0, 1000, 1, true, image_alpha, alt_name[currAlt-1]);
textLen =		 (textLen + textDraw(temp_x + 2 + min(image_alpha,1) * 16, temp_y + 96 + offset, "fName", c_white, 0, 1000, 1, true, image_alpha, alt_name[currAlt]))/2;
if (currAlt != numAlts-1)	textDraw(temp_x + 2 + min(image_alpha,1) * 8, temp_y + 112+ offset, "fName", c_gray, 0, 1000, 1, true, image_alpha, alt_name[currAlt+1]);


#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
{
	draw_set_font(asset_get(argument[2]));
	
	if (argument[7]) // outline. doesn't work
	{
	    for (i = -1; i < 2; i++)
		{
	        for (j = -1; j < 2; j++)
			{
				if (argument[8] > 0)
					draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, argument[8]);
	        }
	    }
	}
	
	if (argument[8] > 0)
		draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
	
	return string_width_ext(argument[9], argument[4], argument[5]);
}

#define RectDraw(x1, y1, x2, y2, color, alpha)
{
	draw_set_alpha(alpha);
	draw_rectangle_color(x1, y1, x2, y2, color, color, color, color, false);
	draw_set_alpha(1);
}

#define cpu_hover_draw()
if (cpu_hover_time > 0) {
    var prog = min(cpu_hover_time/10, 1);
    var colprog = min(cpu_color_swap_time/5, 1);
    var col = merge_color(cpuh_prev_color, cpuh_new_color, colprog);
    draw_sprite_ext(cpu_hover_sprite, 0, x - 4, y - 6, 2, 2, 0, col, prog);
    draw_set_alpha(prog);
    draw_debug_text(plate_bounds[2]-17, plate_bounds[3]+1, `P${cpu_hovering_player}`);
    draw_set_alpha(1);
}

set_synced_var(player, voice_button);

#define cpu_hover_update()
var p = player;
var is_cpu = (get_player_hud_color(p) == 8421504);