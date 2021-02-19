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
if (color != image_index){ 
	image_alpha = 3; //Set to 3 to make it take a long time for the text to fade
}
image_index = color;

// Trying my best to learn how to use switches (I think this is the right way to use them?)
// Trying some new stuff out to increase total amount of colors selectable on the CSS menu
switch(cPage) {
	case 1:
		switch(color) {
				case 0:
			name = "01: Greed Blood"; 
			var position = 0;
				break;
			
				case 1: 
			name = "02: Rune Maker"; 
			var position = 1;
				break;
			
				case 2: 
			name = "03: Crayfish"; 
			var position = 2;
				break;
			
				case 3: 
			name = "04: Emerald Confidant"; 
			var position = 3;
				break;
				
				case 4: 
			name = "05: Black Blank"; 
			var position = 4;
				break;
			
				case 5: 
			name = "06: Robbery Purple"; 
			var position = 5;
				break;
			
				case 6: 
			name = "07: Empty Flame"; 
			var position = 6;
				break;
			
				case 7:
			name = "08: Crimson Scourge"; 	
			var position = 7;
				break;
			
				case 8: 
			name = "09: King of Kings"; 
			var position = 8;
				break;
			
				case 9: 
			name = "10: Humple Melody"; 
			var position = 9;
				break;
			
				case 10: 
			name = "11: Crystalline Growth"; 
			var position = 10;
				break;	
			
				case 11: 
			name = "12: Explosive Rebel"; 
			var position = 11;
				break;
			
				case 12: 
			name = "13: Poisonous Roar"; 
			var position = 12;				
				break;	
			
				case 13: 
			name = "14: Attuned Traveler"; 
			var position = 13;
				break;	
				
				case 14: 
			name = "15: Hardened Veteran"; 
			var position = 14;
				break;	
				
				case 15: 
			name = "16: Sanguine Lightning"; 
			var position = 15;
				break;	
		}
	break;
}

// Version Display // -------------------------------------------------------------------------------------
draw_set_font(asset_get("tinyFont"));
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_color(x + 10, y - 6, "Version 1.2.5", c_white, c_white, c_white, c_white, 1);

// Date Display
draw_set_font(asset_get("tinyFont"));
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_text_color(x + 210, y - 6, "August 29th, 2020", c_white, c_white, c_white, c_white, 1);

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
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 150, temp_y - 32, c_black, c_black, c_black, c_black, false);

	// Some Fancy Things I Like
	draw_text_color(temp_x, temp_y - 12, "None here, lol", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 30, "Secret Colors:", c_white, c_white, c_white, c_white, 1);	
}

// -- C1 Variations -- //
if (image_alpha == 0 && position == 1){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 150, temp_y - 32, c_black, c_black, c_black, c_black, false);

	// Color 1 Secret Alts
	draw_text_color(temp_x, temp_y, "Cheery Secretary (Isabelle) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Particle Agitator (Mal) = Right", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Flaming Gorilla (Tenru) = Left", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Storm God (Susano'o) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 24, "Mad Dog (Azrael) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 30, "Secret Colors:", c_white, c_white, c_white, c_white, 1);	
}

// -- C2 Variations -- //
if (image_alpha == 0 && position == 2){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 150, temp_y - 32, c_black, c_black, c_black, c_black, false);

	// Color 2 Secret Alts
	draw_text_color(temp_x, temp_y, "Shocking Rodent (Pichu) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Average Schmuck (Bob) = Right", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Loving Athlete (Cupcake) = Left", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Flaming Sentry (Exetior) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 24, "Call Shot (Otto) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 30, "Secret Colors:", c_white, c_white, c_white, c_white, 1);	
}

// -- C3 Variations -- //
if (image_alpha == 0 && position == 3){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 150, temp_y - 32, c_black, c_black, c_black, c_black, false);

	// Color 3 Secret Alts
	draw_text_color(temp_x, temp_y, "Sin of Greed (Greed) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Vampire Savior (Jedah) = Right", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Bloody Ronin (Nagoriyuku) = Left", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Metal Vampir (Mira) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 24, "Heaven Chaser (DIO) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 30, "Secret Colors:", c_white, c_white, c_white, c_white, 1);		
}

// -- C4 Variations -- //
if (image_alpha == 0 && position == 4){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 150, temp_y - 32, c_black, c_black, c_black, c_black, false);

	// Color 4 Secret Alts
	draw_text_color(temp_x, temp_y, "Dragon Install (Sol) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Who is SG? (SG) = Right", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Immortal Stranger (Raven) = Left", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Void Sacrifice (Scaryami) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 24, "Prideful Lion (Leo) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 30, "Secret Colors:", c_white, c_white, c_white, c_white, 1);	
}

// -- C5 Variations -- //
if (image_alpha == 0 && position == 5){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 150, temp_y - 32, c_black, c_black, c_black, c_black, false);

	// Color 5 Secret Alts
	draw_text_color(temp_x, temp_y, "Mark of the Wolf (Rock) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Drumming Frenzy (Don-chan) = Right", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Future Mercenary (Penny) = Left", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Demon Gangster (Ryuji) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 24, "Unbridled Instinct (Iori) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 30, "Secret Colors:", c_white, c_white, c_white, c_white, 1);	
}

// -- C6 Variations -- //
if (image_alpha == 0 && position == 6){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 150, temp_y - 32, c_black, c_black, c_black, c_black, false);

	// Color 6 Secret Alts
	draw_text_color(temp_x, temp_y, "Eldrich Dancer (Vel) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Dynamic Double (Delta) = Right", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Misty Swordmaster (Wolfgang) = Left", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Kind Illusionist (Hikaru) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 24, "Frozen Heart (Diamond) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 30, "Secret Colors:", c_white, c_white, c_white, c_white, 1);	
}

// -- C7 Variations -- //
if (image_alpha == 0 && position == 7){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 150, temp_y - 32, c_black, c_black, c_black, c_black, false);

	// Color 7 Secret Alts
	draw_text_color(temp_x, temp_y, "Morion Blcak (Hilda) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Schwartzschild (Annie) = Right", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Infernal Punk (Amvira) = Left", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Hunter's Eyes (Naoto) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 24, "Bone Dry (Marie) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 30, "Secret Colors:", c_white, c_white, c_white, c_white, 1);	
}

// -- C8 Variations -- //
if (image_alpha == 0 && position == 8){
    draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 150, temp_y - 32, c_black, c_black, c_black, c_black, false);

	// Color 8 Secret Alts
	draw_text_color(temp_x, temp_y, "Hammer Head (Bonk) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Dark Heart (Ralsei) = Right", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Berserker (Susie) = Left", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Chosen One (Kris) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 24, "Cruel Comedian (Sans) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 30, "Secret Colors:", c_white, c_white, c_white, c_white, 1);		
}

// -- C9 Variations -- //
if (image_alpha == 0 && position == 9){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 150, temp_y - 32, c_black, c_black, c_black, c_black, false);

	// Color 9 Secret Alts
	draw_text_color(temp_x, temp_y, "Blue Sightseer (Bluey) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Phantom Ranger (Gustav) = Right", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Pruding Songsmith (Pomme) = Left", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Global Warming (Acid Rainbows) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 24, "Light Bringer (Lumina) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 30, "Secret Colors:", c_white, c_white, c_white, c_white, 1);	
}

// -- C10 Variations -- //
if (image_alpha == 0 && position == 10){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 150, temp_y - 32, c_black, c_black, c_black, c_black, false);

	// Color 9 Secret Alts
	draw_text_color(temp_x, temp_y, "Starry Artist (Spritestar) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Steamy Tutor (Hodan) = Right", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Sacred Sniper (Hime) = Left", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Clumsy Elemental (Yuuto) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 24, "Essence Weaver (Siren) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 30, "Secret Colors:", c_white, c_white, c_white, c_white, 1);	
}

// -- C11 Variations -- //
if (image_alpha == 0 && position == 11){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 150, temp_y - 32, c_black, c_black, c_black, c_black, false);

	// Retro
	draw_text_color(temp_x, temp_y, "Creator of Giik (Giik) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Pie Flavored (Amarelle) = Right", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Inertial Monster (Epinel) = Left", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Gun Slinger (Darm) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 24, "Falling Spores (Mycolich) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 30, "Secret Colors:", c_white, c_white, c_white, c_white, 1);	
}

// -- C12 Variations -- //
if (image_alpha == 0 && position == 12){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 150, temp_y - 32, c_black, c_black, c_black, c_black, false);

	// Color 12 Secret Alts
	draw_text_color(temp_x, temp_y, "Wind Burst (Ash) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Techno Rat (Linz) = Right", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Thunderstruck (Nial) = Left", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Ace of Spades (Lucy) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 24, "Astral Medium (Astra) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 30, "Secret Colors:", c_white, c_white, c_white, c_white, 1);	
}

// -- C13 Variations -- //
if (image_alpha == 0 && position == 13){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 150, temp_y - 32, c_black, c_black, c_black, c_black, false);

	// Color 13 Secret Alts
	draw_text_color(temp_x, temp_y, "Sea Scoundrel (Buch) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Purity Sage (Torga) = Right", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Ominous Maw (Hosha) = Left", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Sandy Artillery (Colonel Brach) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 24, "Metal Ally (Blake) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 30, "Secret Colors:", c_white, c_white, c_white, c_white, 1);	
}

// -- C14 Variations -- //
if (image_alpha == 0 && position == 14){

	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 150, temp_y - 32, c_black, c_black, c_black, c_black, false);

	// Color 14 Secret Alts
	draw_text_color(temp_x, temp_y, "Karmic Justice (Fuki) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Burning Enforcer (Katie) = Right", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Chaloric Destroyer (Nolan) = Left", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "King of Frost (Elice) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 24, "Old Ghost (Saji) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 30, "Secret Colors:", c_white, c_white, c_white, c_white, 1);		
}


// -- C15 Variations -- //
if (image_alpha == 0 && position == 15){
	draw_set_font(asset_get("tinyFont"));
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// Background Rectangle
	draw_rectangle_color(temp_x, temp_y + 6, temp_x + 150, temp_y - 32, c_black, c_black, c_black, c_black, false);

	// Color 15 Secret Alts
	draw_text_color(temp_x, temp_y, "Infinite Space (Suitcase) = Taunt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 6, "Shifting Abyss (???) = Right", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 12, "Corrupted Hunter (Selene) = Left", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 18, "Fog Wanderer (Cirra) = Down", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 24, "Error (Mojibake) = Up", c_white, c_white, c_white, c_white, 1);
	draw_text_color(temp_x, temp_y - 30, "Secret Colors:", c_white, c_white, c_white, c_white, 1);	
}