// Variables
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
	//0,3 Credit to the source
	//0,4 Icon to use from the charactrer strip. Not Used currently
	// Line for Credit
	var color_slot = 0;
	var sub_element_slot = 0;
	// Slot 0
	ce[color_slot,sub_element_slot] = make_color_rgb(13, 99, 195);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Daora";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Everything I ever loved was destroyed in a single day. I will make sure that Loxodont will pay.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Default Palette";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0; sub_element_slot = 0;
	color_slot++;
	// Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(235, 51, 31);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "OG Colors";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "The lake of my home village runs red with the blood of my family.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Original Palette";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(140, 132, 148);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Klockwurth";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "I used to know Cosworth before he became the shell of what he is now...";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Character by Opengunner";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(123, 37, 201);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Iroh";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Somebody told me I look like one of my ancestors with a wig...";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Character by SoA";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 130, 47);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Lyca";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "There are legends of a spectre that weaponized her own children.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Character by SoA";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(227, 235, 250);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Zerra";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "A true marvel to behold the grace of an ice skater. I aspire for such grace.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Character by SoA";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(128, 0, 12);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Dazzling";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Using magic to entertain people may be a novel use of such destructive power.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Character by JustJerome";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(62, 61, 92);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Rykenburn";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "I studied martial arts pioneered by a Fire Capital General named Rykenburn.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Character by Harbige12";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(162, 255, 10);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Void Fox";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "I made sure I was never good with a bladed weapon, in case I ever learned to enjoy killing.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Character by Sai";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(235, 168, 248);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Hikaru";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "I admire powerful illusionary Magic, you can get what you want without being destructive.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Character by Lukaru";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot Zin
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 255, 255);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Zinogre";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "The wrath of thunder descends...";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Monster Hunter Pallet";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot nami
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 255, 255);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Namielle";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "A distant dark tide...";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Monster Hunter Pallet";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(47, 35, 74);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Kunoichi";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "I spent alot of time operating in the shadows, more than I care to admit...";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Palette by Regina";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(54, 69, 101);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Gurren";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "I hide many things about my past, for many would look down on me.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Character by Talemon";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(247, 54, 54);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Tuqiu";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "My anger lingers long after, would I remain a vengeful spirit after I fall?";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Character by Talemon";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(207, 88, 179);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Walkya";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Ferocity and rage in all of its beauty.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Character by Loglord";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(120, 50, 50);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Blood Moon";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "The moon shifts the tide, it ebbs and flows, like blood in my eyes.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Palette by Causeimapilot";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(139, 60, 232);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Voidborn";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "An improvised weapon can be just as deadly as real one. We can fight with tools.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Palette by Dragou";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(94, 67, 37);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Sacramentum";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Loosely based off the band Mili's mascot, Torino.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Palette by Masqerade";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 255, 255);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Mirror";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "It is hard to look in the mirror sometimes.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Palette by Shen";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot zerk
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 255, 255);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Nakiri Ayame";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "I get a lot of questions about the horns. I am not an Oni, I am half dragon.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Vtuber Palette by Zerks";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 255, 255);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Ouro Kronii";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "The slow cruel hands of time has taken their toll on me.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Vtuber Palette for Jmillions";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(251, 139, 55);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Genesis 8";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "An event I won't soon forget.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Palette for Genesis 8";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 255, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Marlow";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Faster than greased lighting.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Palette by Prober for Zonyx";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 0, 0);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Solarei";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "The Sun is sometimes fierce and sometimes gentle...";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Character by Opengunner";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 255, 255);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Amaterasu";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Call upon the Sun to vanquish darkness across the land";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Okami Palette";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(64, 64, 64);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Zeraora";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "I can run as fast as lightning strikes, and shredding my opponents with high-voltage claws.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Pokemon Pallet";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(245, 169, 184);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Trans Rights";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Trans Rights";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Support Pallet";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 255, 255);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "BLM";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Black Lives Matter";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Support Pallet";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 255, 255);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Smash Land";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "I long for the days of old. Back when everything was simple.";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "GBA Pallet";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	color_slot++;
	//Slot 
	ce[color_slot,sub_element_slot] = make_color_rgb(255, 255, 255);sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Color Select";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Use this to pick additional alts";sub_element_slot++;
	ce[color_slot,sub_element_slot] = "Based on Lukaru's Selector";sub_element_slot++;
	ce[color_slot,sub_element_slot] = 0;sub_element_slot = 0;
	//color_slot++;
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

// TGP Icon Rotation 
sprite_change_offset("tgp_icon",17,17);
draw_sprite_ext(sprite_get("tgp_icon"),timer/20,x+190,y+130,2,2,0,c_white,1);
sprite_change_offset("css_icons", 24, 24);
//sprite_change_offset("icon_inventory", 128, 128);
textDraw(temp_x + 170, temp_y + 40, "fName", c_white, 100, 1000, 1, false, 0.25,"v" + string(get_char_info(player, INFO_VER_MAJOR)) + "." + string(get_char_info(player, INFO_VER_MINOR)));

/* Disabled for new portrait
// Bubbles
sprite_change_offset("bubbles", 128, 128);
if(timer < 64){
draw_sprite_ext(sprite_get("bubbles"),timer/8,x+45,y+84,1,1,0,c_white,1);
}
*/
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
