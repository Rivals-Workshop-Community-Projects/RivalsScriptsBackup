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
if (extra_col==1){
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
if (extra_col==2){
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
}