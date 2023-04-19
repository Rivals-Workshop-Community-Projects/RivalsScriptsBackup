//referencely stolen from the documents

if (get_player_color( player ) == 7) { //early
for (var slot_num = 0; slot_num < 8; slot_num++) {
set_character_color_shading( slot_num, 0 );
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


if (variable_instance_exists(id, "extra_col")){
if (extra_col==1){//owen
// shade, r, g, b, alpha
set_character_color_slot(0, 89, 80, 88 ); 
set_character_color_slot(1, 245, 133, 238 );
set_character_color_slot(2, 255, 212, 241 );
set_character_color_slot(3, 150, 54, 47 );
set_character_color_slot(4, 255, 194, 235 );
set_character_color_slot(5, 240, 113, 233 );
set_character_color_slot(6, 10, 6, 10 );
set_character_color_slot(7, 184, 121, 172 );
}
if (extra_col==2){//obligatory hyuponia color
// shade, r, g, b, alpha
set_character_color_slot(0, 137, 116, 156 );
set_character_color_slot(1, 52, 194, 134 ); 
set_character_color_slot(2, 52, 99, 80 ); 
set_character_color_slot(3, 68, 255, 176 );
set_character_color_slot(4, 52, 194, 134 );
set_character_color_slot(5, 96, 70, 120 );
set_character_color_slot(6, 52, 194, 134 );
set_character_color_slot(7, 137, 116, 156 );
}
if (extra_col==3){//kingdoge
set_character_color_slot(0, 76, 212, 203 ); //pink
set_character_color_slot(1, 230, 85, 216 ); //hair
set_character_color_slot(2, 255, 227, 196 ); //skin
set_character_color_slot(3, 255, 0, 170 ); //red
set_character_color_slot(4, 235, 78, 183 ); //sleeves
set_character_color_slot(5, 60, 230, 217 ); //dress
set_character_color_slot(6, 66, 37, 57 ); //eyes
set_character_color_slot(7, 235, 140, 178 ); //blush
}
if (extra_col==4){//jerome :)
set_character_color_slot(0, 179, 179, 179 ); //pink
set_character_color_slot(1, 77, 135, 148 ); //hair
set_character_color_slot(2, 255, 233, 207 ); //skin
set_character_color_slot(3, 26, 40, 56 ); //red
set_character_color_slot(4, 32, 57, 105 ); //sleeves
set_character_color_slot(5, 156, 145, 128 ); //dress
set_character_color_slot(6, 0, 55, 115 ); //eyes
set_character_color_slot(7, 255, 140, 161 ); //blush
}
if (extra_col==5){// spider
set_character_color_slot(0, 206, 199, 212 ); //pink
set_character_color_slot(1, 0, 114, 254 ); //hair
set_character_color_slot(2, 210, 131, 109 ); //skin
set_character_color_slot(3, 255, 166, 253 ); //red
set_character_color_slot(4, 255, 166, 253 ); //sleeves
set_character_color_slot(5, 237, 237, 252 ); //dress
set_character_color_slot(6, 122, 162, 255 ); //eyes
set_character_color_slot(7, 255, 199, 254 ); //blush
}
}


