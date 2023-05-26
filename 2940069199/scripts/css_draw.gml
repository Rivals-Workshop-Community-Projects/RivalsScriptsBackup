
//draw_debug_text(x , y-12, "get_synced_var( player) " + string(get_synced_var( player)));



var num_alts = 31;
var alt_cur = get_player_color(player);


// css_draw
 
var temp_x = x + 8;
var temp_y = y + 9;



//animation - character
if (css_anim_time < 140)
{
   
   init_shader()
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
 
 //First number alt number, 2nd number is extra alts. 0=default, 1=extras
 
alt_name[0,0]  = "Default";
alt_name[1,0]  = "The OG";
alt_name[2,0]  = "Virtual Diva";
alt_name[3,0]  = "Shrine Maiden";
alt_name[4,0]  = "High Spec";
alt_name[5,0]  = "Red Heart";
alt_name[6,0]  = "Summer Festival";
alt_name[7,0]  = "Dimensional Girl";
alt_name[8,0]  = "Banpire";
alt_name[9,0]  = "Succubus Nurse";
alt_name[10,0] = "Bratty Witch";
alt_name[11,0] = "Loud Duck";
alt_name[12,0] = "Yo Dayo!";
alt_name[13,0] = "Gamer Maid";
alt_name[14,0] = "Gamer Cat";
alt_name[15,0] = "Gamer Doog";
alt_name[16,0] = "Gamer Wolf";
alt_name[17,0] = "Fox Friend"
alt_name[18,0] = "Pirate Club Captian";
alt_name[19,0] = "War Criminal";
alt_name[20,0] = "Necromancer";
alt_name[21,0] = "Half Elf";
alt_name[22,0] = "Meathead Knight";
alt_name[23,0] = "TMT";
alt_name[24,0] = "Legendary Dragon";
alt_name[25,0] = "50kg Grip Angel";
alt_name[26,0] = "Candy Princess";
alt_name[27,0] = "Warukunai Yo Ne?";
alt_name[28,0] = "Ghost";
alt_name[29,0] = "Template";
alt_name[30,0] = "Shout in Crisis";

alt_name[0,1]  = "Kakero";
alt_name[1,1]  = "Friend A";
alt_name[2,1]  = "Everyone's Wife";
alt_name[3,1]  = "FPS Lion";
alt_name[4,1]  = "Drunken Snow-Elf";
alt_name[5,1]  = "The Whole Circus";
alt_name[6,1]  = "Priestess";
alt_name[7,1]  = "Shaaaaark";
alt_name[8,1]  = "No.1 Detective";
alt_name[9,1]  = "Reaper on Hiatus";
alt_name[10,1]  = "Phoenix Warrior";
alt_name[11,1]  = "Chaos Rat";
alt_name[12,1]  = "Time Warden";
alt_name[13,1] = "Guardian of Civilization";
alt_name[14,1] = "Mother Nature";
alt_name[15,1] = "Speaker of Space";
alt_name[16,1] = "Project HOPE";
alt_name[17,1] = "holoX President";
alt_name[18,1] = "holoX Officer";
alt_name[19,1] = "holoX Researcher"
alt_name[20,1] = "holoX Cleaner";
alt_name[21,1] = "holoX Ninja(?)";
alt_name[22,1] = "Nonstop Squirrel";
alt_name[23,1] = "Moon Goddess";
alt_name[24,1] = "Artistic Alien";
alt_name[25,1] = "Zombie Idol";
alt_name[26,1] = "Lady of the Peafowl";
alt_name[27,1] = "Sassy Dagger";
alt_name[28,1] = "Blacksmith";
alt_name[29,1] = "Rain Shaman";
alt_name[30,1] = "Agent V.7";

alt_name[0,2]  = "Anemachi";
alt_name[1,2]  = "ERROR";
alt_name[2,2]  = "Super Idol Comet-Chan";
alt_name[3,2]  = "wii-wii-woo";
alt_name[4,2]  = "Rising Star";
alt_name[5,2]  = "Succubus-in-Training";
alt_name[6,2]  = "MaFia";
alt_name[7,2]  = "Space Seaweed";
alt_name[8,2]  = "Electric Kettle";
alt_name[9,2]  = "Tokotaya";
alt_name[10,2] = "Solar Dragon";
alt_name[11,2] = "What the Feesh";
alt_name[12,2] = "I'm Pomu!";
alt_name[13,2] = "Lunar Dragon";
alt_name[14,2] = "Peto";
alt_name[15,2] = "Rose Maiden";
alt_name[16,2] = "Golden SUISEI";
alt_name[17,2] = "Abyss";
alt_name[18,2] = "Japanese Goblin";
alt_name[19,2] = "Flower Girl";
alt_name[20,2] = "Vampire Knight";
alt_name[21,2] = "B-Komachi's Star";
alt_name[22,2] = "Melty Blood";
alt_name[23,2] = "Elite 4";
alt_name[24,2] = "Dancing All Night";
alt_name[25,2] = "e-ma e-ma";
alt_name[26,2] = "Tetris";
alt_name[27,2] = "Needy Girl";
alt_name[28,2] = "IQ 999";
alt_name[29,2] = "Christmas";
alt_name[30,2] = "RDJ";







 
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
    var draw_color = (i == alt_cur) ? c_white : c_gray;
    
    rectDraw(draw_x, temp_y + 137+draw_y, draw_x + 7, temp_y + 140+draw_y, draw_color);
}
 
draw_set_halign(fa_left);
 
//include alt. name
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur,color_shift]);
 
//exclude alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));
 
//Button
if ((get_instance_x(cursor_id) >= x + button_cord[0,0] && get_instance_x(cursor_id) <= x + button_cord[0,0] + 30) && (get_instance_y(cursor_id) >= y + button_cord[0,1] && get_instance_y(cursor_id) <= y + button_cord[0,1] + 26)) {
    suppress_cursor = true;
    draw_sprite_ext(sprite_get("css_tetris"), 1, x + button_cord[0,0], y + button_cord[0,1], 1, 1, 0, c_white, 1);
} else {
    draw_sprite_ext(sprite_get("css_tetris"), 0, x + button_cord[0,0], y + button_cord[0,1], 1, 1, 0, c_white, 1);
}

if ((get_instance_x(cursor_id) >= x + button_cord[1,0] && get_instance_x(cursor_id) <= x + button_cord[1,0] + 30) && (get_instance_y(cursor_id) >= y + button_cord[1,1] && get_instance_y(cursor_id) <= y + button_cord[1,1] + 26)) {
    suppress_cursor = true;
    draw_sprite_ext(sprite_get("css_change"), 1, x + button_cord[1,0], y + button_cord[1,1], 1, 1, 0, c_white, 1);
} else {
    draw_sprite_ext(sprite_get("css_change"), 0, x + button_cord[1,0], y + button_cord[1,1], 1, 1, 0, c_white, 1);
}

//Text
if (!css_port_select) {
    textDraw(temp_x + 6, temp_y - 26, "fName", c_white, 0, 1000, 1, true, 1, "Tetromino Input: Down");
} else {
    textDraw(temp_x + 6, temp_y - 26, "fName", c_white, 0, 1000, 1, true, 1, "Tetromino Input: Neutral");
}

 
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