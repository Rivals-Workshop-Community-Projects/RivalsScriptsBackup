//referencely stolen from the documents

if (get_player_color( player ) == 7) { //early
for (var slot_num = 0; slot_num < 8; slot_num++) {
set_character_color_shading( slot_num, 0 );
}
}

if (get_player_color( player ) == 0) { //def
	set_character_color_slot( 2, 255, 167, 0)
	set_article_color_slot( 2, 255, 167, 0)
	set_character_color_slot( 5, 255, 167, 0)
	set_article_color_slot( 5, 255, 167, 0)
	set_character_color_slot( 7, 255, 167, 0)
	set_article_color_slot( 7, 255, 167, 0)
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