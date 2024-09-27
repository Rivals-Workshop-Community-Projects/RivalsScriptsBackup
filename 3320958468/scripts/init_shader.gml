//	init_shader

//	css related
var alt_cur = get_player_color("alt_fix" in self? alt_fix: player);

//	adjusting shading and stuff

if (get_player_color( player ) == 0) 
{
	set_character_color_slot(3, 254, 254, 254, 1);		//	Gloves
}

if (get_player_color( player ) == 1) 
{		
	set_character_color_shading(3, 0.65);				//	Gloves
	set_character_color_shading(4, 0.5);				//	Hoodie
}

if (get_player_color( player ) == 3) 
{		
	set_character_color_shading(3, 0.5);				//	Gloves
	set_character_color_shading(4, 0.5);				//	Hoodie
}

if (get_player_color( player ) == 8) 
{		
	set_character_color_shading(5, 0.5);				//	BeanBody
}

if (get_player_color( player ) == 10) 
{		
	set_character_color_shading(4, 0.5);				//	Hoodie
	set_character_color_shading(5, 0.5);				//	BeanBody
}

if (get_player_color( player ) == 13) 
{		
	set_character_color_shading(0, 0.5);				//	Hair
	set_character_color_shading(4, 0.5);				//	Hoodie
}

if (get_player_color( player ) == 17) 
{		
	set_character_color_shading(0, 0.5);				//	Hair
	set_character_color_shading(5, 0.5);				//	BeanBody
}

if (get_player_color( player ) == 21) 
{		
	set_character_color_shading(0, 0.5);				//	Hair
	set_character_color_shading(3, 0.5);				//	Gloves
}

if (get_player_color( player ) == 31) 
{		
	set_character_color_shading(0, 0.5);				//	Hair
	set_character_color_shading(3, 0.5);				//	Gloves
	set_character_color_shading(4, 0.5);				//	Hoodie
}

if (get_player_color( player ) == 5 || get_player_color( player ) == 11) 
{		
	set_character_color_shading(4, 0.5);				//	Hoodie
}

if (get_player_color( player ) == 9 || get_player_color( player ) == 19) 
{		
	set_character_color_shading(0, 0.5);				//	Hair
}
