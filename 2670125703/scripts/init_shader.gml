//	init_shader

//	adjusting shading and stuff

if (get_player_color( player ) == 6) 
{
    set_character_color_slot(0, 37, 37, 55, 1);
	
	set_character_color_shading(0, 0.95);
}

if (get_player_color( player ) == 10) 
{
    set_character_color_slot(0, 15, 1, 55, 1);
	
	set_character_color_shading(0, 0.50);
}

if (get_player_color( player ) == 27) 
{
    set_character_color_slot(0, 63, 39, 53, 1);
	
	set_character_color_shading(0, 0.75);
}

if (get_player_color( player ) == 30) 
{
    set_character_color_slot(0, 48, 49, 89, 1);
	
	set_character_color_shading(0, 0.75);
}