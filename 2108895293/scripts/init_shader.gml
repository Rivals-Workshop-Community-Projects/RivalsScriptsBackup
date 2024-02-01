//referencely stolen from the documents

if (get_player_color( player ) == 7) { //early
for (var slot_num = 0; slot_num < 8; slot_num++) {
set_character_color_shading( slot_num, 0 );
}
}

if (get_player_color( player ) == 12) { //(old) blue
set_character_color_shading( 3, 2 );
set_character_color_shading( 0, 1.3 );
}
if (get_player_color( player ) == 1) { //(new) blue
set_character_color_shading( 3, 1.6 );
set_character_color_shading( 0, 1.6 );
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
if (get_player_color( player ) == 13) { //hallow
set_character_color_shading( 0, 1.6 );
}
if (get_player_color( player ) == 14) { //ki
set_character_color_shading( 3, 1.6 );
set_character_color_shading( 0, 1.6 );
}
if (get_player_color( player ) == 16) { //lilliana
set_character_color_shading( 0, 1.6 );
}
if (get_player_color( player ) == 20) { //mix
set_character_color_shading( 1, 0.6 );
set_character_color_shading( 3, 0.6 );
set_character_color_shading( 0, 1.4 );
}


if (variable_instance_exists(id, "extra_col")){
if (extra_col==1){//mirage
// shade, r, g, b, alpha
set_character_color_slot( 0, 97, 70, 62 );
set_character_color_slot( 1, 255, 235, 222 );
set_character_color_slot( 2, 255, 200, 0 );
set_character_color_slot( 3, 255, 221, 135 );
set_character_color_slot( 4, 43, 255, 174 );
set_character_color_slot( 5, 148, 255, 180 );
set_character_color_slot( 6, 71, 227, 144 );
set_character_color_slot( 7, 186, 118, 39 );

set_character_color_shading( 0, 1 );
set_character_color_shading( 1, 1 );
set_character_color_shading( 2, 1 );
set_character_color_shading( 3, 1 );

set_article_color_slot( 2, 255, 200, 0 );
set_article_color_slot( 5, 148, 255, 180 );
set_article_color_slot( 6, 71, 227, 144 );
set_article_color_slot( 7, 186, 118, 39 );
}
if (extra_col==2){//
// shade, r, g, b, alpha
set_character_color_slot( 0, 56, 102, 58 );
set_character_color_slot( 1, 0, 0, 0 );
set_character_color_slot( 2, 81, 219, 120 );
set_character_color_slot( 3, 81, 219, 120 );
set_character_color_slot( 4, 0, 0, 0 );
set_character_color_slot( 5, 255, 0, 0 );
set_character_color_slot( 6, 255, 0, 0 );
set_character_color_slot( 7, 61, 189, 100 );

set_character_color_shading( 0, 1 );
set_character_color_shading( 1, 1 );
set_character_color_shading( 2, 1 );
set_character_color_shading( 3, 1 );

set_article_color_slot( 2, 81, 219, 120 );
set_article_color_slot( 5, 255, 0, 0 );
set_article_color_slot( 6, 255, 0, 0 );
set_article_color_slot( 7, 61, 189, 100 );
}
if (extra_col==3){//margret
set_character_color_slot( 0, 120, 135, 120 );
set_character_color_slot( 1, 255, 234, 214 );
set_character_color_slot( 2, 255, 191, 0 );
set_character_color_slot( 3, 235, 153, 221 );
set_character_color_slot( 4, 255, 179, 244 );
set_character_color_slot( 5, 255, 231, 251 );
set_character_color_slot( 6, 255, 179, 215 );
set_character_color_slot( 7, 186, 118, 39 );

set_character_color_shading( 0, 1 );
set_character_color_shading( 1, 1 );
set_character_color_shading( 2, 1 );
set_character_color_shading( 3, 1.5 );

set_article_color_slot( 2, 255, 191, 0 );
set_article_color_slot( 5, 255, 231, 251 );
set_article_color_slot( 6, 255, 179, 215 );
set_article_color_slot( 7, 186, 118, 39 );
}
if (extra_col==4){//arry
set_character_color_slot( 0, 39, 48, 39 );
set_character_color_slot( 1, 255, 234, 214 );
set_character_color_slot( 2, 227, 255, 227 );
set_character_color_slot( 3, 230, 255, 239 );
set_character_color_slot( 4, 255, 173, 242 );
set_character_color_slot( 5, 153, 255, 0 );
set_character_color_slot( 6, 208, 255, 38 );
set_character_color_slot( 7, 160, 191, 160 );

set_character_color_shading( 0, 0.5 );
set_character_color_shading( 1, 1 );
set_character_color_shading( 2, 1 );
set_character_color_shading( 3, 1.5 );

set_article_color_slot( 2, 227, 255, 227 );
set_article_color_slot( 5, 153, 255, 0 );
set_article_color_slot( 6, 208, 255, 38 );
set_article_color_slot( 7, 160, 191, 160 );
}
if (extra_col==5){//cookie
/*
set_character_color_slot( 0, 54, 171, 255 ); //blue
set_character_color_slot( 1, 255, 235, 214 ); //skin
set_character_color_slot( 2, 52, 26, 145 ); //yellow
set_character_color_slot( 3, 255, 238, 105 ); //orange
set_character_color_slot( 4, 255, 153, 192 ); //blush
set_character_color_slot( 5, 140, 255, 196 ); //light
set_character_color_slot( 6, 68, 255, 124 ); //ori_replace
set_character_color_slot( 7, 19, 19, 54 ); //yellow.2

set_character_color_shading( 0, 1.7 );
set_character_color_shading( 1, 1 );
set_character_color_shading( 2, 1 );
set_character_color_shading( 3, 1.5 );

set_article_color_slot( 2, 52, 26, 145 ); //yellow
set_article_color_slot( 5, 140, 255, 196 ); //light
set_article_color_slot( 6, 68, 255, 124 ); //ori_replace
set_article_color_slot( 7, 34, 35, 84 ); //yellow.2
*/
set_character_color_slot( 0, 69, 69, 69 ); //blue
set_character_color_slot( 1, 254, 227, 218 ); //skin
set_character_color_slot( 2, 176, 11, 105 ); //yellow
set_character_color_slot( 3, 191, 116, 59 ); //orange
set_character_color_slot( 4, 255, 128, 170 ); //blush
set_character_color_slot( 5, 204, 13, 122 ); //light
set_character_color_slot( 6, 237, 55, 159 ); //ori_replace
set_character_color_slot( 7, 128, 4, 75 ); //yellow.2

set_character_color_shading( 0, 0.8 );
set_character_color_shading( 1, 1 );
set_character_color_shading( 2, 1 );
set_character_color_shading( 3, 1.2 );

set_article_color_slot( 2, 176, 11, 105 ); //yellow
set_article_color_slot( 5, 204, 13, 122 ); //light
set_article_color_slot( 6, 237, 55, 159 ); //ori_replace
set_article_color_slot( 7, 128, 4, 75 ); //yellow.2
}
if (extra_col==6){//lightmagic
set_character_color_slot( 0, 194, 134, 43, 0.6 ); //blue
set_character_color_slot( 1, 194, 134, 43, 0.6 ); //skin
set_character_color_slot( 2, 194, 134, 43, 0.6 ); //yellow
set_character_color_slot( 3, 194, 134, 43, 0.6 ); //orange
set_character_color_slot( 4, 194, 134, 43, 0.6 ); //blush
set_character_color_slot( 5, 194, 134, 43, 1 ); //light
set_character_color_slot( 6, 194, 134, 43, 1 ); //ori_replace
set_character_color_slot( 7, 194, 134, 43, 0.6 ); //yellow.2

set_character_color_shading( 0, 0 );
set_character_color_shading( 1, 0 );
set_character_color_shading( 2, 0 );
set_character_color_shading( 3, 0 );
set_character_color_shading( 4, 0 );
set_character_color_shading( 5, 0 );
set_character_color_shading( 6, 0 );
set_character_color_shading( 7, 0 );

set_article_color_slot( 2, 255, 214, 0 ); //yellow
set_article_color_slot( 5, 255, 214, 0 ); //light
set_article_color_slot( 6, 255, 214, 0 ); //ori_replace
set_article_color_slot( 7, 255, 214, 0 ); //yellow.2
}

if (extra_col==7){//rankedgold alt1
set_character_color_slot( 0, 232, 235, 255 ); //blue
set_character_color_slot( 1, 255, 239, 232 ); //skin
set_character_color_slot( 2, 255, 220, 23 ); //yellow
set_character_color_slot( 3, 255, 122, 0 ); //orange
set_character_color_slot( 4, 233, 126, 139 ); //blush
set_character_color_slot( 5, 255, 255, 145 ); //light
set_character_color_slot( 6, 255, 166, 23 ); //ori_replace
set_character_color_slot( 7, 230, 138, 18 ); //yellow.2

set_character_color_shading( 0, 1 );
set_character_color_shading( 1, 1 );
set_character_color_shading( 2, 1 );
set_character_color_shading( 3, 1 );

set_article_color_slot( 2, 255, 220, 23 ); //yellow
set_article_color_slot( 5, 255, 255, 145 ); //light
set_article_color_slot( 6, 255, 166, 23 ); //ori_replace
set_article_color_slot( 7, 230, 138, 18 ); //yellow.2
}
if (extra_col==8){//rankedgold alt2
set_character_color_slot( 0, 232, 235, 255 ); //blue
set_character_color_slot( 1, 255, 239, 232 ); //skin
set_character_color_slot( 2, 160, 151, 204 ); //yellow
set_character_color_slot( 3, 160, 151, 204 ); //orange
set_character_color_slot( 4, 160, 151, 204 ); //blush
set_character_color_slot( 5, 190, 188, 204 ); //light
set_character_color_slot( 6, 255, 166, 23 ); //ori_replace
set_character_color_slot( 7, 111, 101, 161 ); //yellow.2

set_character_color_shading( 0, 1 );
set_character_color_shading( 1, 1 );
set_character_color_shading( 2, 1 );
set_character_color_shading( 3, 1 );

set_article_color_slot( 2, 160, 151, 204 ); //yellow
set_article_color_slot( 5, 190, 188, 204 ); //light
set_article_color_slot( 6, 255, 166, 23 ); //ori_replace
set_article_color_slot( 7, 111, 101, 161 ); //yellow.2
}

if (extra_col==9){//arachnid
set_character_color_slot( 0, 49, 60, 84 ); //blue
set_character_color_slot( 1, 155, 112, 81 ); //skin
set_character_color_slot( 2, 109, 45, 61 ); //yellow
set_character_color_slot( 3, 244, 236, 174 ); //orange
set_character_color_slot( 4, 235, 185, 255 ); //blush
set_character_color_slot( 5, 235, 185, 255 ); //light
set_character_color_slot( 6, 235, 185, 255 ); //ori_replace
set_character_color_slot( 7, 77, 16, 70 ); //yellow.2

set_character_color_shading( 0, 1 );
set_character_color_shading( 1, 1 );
set_character_color_shading( 2, 1 );
set_character_color_shading( 3, 1 );

set_article_color_slot( 2, 109, 45, 61 ); //yellow
set_article_color_slot( 5, 235, 185, 255 ); //light
set_article_color_slot( 6, 235, 185, 255 ); //ori_replace
set_article_color_slot( 7, 77, 16, 70 ); //yellow.2
}
if (extra_col==10){//prismatic
set_character_color_slot( 0, 198, 251, 161 ); //blue
set_character_color_slot( 1, 255, 224, 205 ); //skin
set_character_color_slot( 2, 255, 157, 172 ); //yellow
set_character_color_slot( 3, 122, 204, 157 ); //orange
set_character_color_slot( 4, 255, 157, 172 ); //blush
set_character_color_slot( 5, 255, 255, 255 ); //light
set_character_color_slot( 6, 122, 204, 157 ); //ori_replace
set_character_color_slot( 7, 226, 107, 125 ); //yellow.2

set_character_color_shading( 0, 1 );
set_character_color_shading( 1, 1 );
set_character_color_shading( 2, 1 );
set_character_color_shading( 3, 1 );

set_article_color_slot( 2, 255, 157, 172 ); //yellow
set_article_color_slot( 5, 255, 255, 255 ); //light
set_article_color_slot( 6, 122, 204, 157 ); //ori_replace
set_article_color_slot( 7, 226, 107, 125 ); //yellow.2
}
}

/* outdated extra alts...
if (variable_instance_exists(id, "hypal")){
	if (hypal == 1){
		// shade, r, g, b, alpha
		// mirage
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
} outdated extra alts...
*/

if (variable_instance_exists(id, "hylalala")){
	if (get_player_color( player ) == 11){
			//44, 219, 143
			var altnum = get_player_color( player );
			var altr = get_color_profile_slot_r( altnum, 2 ) + (hylalala_s*3);
			var altg = get_color_profile_slot_g( altnum, 2 ) + hylalala_s;
			var altb = get_color_profile_slot_b( altnum, 2 ) + (hylalala_s*2);
			
			set_character_color_slot( 2, altr, altg, altb );
			set_article_color_slot( 5, altr, altg, altb );
			
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
			set_article_color_slot( 7, altr, altg, altb );
			
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