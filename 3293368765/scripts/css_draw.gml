// Variables
if("dial_time" not in self){dial_time = 0;} // Used for transparncy
dial_max = 100; // Used for transparncy
color_desc_activate = true; // optional "alt color description button". set to "true" to turn it on.
col_max = 22; // number of alternate color palettes. 0 is the default color, count it accordingly.
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
		tmp_x[tmp_cur] = get_instance_x( self )
		tmp_y[tmp_cur] = get_instance_y( self )
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
	// Slot 0
	ce[color_slot,sub_element_slot] = make_color_rgb(121, 155, 227);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "The Final Will";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "I was never supposed to wake up. Why am I here?";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0; sub_element_slot = 0;
	color_slot++;
	
	// Slot 1
	ce[color_slot,sub_element_slot] = make_color_rgb(254, 254, 255);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Mountain Ice";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Somewhere in the mountains lies the ruin of an unknown people...";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	
	//Slot 2
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 163, 163);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Burning Coals";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Danger smolders deep beneath the earth...";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	
	//Slot 3
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 201, 201);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Forest Floor";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Nature thrives were people once stood...";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	
	//Slot 4
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 255, 255);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Chrome Gadget";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Time marches ever forward...";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	
	//Slot 5
	ce[color_slot,sub_element_slot] = make_color_rgb(176, 106, 189);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Moon Sage";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "TuQiu... she reminds me so much of someone I knew.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	
	//Slot 6
	ce[color_slot,sub_element_slot] = make_color_rgb(176, 115, 79);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Star Player";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Fernet has the stench of darkness on her. Why?";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	
	//Slot 7
	ce[color_slot,sub_element_slot] = make_color_rgb(254, 254, 255);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Sky Pirate";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Zelf. I don't trust that bloated barf bag as far as I can throw him.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	
	//Slot 8
	ce[color_slot,sub_element_slot] = make_color_rgb(227, 126, 79);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Admirable Acrobat";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Cupcake? He's a good kid, considering the company he keeps.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	
	//Slot 9
	ce[color_slot,sub_element_slot] = make_color_rgb(194, 200, 255);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Fisher Thief";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "I don't understand Nao. No really, I can't read hands.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	
	//Slot 10
	ce[color_slot,sub_element_slot] = make_color_rgb(0, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Legacy Draft";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Deki and I have a lot in common! Maybe too much, really..";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	
	//Slot 11
	ce[color_slot,sub_element_slot] = make_color_rgb(0, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Whirlwind Anthropologist";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Lydia is crazy smart. How does she keep all of it straight in her head?";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	
	//Slot 12
	ce[color_slot,sub_element_slot] = make_color_rgb(97, 67, 102);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Conduit Blade";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Solo? He means well, he just needs to have more confidence!";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	
	//Slot 13
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 194, 71);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Eye of the Seeker";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Ayumi. What would possess you to free the Seeker...?";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	
	//Slot 14
	ce[color_slot,sub_element_slot] = make_color_rgb(0, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Hidden Hunter";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Eira looks scary on the outside, but she's actually very nice!";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	
	//Slot 15
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Country Core";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Bannu is such a sweetheart; I miss her cooking!";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	
	//Slot 16
	ce[color_slot,sub_element_slot] = make_color_rgb(0, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Amethyst Fist";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Olympia is a little too stoic, but she's seriously strong. I won't lose...!";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	
	//Slot 17
	ce[color_slot,sub_element_slot] = make_color_rgb(252, 253, 255);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Aetherian Ace";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Bailey's so cool! I need to catch another match soon.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	
	//Slot 18
	ce[color_slot,sub_element_slot] = make_color_rgb(87, 51, 53);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Abyssal";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "I don't know how I survived, but it won't get the best of me next time.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "The Abyss..";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	
	//Slot 19
	ce[color_slot,sub_element_slot] = make_color_rgb(0, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "The Pinnacle";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Toei *please* don't sue us";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	
	//Slot 20
	ce[color_slot,sub_element_slot] = make_color_rgb(0, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Half-Genie Hero";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Dance through the danger!";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	
	//Slot 21
	ce[color_slot,sub_element_slot] = make_color_rgb(0, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Bitter Memory";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "I'm sorry for leaving you alone. Did you ever forgive me..?";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	
	//Slot 22
	ce[color_slot,sub_element_slot] = make_color_rgb(0, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Greenah";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "It's the GB alt.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	
	//Slot 23 
	ce[color_slot,sub_element_slot] = make_color_rgb(0, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Gust of Wind";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Gale.. in a lot of ways, she was my first Rival. I wonder where she is now..";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	
	//Slot 24
	ce[color_slot,sub_element_slot] = make_color_rgb(0, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Simply a Cat";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "'Tyana Tyanu, TyTy for short!' Is it my turn yet? I'm getting borrrred..'";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Only play on Tuesdays";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	
	//Slot 25
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 255, 255);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Nanite";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "A warrior from the future? Somehow, we met in the middle.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;

	//Slot 26
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 255, 255);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Limitless";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Throughout Heaven and Earth...";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	
	//Slot 27
	ce[color_slot,sub_element_slot] = make_color_rgb(0, 0, 255);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Overcharge";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "It's time to enable abyss runes I guess...";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Abyss VS?";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;

	/*
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(0, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "26";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(245, 169, 184);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "27";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
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