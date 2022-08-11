//Original By Hyuponia
// Modified by Opengunner for ease of operation

//CSS SFX - From Frostine / VVizard
var charuuid = string(sprite_get("idle"));
	if ("css_char" not in self || css_char != charuuid) {
        css_char = charuuid;
        sound_play(asset_get( "sfx_zetter_shine" ),false,noone,.6,.5); // soundID,looping,panning,volume,pitch};
    }
// Different Alt selection, MUST be before UE is normally assigned
if("ue" in self) {
	if(ue != get_player_color(player)){
		sound_stop(asset_get( "mfx_change_color" ));
		sound_play(asset_get( "mfx_coin" ),false,noone,.9,(ue * .033) + .25);}
}
// Variables Assignment
if("dial_time" not in self){dial_time = 0;} // Used for transparncy
dial_max = 100; // Used for transparncy
color_desc_activate = true; // optional "alt color description button". set to "true" to turn it on.
col_max = 32; // number of alternate color palettes. 0 is the default color, count it accordingly.
ue = get_player_color(player); // Color slot variable from Hyu
color_picker_alt_index = 0;
    
// Button Code
	var tmp_cur = 0;
	var tmp_i = [0, 0, 0, 0, 0];
	var tmp_x = [0, 0, 0, 0, 0];
	var tmp_y = [0, 0, 0, 0, 0];
	with(asset_get("cs_playercursor_obj")){
		tmp_cur = (!tmp_i[0])?0:(!tmp_i[1])?1:(!tmp_i[2])?2:(!tmp_i[3])?3:4
		tmp_i[tmp_cur] = 1
		tmp_x[tmp_cur] = get_instance_x( self );
		tmp_y[tmp_cur] = get_instance_y( self );
	}
	var tmp_pt = abs(player-5)-1
	var temp_x = x + 8;
	var temp_y = y + 9;

//Button Location
	var tmp_xl = 10
	var tmp_bw = 40 // button width
	var tmp_yl = 150
	var tmp_bh = 20
	var tmp_xl1 = x+tmp_xl
	var tmp_xl2 = tmp_xl1+tmp_bw
	var tmp_yl1 = y+tmp_yl
	var tmp_yl2 = tmp_yl1+tmp_bh
	draw_set_halign(fa_left);

// Color Slot Indexs
	//ce variable, array of character entry data.
	//0,0 "color preview square" color. can be any color! 62, 61, 92
	//0,1 Name of the pallet
	//0,2 Description after hitting the button
	//0,3 Credit to the source / Additional Line on top
	//0,4 Icon to use from the character strip. Not Used currently
	// Line for Credit
	var color_slot = 0;
	var sub_element_slot = 0;
	// Slot
	ce[color_slot,sub_element_slot] = make_color_rgb(0, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Default";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "The world is a dark place, I'm going to make it a little brighter";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Default Palette";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0; sub_element_slot = 0;
	color_slot++;
	// Slot
	ce[color_slot,sub_element_slot] = make_color_rgb(0, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Water Dragon";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Daora is my teacher and good friend. I will fight for her, no matter what.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Daora Colors";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot
	ce[color_slot,sub_element_slot] = make_color_rgb(0, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Tricky Kitsune";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "The fox that taught me how to be tricky. I hope to be as strong as her someday!";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Hikaru's Colors";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(0, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Star Dust";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Fernet is strong and follows her dreams! I can admire that!";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Fernet Colors";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(0, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Jade Ghost";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Tuqiu's ghost and my clone share a lot in common. Extensions of ourselves...";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Tuqiu Colors";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(0, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Nova Visionary";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "The star's guide me home at night. I wish I could see them from the city.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Astra Colors";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(0, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Snowblind";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "The winter is my favorite season, the snow is so beautiful...";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Flake Colors";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(0, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Cybernetic Soldier";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Penny isn't afraid of Loxodont, so neither am I.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Penny Alt";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(0, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Flickering Spectre";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Lyca's wisps are her dead kids. Makes me glad my wisps aren't that.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Lyca Alt";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(0, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "King of Portals";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "His portals are more disorienting than my own clone. How did he manage that?";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Monarch alt";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(0, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Blood Moon";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "There is a bad moon on the rise.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Causeimapilot's Colors";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot
	ce[color_slot,sub_element_slot] = make_color_rgb(0, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Cheri";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "The sakura bloom is one of my favorite spectacles!";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "WasteofaName's Colors";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(0, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Wicked Scroll";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Ayumi is a fox that uses her powers to hurt people. She's one of us, but she's evil...";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Ayumi Colors";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(0, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Ryukoko";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "A character from a popular manga / anime. I want to be a famous manga artist! ";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Colors for Zoynx";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(0, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Rainbow";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "One of the simplest and best illusions to make is a rainbow.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Rainbow Colors";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(0, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Early Access";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "I loved playing video games growing up! They gave me good ideas for illusions.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Smash Land / Gameboy Alt";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(251, 139, 55);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Ouro Kronii";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "I don't know what the future holds, and Daora has told me that it isn't always bright.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Palette for Jmillions";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 255, 255);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Fubuki Shirakami";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(0, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Ranked Gold";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Gold is so pretty. It reminds me of my aunt and her golden fur.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Ranked Gold Alt";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(0, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Ithaca";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Sometimes... I wonder what its like to be someone else.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Original Character Color";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(0, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Azamuku";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Decieve and Devour is a motto some kitsune live by. Stay away from them.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Character by Obakawaii";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 255, 255);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Caster of Fate";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Legends of powerful kitsune go back for millenia. I follow in their footsteps.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Tamamo-no-Mae Alt";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 255, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Bold Kobold";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Roekanshoku";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(0, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Black Hole Sun";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(245, 169, 184);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Flame Shackle";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(0, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Trans rights";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Support Alt";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Support Alt";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot
	ce[color_slot,sub_element_slot] = make_color_rgb(0, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "BLM";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Support Alt";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Support Alt";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;

	/*
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 255, 255);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "28";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 255, 255);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "29";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 255, 255);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "30";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	//color_slot++;
	*/
/*
	Blank Version
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 255, 255);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Name";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Flavor Text";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Pallet Name";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot++;
	color_slot++;
*/
	
//Draw Alt Name from Muno
rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black,c_black,1);
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "#" + string(ue) + ": " + ce[ue,1]);

// Set up Timer Function
if("timer" not in self){timer = 1;}
else timer++;
if(timer > 256){timer = 1;}

// TGP Icon Rotation (Change this to another icon)
sprite_change_offset("tlc_icon",12,12);
draw_sprite_ext(sprite_get("tlc_icon"),timer/20,x+190,y+120,2,2,0,c_white,1);
//sprite_change_offset("css_icons", 24, 24); Ussed for CSS
textDraw(temp_x + 73, temp_y + 10, "fName", c_white, 100, 1000, 1, false, 0.25,"" + string(get_char_info(player, INFO_VER_MAJOR)) + "." + string(get_char_info(player, INFO_VER_MINOR)));

//Revamped for new loaction
if (color_desc_activate){
	// Detect Cursor
	if (tmp_x[tmp_pt]>tmp_xl1 && tmp_x[tmp_pt]<tmp_xl2 && tmp_y[tmp_pt]>tmp_yl1 && tmp_y[tmp_pt]<tmp_yl2){ 	
		if (dial_time<dial_max){ dial_time += 3; } // Ramp up transparncy code if on button
	}
	else{
		if (dial_time>0){ dial_time -= 3; } // Ramp down transparncy code if off button
	}
	draw_set_alpha(0.3);
	draw_rectangle_colour(tmp_xl1-1, tmp_yl1+3, tmp_xl2, tmp_yl2, c_black, c_black, c_black, c_black, false); // draws the small block
	textDraw(round(tmp_xl1+(tmp_bw/2))-18, round(tmp_yl1+(tmp_bh/2))-4, "fName", c_white, 0, 100, 1, false, 0.3, "Info"); // Draws the Button text
	textDraw(round(tmp_xl1+(tmp_bw/2))-18, round(tmp_yl1+(tmp_bh/2))-4, "fName", c_white, 0, 100, 1, false, 0.3, "Info"); // Draws the Button text
	var dial_ease = ease_linear( 0, 100, dial_time, dial_max )
	draw_set_alpha(dial_ease/130);
	//draw_rectangle_colour(x+10, y+95-round(dial_ease/30), x+210, y+153, c_black, c_black, c_black, c_black, false); // Original black box draw function
	draw_rectangle_colour(x+10, y+15-round(dial_ease/30), x+210, y+153, c_black, c_black, c_black, c_black, false); // Draws black box that appears
	draw_set_alpha(dial_ease/500);
	draw_rectangle_colour(tmp_xl1, tmp_yl1+3, tmp_xl2, tmp_yl2, c_white, c_white, c_white, c_white, false);
	draw_set_alpha(1);
	textDraw(x+14, (y+45)-round(dial_ease/30), "fName", c_white, 18, 200, 1, false, dial_ease/100, "#"+string(ue)+": "+ce[ue,1]); //String for skin name
	textDraw(x+14, (y+65)-round(dial_ease/30), "fName", c_white, 18, 200, 1, false, dial_ease/100, ce[ue,3]); //Text for skin source
	textDraw(x+14, (y+85)-round(dial_ease/30), "fName", c_white, 18, 200, 1, false, dial_ease/100, ce[ue,2]); //Text for skin description
}

if(get_player_color(player) == 14){
// Rainbox Color Code for CSS
	if("color_r" not in self){
		color_r = 255;
		color_b = 0;
		color_g = 0;
		color_type = 0;
		color_timer = 1; //Edit this value to change the speed of rainbow
	}
	RainBowColor(timer,1);
	
}

#define RainBowColor(css_timer,color_speed_timer)
{
	//init_shader();
	if (css_timer % color_speed_timer == 0) {
	    switch(color_type) {
	        case 0: //Red Stay, Green Up
	            color_g += 1;
	            if (color_g >= 255) {
	                color_g = 255;
	                color_type += 1;
	            }
	        break;
	        case 1: //Green Stay, Red Down
	            color_r -= 1;
	            if (color_r <= 0) {
	                color_r = 0;
	                color_type += 1;
	            }
	        break;
	        case 2: //Green Stay, Blue Up
	            color_b += 1;
	            if (color_b >= 255) {
	                color_b = 255;
	                color_type += 1;
	            }
	        break;
	        case 3: //Blue Stay, Green Down  
	            color_g -= 1;
	            if (color_g <= 0) {
	                color_g = 0;
	                color_type += 1;
	            }
	        break;
	        case 4: //Blue Stay. Red Up
	            color_r += 1;
	            if (color_r >= 255) {
	                color_r = 255;
	                color_type += 1;
	            }
	        break;
	        case 5: //Red Stay, Blue Down
	            color_b -= 1;
	            if (color_b <= 0) {
	                color_b = 0;
	                color_type = 0;
	            }
	        break;
	        default:
	        break;
	    }
	}

	//set slots here
	with(asset_get("player_obj")){
        rainbowAlt(3); // //Kimono Accent
        rainbowAlt(4); // //Sash and Anklet
        rainbowAlt(6); // //Soul Fire 1
	}
//print(string(color_r) + ", " + string(color_g) + ", " + string(color_b))
}

  
#define rainbowAlt(profileNum)
    set_character_color_slot( argument[0], color_r, color_g, color_b); 

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

draw_set_font(asset_get(argument[2]));

if argument[7]{
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}

draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);

return string_width_ext(argument[9], argument[4], argument[5]);


#define rectDraw(x1, y1, x2, y2, color, out_color, alpha)

draw_set_alpha(argument[6]);
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[5], argument[5], argument[5], argument[5], false);
draw_set_alpha(argument[6]*1.5);
draw_rectangle_color(argument[0]+2, argument[1]+2, argument[2]-2, argument[3]-2, argument[4], argument[4], argument[4], argument[4], false);
draw_set_alpha(1);
