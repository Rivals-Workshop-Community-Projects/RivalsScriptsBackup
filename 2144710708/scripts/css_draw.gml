// css drawww

// muno phone support
user_event(12); 
 
// rainbow alts for css
// credit to hollow knight mod


var doNotInitShader = "alt_name" in self; // check if running for the first time


if player == 0{
    doNotInitShader = true;
}

if !("hue" in self) hue = 0
if get_player_color(player) = 12 { // rainbow alt (hair, crowbar edges, pants)
	hue+=1 if hue>255 hue-=255;
	//make hue shift every step + loop around
	
	color_rgb=make_color_rgb(255, 121, 255);
	hue3=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue3,color_get_saturation(color_rgb),color_get_value(color_rgb));
	set_color_profile_slot(12,1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
	color_rgb=make_color_rgb(255, 121, 255);
	hue5=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue5,color_get_saturation(color_rgb),color_get_value(color_rgb));
	set_color_profile_slot(12,3,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
	color_rgb=make_color_rgb(255, 121, 255);
	hue7=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue7,color_get_saturation(color_rgb),color_get_value(color_rgb));
	set_color_profile_slot(12,5,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
}
else if get_player_color(player) = 8 { // sakk alt (crowbar, crowbar edges)
	hue+=1 if hue>255 hue-=255;
	//make hue shift every step + loop around

	color_rgb=make_color_rgb(255, 121, 255);
	hue6=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue6,color_get_saturation(color_rgb),color_get_value(color_rgb));
	set_color_profile_slot(8,4,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
	color_rgb=make_color_rgb(255, 121, 255);
	hue7=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue7,color_get_saturation(color_rgb),color_get_value(color_rgb));
	set_color_profile_slot(8,5,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
}
init_shader();

// secret alt up - clairen
// secret alt left - fancy pants
// secret alt down - slashe
// secret alt right - sand cat
// secret alt attack - becker
// secret alt special - that guy // was a suggestion, replaced by sakk alt but now it's back (kinda)
// secret alt taunt - 
// secret alt shield - a cat oc by a different person again, has multicolor fur but can't show off that here


// css drawww


var temp_x = x + 8;
var temp_y = y + 9;

patch_ver = "0.58";
patch_day = "10";
patch_month = "AUG";

var num_alts = 32;
var alt_cur = get_player_color(player);

//Alt name init. var doesn't work with arrays lol

alt_name[0]  = "Default"; // owen's signature pink on pink look.
alt_name[1]  = "Carrot"; // a cat oc by owen (person)
alt_name[2]  = "Grise"; // a cat oc by a different person
alt_name[3]  = "Blue"; // a cat oc i made
alt_name[4]  = "Setaria"; // a cat oc i also made
alt_name[5]  = "Teal Shirt"; // a cat oc by someone who doesn't come on that much anymore
alt_name[6]  = "Freeman"; // gordon freeman half life reference very obvious
alt_name[7]  = "Natsumi"; // natsumi step, hyuponia wanted it 
alt_name[8]  = "SAKK"; // sakk wanted nyan cat
alt_name[9]  = "Orin"; // orin from touhou
alt_name[10] = "Niko"; // niko from oneshot
alt_name[11] = "Scaryami"; // scaryami is a rivals of aether workshop character
alt_name[12] = "Rainbow"; // the color. if someone's named rainbow, they have an alt lol
alt_name[13] = "Abyss"; // base cast has this too
alt_name[14] = "Early Access"; // base cast has this too 
alt_name[15] = "Seasonal"; // base cast has this too

alt_name[16] = "Trolleybus"; // trans flag color scheme
alt_name[17] = "Becker"; // epic cat oc from waloogi
alt_name[18] = "Sunny"; // r cat oc
alt_name[19] = "Based Cast"; // clairen
alt_name[20] = "Dapper Shorts"; // fancy pants
alt_name[21] = "Sand Cat"; // sand cat from kemono friends
alt_name[22] = "NES"; // nes color pallete, used to be slashe workshop charactr.
alt_name[23] = "Mogu Mogu"; // nekomata okayu by zerks
alt_name[24] = "bob."; // bob from animal crossing
alt_name[25] = "Dark Matter"; // blm color scheme

alt_name[26] = "Mae"; // mae browski from a night in the woods
alt_name[27] = "Banana Cat"; // banana rat steam profile pic
alt_name[28] = "Skitty"; // skitty from pokemon
alt_name[29] = "Splat"; // maeko, splat oc 
alt_name[30] = "Shephard"; // adrian shephard

alt_name[31] = "unused"; // alt 31 doesn't work :(



if(!doNotInitShader){
    init_shader(); // makes the shader update when you return to the CSS (don't know why the game is coded so that this necessary)
}


//Patch

draw_set_halign(fa_left);

//textDraw(temp_x + 2, temp_y + 30, "medFont", c_white, 0, 1000, 1, true, 1, "VER. " + patch_ver);

//textDraw(temp_x + 2, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);



///Alt
 
 
rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
for(var i = 0; i < ceil(array_length(alt_name)/16); i++){
    for(var j = 0; j < min(array_length(alt_name)-i*16, 16); j++){
        var draw_color = (j+16*i == alt_cur) ? c_white : c_gray;
        var draw_x = temp_x + 2 + 10 * j;
        rectDraw(draw_x, temp_y + 145 - 5*i, draw_x + 7, temp_y + 141 - 5*i, draw_color);
    }
}
 
draw_set_halign(fa_left);
 
//include alt. name
textDraw(temp_x + 2, temp_y + 124 - 5*(ceil(array_length(alt_name)/16)-1), "fName", c_white, 0, 1000, 1, true, 1, "" + (alt_cur < 9 ? "" : "") + alt_name[alt_cur]);

if ((alt_cur) > 15 && player == 0) { //draw a warning that extra skins won't work online
  textDraw(temp_x + 2, temp_y + 110 - 5*(ceil(array_length(alt_name)/16)-1), "fName", c_white, 0, 1000, 1, true, 1, "");
}
 
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

//draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);


