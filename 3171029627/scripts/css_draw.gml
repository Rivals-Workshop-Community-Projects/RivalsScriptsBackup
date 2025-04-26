// Lukaru's css_draw

var temp_x = x + 8;
var temp_y = y + 9;

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
	sound_play(sound_get("sh2_menu"))
}

alt_name[0]  = "Executioner";
alt_name[1]  = "Shipwreck";
alt_name[2]  = "Molten";
alt_name[3]  = "Verdant";
alt_name[4]  = "Frostbite";
alt_name[5]  = "Chasm";
alt_name[6]  = "Ego";
alt_name[7]  = "Chosen";
alt_name[8]  = "Imitation";
alt_name[9]  = "Echo";
alt_name[10]  = "Source";
alt_name[11]  = "Herald";
alt_name[12]  = "Usurper";
alt_name[13]  = "Smoulder";
alt_name[14]  = "Zealot";
alt_name[15]  = "Mournful";
alt_name[16]  = "Limit";
alt_name[17]  = "Angel";
alt_name[18]  = "Canon";
alt_name[19]  = "Atomotan";
alt_name[20]  = "Fear";
alt_name[21]  = "Accursed";
alt_name[22]  = "Unexpectancy";
alt_name[23]  = "Unending";
alt_name[24]  = "Pursuer";
alt_name[25]  = "Conqueror";
alt_name[26]  = "Reaper";
alt_name[27]  = "Flesh";
alt_name[28]  = "Attract ";
alt_name[29]  = "Brigade";
alt_name[30]  = "Radiant";
alt_name[31]  = "Strawberry";
//draw_sprite_ext(sprite_get("logo"),currAlt,temp_x + 166,temp_y + 67,1,1,0,c_white,1); // logooooooooooooo (check Luka characters for how to use this lol)

var numAlts = array_length(alt_name);

draw_set_halign(fa_left);

gpu_set_blendmode(bm_add)
var lol;
lol = 20

var red1 = get_color_profile_slot_r(get_player_color( player ), 2);
var green1 = get_color_profile_slot_g(get_player_color( player ), 2);
var blue1 = get_color_profile_slot_b(get_player_color( player ), 2);
var colourrrrr = make_colour_rgb(red1, green1, blue1)

red1 = get_color_profile_slot_r(get_player_color( player ), 4);
green1 = get_color_profile_slot_g(get_player_color( player ), 4);
blue1 = get_color_profile_slot_b(get_player_color( player ), 4);
var colourrrrr2 = make_colour_rgb(red1, green1, blue1)

bigRect(temp_x, temp_y + 92, temp_x + textLen + min(image_alpha,1) * 16 + lol, temp_y + 110, colourrrrr, (image_alpha)/2);
bigRect(temp_x + 2, temp_y + 94, temp_x + textLen + min(image_alpha,1) * 16 + lol + 2, temp_y + 112, colourrrrr2, (image_alpha)/2);
gpu_set_blendmode(bm_normal);

if (currAlt != 0)			textDraw(temp_x + 2 + min(image_alpha,1) * 8 + ((max(image_alpha*2,2.5)-1)*5)-6, temp_y + 76 + offset, "fName", c_gray, 0, 1000, 1, true, image_alpha, alt_name[currAlt-1]);
textLen =		 (textLen + textDraw(temp_x + 2 + min(image_alpha,1) * 16 + ((max(image_alpha*2,2.5)-1)*6)-8, temp_y + 96 + offset, "fName", c_white, 0, 1000, 1, true, image_alpha, alt_name[currAlt]))/2;
if (currAlt != numAlts-1)	textDraw(temp_x + 2 + min(image_alpha,1) * 8 + ((max(image_alpha*2,2.5)-1)*5)-6, temp_y + 116 + offset, "fName", c_gray, 0, 1000, 1, true, image_alpha, alt_name[currAlt+1]);


// Lukaru's css draw, with Muno's base

// init_shader();
// var alt_new = get_player_color(player);
// var num_alts = 19;
// image_index += alt_new > 15 ? 17 : 0; 

// var temp_x = x + 8;
// var temp_y = y + 9;

// patch_ver = string(get_char_info(player,INFO_VER_MAJOR)) + "." + string(get_char_info(player,INFO_VER_MINOR));
// //patch_day = "17";
// //patch_month = "MAR";
// image_alpha = max(image_alpha-0.02, 0);


// //print(alt_new)
//  // image_index is global
// print(`alt_new: ${alt_new}, index: ${image_index}`)

// //if ((alt_new != 15 && alt_new != image_index - 1) || (alt_new == 15 && (image_index == 15 || image_index == 1)))

// //if ((alt_new != num_alts && alt_new != image_index - 1) or abs(alt_new - image_index) == num_alts) 
// if (alt_new != image_index-1)
// {
// 	image_alpha = 1.5;
// }
// else
// {
// 	 print(abs(alt_new - image_index))
// }

// image_index = alt_new;

// alt_name[0]  = "Default";
// alt_name[1]  = "Blue";
// alt_name[2]  = "Red";
// alt_name[3]  = "Green";
// alt_name[4]  = "Black/White";
// alt_name[5]  = "Pink/Purple";
// alt_name[6]  = "Abyss";
// alt_name[7]  = "Gameboy";
// alt_name[8]  = "Infamous";
// alt_name[9]  = "Genesis";
// alt_name[10] = "Hero";
// alt_name[11] = "Renamon";
// alt_name[12] = "Tails";
// alt_name[13] = "Metera";
// alt_name[14] = "Hime";
// alt_name[15] = "Killer Queen";
// alt_name[16] = "Blood Moon";
// alt_name[17] = "Masquerade";
// alt_name[18] = "Masquerade";
// //GB alt
// if (get_player_color(player) == 7)
// {
    
//     for(i = 0; i < 8; i+=1){
//         set_character_color_shading(i, 0);
//     }
//     outline_color = [35, 67, 49];

// }

// //textDraw(temp_x + 2, temp_y + 50, "fName", colourrrrr, 0, 1000, 1, true, 1, patch_day + " " + patch_month);
// if (image_alpha > 0)
// {
// 	bigRect(temp_x, temp_y + 141 - (floor((image_alpha>1?1:image_alpha)*3.5)*2) - 20, temp_x + 201, temp_y + 144, c_black, image_alpha);
// }

// for(i = 0; i < num_alts; ++i)
// {
// 	var draw_color = (i==image_index?colourrrrr:c_gray);
//     var draw_x = temp_x + 2 + (7 * i);
//     //var yoff = 20 * (floor(i/16)*16);
//     var thing = (floor((image_alpha>1?1:image_alpha)*3.5)*2)
//   //  if draw_color == colourrrrr
//   //  {
// 		// for (var i = 0; i < 3; i++)
// 		// {
//   //  		rectDraw(draw_x-3 + (2*i), temp_y + 138 - thing + (2*i), draw_x + 6 - (2*i), temp_y + 140 - thing + (2*i), c_white,image_alpha);
//   //  	}
//   //  }
// 	var lol = ((max(image_alpha*2,2.5)-1)*2 - 2)*(i==image_index);
	
// 	rectDraw(draw_x - lol, temp_y + 140 - thing - lol, draw_x + 3 + lol, temp_y + 142 - thing + lol, draw_color, image_alpha);
// }

// draw_set_halign(fa_left);
 
// // include alt. name
// //textDraw(temp_x + 2, temp_y + 124, "fName", colourrrrr, 0, 1000, 1, true, 1, "Alt. " + (image_index < 9 ? "0" : "") + string(image_index + 1) + ": " + alt_name[image_index]);
// textDraw(temp_x + 2, temp_y + 125 - (floor((image_alpha>1?1:image_alpha)*3.5)*2) - ((max(image_alpha*2,2.5)-1)*5) + 6, "fName", colourrrrr, 0, 1000, 1, true, image_alpha, "Alt "+string(image_index)+": "+ alt_name[image_index]);
 
// // exclude alt. name
// //textDraw(temp_x + 2, temp_y + 124, "fName", colourrrrr, 0, 1000, 1, true, 1, "Alt. " + (image_index < 9 ? "0" : "") + string(image_index + 1));

shader_end()
draw_set_halign(fa_right);
textDraw(temp_x + 196, temp_y + 30, "fName", c_aqua, 0, 1000, 1, false, 0.6, patch_ver);
textDraw(temp_x + 200, temp_y + 34, "fName", c_fuchsia, 0, 1000, 1, false, 0.6, patch_ver);
textDraw(temp_x + 198, temp_y + 32, "fName", c_white, 0, 1000, 1, false, 1, patch_ver);

draw_set_halign(fa_left);

init_shader()
#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

draw_set_font(asset_get(argument[2]));

if (argument[7]) // outline. doesn't work
{
    for (i = -1; i < 2; ++i)
	{
        for (j = -1; j < 2; ++j)
		{
			if (argument[8] > 0)
				draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, argument[8]);
        }
    }
}

if (argument[8] > 0)
	draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);

return string_width_ext(argument[9], argument[4], argument[5]);

#define RectDraw(x1, y1, x2, y2, color, alpha)

draw_set_alpha(argument[5])
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);
draw_set_alpha(1)
#define bigRect(x1,y1,x2,y2,color,alpha)
//x1,y1 - topleft

var x1, y1, x2, y2, color;
x1 = argument[0]
y1 = argument[1]
x2 = argument[2]
y2 = argument[3]
color = argument[4]
alpha = argument[5]

draw_primitive_begin(pr_trianglestrip)
draw_vertex_color(x1,y2,color,alpha)
draw_vertex_color(x2,y2,color,0)
draw_vertex_color(x1,y1,color,alpha)
draw_vertex_color(x2,y1,color,0)
draw_primitive_end()