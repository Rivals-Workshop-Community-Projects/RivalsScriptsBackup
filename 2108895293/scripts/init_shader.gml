//referencely stolen from the documents

if (get_player_color( player ) == 7) { //early
for (var slot_num = 0; slot_num < 8; slot_num++) {
set_character_color_shading( slot_num, 0 );
}
}

if (get_player_color( player ) == 1) { //blue
set_character_color_shading( 3, 2 );
set_character_color_shading( 0, 1.3 );
}
if (get_player_color( player ) == 2) { //red
set_character_color_shading( 3, 1.2 );
set_character_color_shading( 0, 0.7 );
}
if (get_player_color( player ) == 3) { //green
set_character_color_shading( 3, 1.2 );
set_character_color_shading( 0, 0.6 );
}
if (get_player_color( player ) == 4) { //grey
set_character_color_shading( 2, 1.2 );
set_character_color_shading( 0, 1.6 );
}
if (get_player_color( player ) == 6) { //abyss
set_character_color_shading( 2, 0.7 );
set_character_color_shading( 0, 1.4 );
}
if (get_player_color( player ) == 8) { //what you take of this is up to you
set_character_color_shading( 3, 0.3 );
set_character_color_shading( 0, 0.3 );
}
if (get_player_color( player ) == 9) { //rumia
set_character_color_shading( 3, 1.3 );
set_character_color_shading( 0, 0.3 );
}
if (get_player_color( player ) == 10) { //trigono
set_character_color_shading( 3, 1.6 );
set_character_color_shading( 0, 1.4 );
}
if (get_player_color( player ) == 11) { //lalala
set_character_color_shading( 0, 0.6 );
}
if (get_player_color( player ) == 12) { //mix
set_character_color_shading( 1, 0.6 );
set_character_color_shading( 3, 0.6 );
set_character_color_shading( 0, 1.4 );
}

if (variable_instance_exists(id, "hypal")){
	if (hypal == 1){
		// shade, r, g, b, alpha
		set_character_color_slot( 0, 97, 70, 62 );
		set_character_color_slot( 1, 255, 235, 222 );
		set_character_color_slot( 2, 255, 200, 0 );
		set_character_color_slot( 3, 255, 221, 135 );
		set_character_color_slot( 4, 43, 255, 174 );
		set_character_color_slot( 5, 148, 255, 180 );
		set_character_color_slot( 6, 71, 227, 144 );
		set_character_color_slot( 7, 186, 118, 39 );
	}
	if (hypal == 2){
		// shade, r, g, b, alpha
		set_character_color_slot( 0, 56, 102, 58 );
		set_character_color_slot( 1, 0, 0, 0 );
		set_character_color_slot( 2, 81, 219, 120 );
		set_character_color_slot( 3, 81, 219, 120 );
		set_character_color_slot( 4, 0, 0, 0 );
		set_character_color_slot( 5, 255, 0, 0 );
		set_character_color_slot( 6, 255, 0, 0 );
		set_character_color_slot( 7, 61, 189, 100 );
	}
	if (hypal == 3){
		// shade, r, g, b, alpha
		// margret
		set_character_color_slot( 0, 120, 135, 120 );
		set_character_color_slot( 1, 255, 234, 214 );
		set_character_color_slot( 2, 255, 191, 0 );
		set_character_color_slot( 3, 235, 153, 221 );
		set_character_color_slot( 4, 255, 179, 244 );
		set_character_color_slot( 5, 255, 231, 251 );
		set_character_color_slot( 6, 255, 179, 215 );
		set_character_color_slot( 7, 186, 118, 39 );
	}
	if (hypal == 4){
		// shade, r, g, b, alpha
		// arry
		set_character_color_slot( 0, 39, 48, 39 );
		set_character_color_slot( 1, 255, 234, 214 );
		set_character_color_slot( 2, 227, 255, 227 );
		set_character_color_slot( 3, 230, 255, 239 );
		set_character_color_slot( 4, 255, 173, 242 );
		set_character_color_slot( 5, 153, 255, 0 );
		set_character_color_slot( 6, 208, 255, 38 );
		set_character_color_slot( 7, 160, 191, 160 );
	}
}

if (variable_instance_exists(id, "hylalala")){
	if (get_player_color( player ) == 11){
			//44, 219, 143
			var altnum = get_player_color( player );
			var altr = get_color_profile_slot_r( altnum, 2 ) + (hylalala_s*3);
			var altg = get_color_profile_slot_g( altnum, 2 ) + hylalala_s;
			var altb = get_color_profile_slot_b( altnum, 2 ) + (hylalala_s*2);
			
			set_character_color_slot( 2, altr, altg, altb );
			
			var altr = get_color_profile_slot_r( altnum, 3 );
			var altg = get_color_profile_slot_g( altnum, 3 ) + (hylalala_s*2);
			var altb = get_color_profile_slot_b( altnum, 3 ) + hylalala_s;
			
			set_character_color_slot( 3, altr, altg, altb );
			set_character_color_shading( 3, 1+(hylalala_s/25) );
			
			//30, 153, 100
			var altr = get_color_profile_slot_r( altnum, 7 );
			var altg = get_color_profile_slot_g( altnum, 7 ) + hylalala_s;
			var altb = get_color_profile_slot_b( altnum, 7 ) - round(hylalala_s/2);
		
			set_character_color_slot( 7, altr, altg, altb );
			
			var altr = 30
			var altg = 153 + hylalala_s;
			var altb = 100 - round(hylalala_s/2);
		
			set_character_color_slot( 7, altr, altg, altb );
		
	}
}












/*
 
There are two pictures of a
door.
 
In the first picture, the door is
closed.
 
In the second picture, taken
later, the door is open.
 
Nobody opened the door.
 
The door did not open itself.
 
The door, in fact, did not open at
all.
 
What happened?

*/