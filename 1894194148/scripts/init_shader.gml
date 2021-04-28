//referencely stolen from the documents
if (get_player_color( player ) == 7) {
for (var slot_num = 0; slot_num < 8; slot_num++) {
set_character_color_shading( slot_num, 0 );
}
}

//3 is sword

if (get_player_color( player ) == 6) { //jis
for (var slot_num = 0; slot_num < 8; slot_num++) {
if (slot_num==3){//sword
set_character_color_shading( slot_num, -1 );//1.5
}else if (slot_num==2){//skin
set_character_color_shading( slot_num, 0.3 );//0.5//0.7//0.3
}else if (slot_num==4){//dark purple
set_character_color_shading( slot_num, -0.8 );//-1//-0.5
}else{
set_character_color_shading( slot_num, -6 );
}

}
}

//sword area
//3 is sword
if (get_player_color( player ) == 9) {
set_character_color_shading( 3, 0 );
}
if (get_player_color( player ) == 10||
	get_player_color( player ) == 11||
	get_player_color( player ) == 3||
	get_player_color( player ) == 8||
	get_player_color( player ) == 3||
	get_player_color( player ) == 13||
	get_player_color( player ) == 16||
	get_player_color( player ) == 17||
	get_player_color( player ) == 19) {
set_character_color_shading( 3, -1 );
}
if (get_player_color( player ) == 16) {
set_character_color_shading( 1, -1 );
}
if (get_player_color( player ) == 17) {
set_character_color_shading( 1, -1 );
}
if (get_player_color( player ) == 12) {
set_character_color_shading( 3, 0.8 );
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