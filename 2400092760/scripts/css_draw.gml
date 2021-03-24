//css draw
//Trying something different for CSS draw to learn
//more of GML dialect like Switch and For statements

//Timer for Fading out text
image_alpha = max(image_alpha - 0.01, 0);
image_speed = 0;

// Variables for positioning of visuals
var temp_x = x + 12;
var temp_y = y + 140;
var alts = 16;

var color = get_player_color(player);
var name = " ";

//path_scale = 0;
//path_position = 0;

switch (path_position){
	case 0:
		var cPage = 1;
	break;
	case 1:
		var cPage = 2;
	break;
}

// Updating image_alpha when a new color is selected

if (color <= 16){	
	if (color != image_index){ 
		image_alpha = 3; //Set to 3 to make it take a long time for the text to fade
	}
}

if (color >= 17){
    if (color != image_index + 17){		
		image_alpha = 3; //Set to 3 to make it take a long time for the text to fade
	}
}

image_index = color;

// Trying my best to learn how to use switches (I think this is the right way to use them?)
// Trying some new stuff out to increase total amount of colors selectable on the CSS menu
switch(cPage) {
	case 1:
		switch(color) {
				case 0:
			name = "00: Greed Blood"; 
			var position = 0;
				break;
			
				case 1: 
			name = "01: Rune Maker"; 
			var position = 1;
				break;
			
				case 2: 
			name = "02: Crayfish"; 
			var position = 2;
				break;
			
				case 3: 
			name = "03: Emerald Confidant"; 
			var position = 3;
				break;
				
				case 4: 
			name = "04: Black Blank"; 
			var position = 4;
				break;
			
				case 5: 
			name = "05: Robbery Purple"; 
			var position = 5;
				break;
			
				case 6: 
			name = "06: Crimson Scourge"; 
			var position = 6;
				break;
			
				case 7:
			name = "07: King of Kings"; 	
			var position = 7;
				break;
			
				case 8: 
			name = "08: Blazing Devil"; 
			var position = 8;
				break;
			
				case 9: 
			name = "09: Cruel Comedian"; 
			var position = 9;
				break;
			
				case 10: 
			name = "10: Immortal Stranger"; 
			var position = 10;
				break;	
			
				case 11: 
			name = "11: Demon Gangster"; 
			var position = 11;
				break;
			
				case 12: 
			name = "12: Schwarzschild"; 
			var position = 12;				
				break;	
			
				case 13: 
			name = "13: Sin of Greed"; 
			var position = 13;
				break;	
				
				case 14: 
			name = "14: Storm God"; 
			var position = 14;
				break;	
				
				case 15: 
			name = "15: Vampire Savior"; 
			var position = 15;
				break;	
				
				case 16: 
			name = "16: Empty Flame"; 
			var position = 16;
				break;	
				
				case 17: 
			name = "17: Humble Melody"; 
			var position = 17;
				break;	
				
				case 18: 
			name = "18: Metal Ally"; 
			var position = 18;
				break;	
				
				case 19: 
			name = "19: Global Warming"; 
			var position = 19;
				break;	
				
				case 20: 
			name = "20: Crystalline Growth"; 
			var position = 20;
				break;	
				
				case 21: 
			name = "21: Dangerous Date"; 
			var position = 21;
				break;	
				
				case 22: 
			name = "22: Blue Sightseer"; 
			var position = 22;
				break;
				
				case 23: 
			name = "23: Flaming Gorilla"; 
			var position = 23;
				break;	
				
				case 24: 
			name = "24: Explosive Rebel"; 
			var position = 24;
				break;	
				
				case 25: 
			name = "25: Poisonous Roar"; 
			var position = 25;
				break;	
				
				case 26: 
			name = "26: Attuned Traveler"; 
			var position = 26;
				break;	
				
				case 27: 
			name = "27: Null"; 
			var position = 27;
				break;
				
				case 28: 
			name = "28: Hardened Veteran"; 
			var position = 28;
				break;	
				
				case 29: 
			name = "29: Old Ghost"; 
			var position = 29;
				break;
				
				case 30: 
			name = "30: Sanguine Lightning"; 
			var position = 30;
				break;	
				
				case 31: 
			name = "31: Cackling Hyena"; 
			var position = 31;
				break;	
		}
	break;
}

// SoA Badge // ------------------------------------------------------------------------------------------
shader_end()
var offset;
offset = sin(get_gameplay_time()/14) * 2

draw_sprite_ext(sprite_get("soa_badge"), 0, temp_x + 160, temp_y-100 - offset,1,1,0,c_black,1)
draw_sprite(sprite_get("soa_badge"), 0, temp_x + 160, temp_y-100 + offset-4)

// Version Display // -------------------------------------------------------------------------------------
draw_set_font(asset_get("tinyFont"));
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_color(x + 10, y - 6, "Version 1.5", c_white, c_white, c_white, c_white, 1);

// Date Display
draw_set_font(asset_get("tinyFont"));
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_text_color(x + 210, y - 6, "March 22, 2021", c_white, c_white, c_white, c_white, 1);

// Border Rectangle Yo!
draw_rectangle_color(temp_x, temp_y + 4, temp_x + 40 + 10 * alts, temp_y + 12, c_black, c_black, c_black, c_black, false);

// Grey Rectangles Yo!!
for(i = 0; i < alts; i++){
	var draw_x = temp_x + 2 + 10 * i;
	if (cPage == 1){
		draw_rectangle_color(draw_x, temp_y + 8, draw_x + 7, temp_y + 11, c_gray, c_gray, c_gray, c_gray, false);
	}
}

// Selected Rectangle Yo!!!
draw_rectangle_color(temp_x + 2 + 10 * position, temp_y + 6, temp_x + 9 + 10 * position, temp_y + 11, c_black, c_black, c_black, c_black, false);

// Initial Name	+ Rectangles
if (image_alpha > 0){
	draw_rectangle_color(temp_x, temp_y + 4, temp_x + 200, temp_y - 10, c_black, c_black, c_black, c_black, false);

	draw_set_font(asset_get("fName"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	draw_text_color(temp_x, temp_y - 6, "Alt " + name, c_white, c_white, c_white, c_white, image_alpha);
}

// Secret Colors //
// -- C0 Variations -- //
if (image_alpha == 0 && position == 0){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 155, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 0 Secret Alts: Development Shit
	draw_text_color(temp_x, temp_y, "Artist of Seer (Seer) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Sketchy Origins (Sketch Colors) = Left", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Golden Blues (Placeholder Pallet) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors: Development Shit", c_white, c_white, c_white, c_white, 1);	
}

// -- C1 Variations -- //
if (image_alpha == 0 && position == 1){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 155, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 1 Secret Alts
	draw_text_color(temp_x, temp_y, "Particle Agitator (Mal) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Neo Samurai (Lonin) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Mad Dog (Azrael) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors: Human Strength", c_white, c_white, c_white, c_white, 1);	
	
}

// -- C2 Variations -- //
if (image_alpha == 0 && position == 2){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 155, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 2 Secret Alts
	draw_text_color(temp_x, temp_y, "Shocking Rodent (Pichu) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Death Perception (Ryougi) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Metal Vampir (Mira) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors: A Thousand Cuts", c_white, c_white, c_white, c_white, 1);	
	
}

// -- C3 Variations -- //
if (image_alpha == 0 && position == 3){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 155, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 3 Secret Alts
	draw_text_color(temp_x, temp_y, "Heaven Chaser (DIO) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Stardust Crusader (Jotaro) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Average Shmuck (Bob) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors: The World", c_white, c_white, c_white, c_white, 1);	
}

// -- C4 Variations -- //
if (image_alpha == 0 && position == 4){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 155, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 4 Secret Alts
	draw_text_color(temp_x, temp_y, "Dragon Install (Sol) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Prideful Lion (Leo) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Void Sacrifice (Scaryami) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors: Heavy and Metal", c_white, c_white, c_white, c_white, 1);	
}

// -- C5 Variations -- //
if (image_alpha == 0 && position == 5){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 155, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 5 Secret Alts
	draw_text_color(temp_x, temp_y, "Infernal Punk (Amvira) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Gun Slinger (Darm) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Call Shot (Otto) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors: Tough Punks", c_white, c_white, c_white, c_white, 1);	
}

// -- C6 Variations -- //
if (image_alpha == 0 && position == 6){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 155, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 6 Secret Alts
	draw_text_color(temp_x, temp_y, "Cheery Secretary (Isabelle) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Hunter's Eyes (Naoto) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Morion Black (Hilda) = Upk", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors: Bloodthirsty", c_white, c_white, c_white, c_white, 1);	
}

// -- C7 Variations -- //
if (image_alpha == 0 && position == 7){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 155, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 7 Secret Alts
	draw_text_color(temp_x, temp_y, "Dark Heart (Ralsei) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Berserker (Susie) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Chosen One (Kris) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors: Lightners", c_white, c_white, c_white, c_white, 1);	
}

// -- C8 Variations -- //
if (image_alpha == 0 && position == 8){
    draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 155, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 8 Secret Alts
	draw_text_color(temp_x, temp_y, "Fire Savior (Clairen) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Future Mercenary (Penny) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Flaming Sentry (Exetior) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors: Blaze of Glory", c_white, c_white, c_white, c_white, 1);		
}

// -- C9 Variations -- //
if (image_alpha == 0 && position == 9){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 155, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 9 Secret Alts
	draw_text_color(temp_x, temp_y, "Genocide (Chara) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Fallen Child (Frisk) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Puzzling Fiend (Papyrus) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors: A Beautiful Day", c_white, c_white, c_white, c_white, 1);
}

// -- C10 Variations -- //
if (image_alpha == 0 && position == 10){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 155, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 9 Secret Alts
	draw_text_color(temp_x, temp_y, "Misty Swordmaster (Wolfgang) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Bloody Ronin (Nagoriyuki) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Kamui (Giovanna) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors: Smell of the Game", c_white, c_white, c_white, c_white, 1);
}

// -- C11 Variations -- //
if (image_alpha == 0 && position == 11){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 155, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Retro
	draw_text_color(temp_x, temp_y, "Mark of the Wolf (Rock) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Joker (Oswald) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Unbridled Instinct (Iori) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors: King of Fighters", c_white, c_white, c_white, c_white, 1);
}

// -- C12 Variations -- //
if (image_alpha == 0 && position == 12){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 155, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 12 Secret Alts
	draw_text_color(temp_x, temp_y, "Bone Dry (Marie) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Astral Medium (Astra) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Clumsy Elemental (Yuuto) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors: Star Children", c_white, c_white, c_white, c_white, 1);	
}

// -- C13 Variations -- //
if (image_alpha == 0 && position == 13){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 155, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 13 Secret Alts
	draw_text_color(temp_x, temp_y, "Fullmetal (Edward) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Sacred Sniper (Hime) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Kind Illusionist (Hikaru) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors: Philosphers Stone", c_white, c_white, c_white, c_white, 1);	
}

// -- C14 Variations -- //
if (image_alpha == 0 && position == 14){

	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 155, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 14 Secret Alts
	draw_text_color(temp_x, temp_y, "Cunning Snake (Hazama) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Who is SG? (SG) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Fool or Clown (Adachi) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors: Deceptively Dangerous", c_white, c_white, c_white, c_white, 1);		
}


// -- C15 Variations -- //
if (image_alpha == 0 && position == 15){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 155, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 15 Secret Alts
	draw_text_color(temp_x, temp_y, "Degraded Mentor (Giers) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Drumming Frenzy (Don-chan) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "CROWNED (Magalor) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors: World Enders", c_white, c_white, c_white, c_white, 1);
}
// -- C16 Variations -- //
if (image_alpha == 0 && position == 16){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 155, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 16 Secret Alts: Development Shit
	draw_text_color(temp_x, temp_y, "Dynamic Double (Delta) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Reflective Ocean (Lapis) = Left", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Eldrich Dancer (Vel) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors: Blood and Fire", c_white, c_white, c_white, c_white, 1);	
}

// -- C17 Variations -- //
if (image_alpha == 0 && position == 17){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 155, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 17Secret Alts
	draw_text_color(temp_x, temp_y, "Pruding Songsmith (Pomme) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Groovy Teacher (Marissa) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Galaxy Buster (Kitsuga) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors: Timely Melody", c_white, c_white, c_white, c_white, 1);	
	
}

// -- C18 Variations -- //
if (image_alpha == 0 && position == 18){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 155, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 18 Secret Alts
	draw_text_color(temp_x, temp_y, "ERROR (Mojibake) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Dune Song (Coda) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Ominous Maw (Hosha) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors: Shining Steel", c_white, c_white, c_white, c_white, 1);	
	
}

// -- C19 Variations -- //
if (image_alpha == 0 && position == 19){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 155, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 19 Secret Alts
	draw_text_color(temp_x, temp_y, "Moonlit Lily (Ao) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Crow Bar (Natsumi) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Light Bringer (Lumina) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors: Starlit Field", c_white, c_white, c_white, c_white, 1);	
}

// -- C20 Variations -- //
if (image_alpha == 0 && position == 20){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 155, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 20 Secret Alts
	draw_text_color(temp_x, temp_y, "Starry Artist (Spritestar) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Wind Burst (Ash) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Inertial Monster (Epinel) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors: Brawl of the Century", c_white, c_white, c_white, c_white, 1);	
}

// -- C21 Variations -- //
if (image_alpha == 0 && position == 21){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 155, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 21 Secret Alts
	draw_text_color(temp_x, temp_y, "Heartbreaker (Heartbrake) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Loving Athlete (Cupcake) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Essence Weaver (Siren) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors: Drifting Love", c_white, c_white, c_white, c_white, 1);	
}

// -- C22 Variations -- //
if (image_alpha == 0 && position == 22){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 155, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 22 Secret Alts
	draw_text_color(temp_x, temp_y, "Techno Rat (Linz) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Thunderstruck (Nial) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Ace of Spades (Lucy) = Upk", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors: Lost Concepts", c_white, c_white, c_white, c_white, 1);	
}

// -- C23 Variations -- //
if (image_alpha == 0 && position == 23){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 155, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 7 Secret Alts
	draw_text_color(temp_x, temp_y, "Phantom Ranger (Gustav) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Steamy Tutor (Hodan) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Monarch Wings (Monarch) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors: Elusive Masters", c_white, c_white, c_white, c_white, 1);	
}

// -- C24 Variations -- //
if (image_alpha == 0 && position == 24){
    draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 155, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 8 Secret Alts
	draw_text_color(temp_x, temp_y, "Creator of Giik (Giik) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Pie Flavored (Amarelle) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Falling Spores (Mycolich) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors: Quirky Inventiveness", c_white, c_white, c_white, c_white, 1);		
}

// -- C25 Variations -- //
if (image_alpha == 0 && position == 25){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 155, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 25 Secret Alts
	draw_text_color(temp_x, temp_y, "Sandy Artillery (Colonel Brach) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Scarlet Detective (Sango) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Fog Wanderer (Cirra) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors: Treasured Figments", c_white, c_white, c_white, c_white, 1);
}

// -- C26 Variations -- //
if (image_alpha == 0 && position == 26){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 155, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 26 Secret Alts
	draw_text_color(temp_x, temp_y, "Sea Scoundrel (Buch) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Purity Sage (Torga) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Cloud Dandy (T&A) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors: Calm Ocean", c_white, c_white, c_white, c_white, 1);
}

// -- C27 Variations -- //
if (image_alpha == 0 && position == 27){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 155, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 27 Secret Alts
	draw_text_color(temp_x, temp_y, "Shifting Abyss (???) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Infinite Space (Suitcase) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Corrupted Hunter (Selene) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors: Unsettling Oddities", c_white, c_white, c_white, c_white, 1);
}

// -- C28 Variations -- //
if (image_alpha == 0 && position == 28){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 155, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 28 Secret Alts
	draw_text_color(temp_x, temp_y, "Karmic Justice (Fuki) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Burning Enforcer (Katie) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "King of Frost (Elice) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors: WRONG place", c_white, c_white, c_white, c_white, 1);	
}

// -- C29 Variations -- //
if (image_alpha == 0 && position == 29){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 155, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 29 Secret Alts
	draw_text_color(temp_x, temp_y, "Spirit of Combat (Ase) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Chaloric Destroyer (Nolan) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Soul Flame (Alex) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors: Old Spirits", c_white, c_white, c_white, c_white, 1);	
}

// -- C30 Variations -- //
if (image_alpha == 0 && position == 30){

	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 155, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 30 Secret Alts
	draw_text_color(temp_x, temp_y, "Anchored Caster (Tora) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Rotting Sanity (Crackers) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Wisp Drifter (Lyca) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors: Malevolent Tendencies", c_white, c_white, c_white, c_white, 1);		
}


// -- C31 Variations -- //
if (image_alpha == 0 && position == 31){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 155, temp_y - 20, c_black, c_black, c_black, c_black, false);

	// Color 31 Secret Alts
	draw_text_color(temp_x, temp_y, "Hopeful Night (BLM Pallet) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Slipstream (Zephrie) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Frozen Heart (Diamond) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Secret Colors: Seeds of Pride", c_white, c_white, c_white, c_white, 1);
}