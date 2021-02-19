//init_shader

if (get_player_color(player) == 7) //Undertale Battle UI Color
{
	set_character_color_shading(0,0);
	set_character_color_shading(1,0);
	set_character_color_shading(2,0);
	set_character_color_shading(3,0);
	set_character_color_shading(4,0);
	set_character_color_shading(5,0);
	set_character_color_shading(6,0);
}

if (get_player_color(player) == 8) // Early Access Color
{
	set_character_color_shading(0,0);
	set_character_color_shading(1,0);
	set_character_color_shading(2,0);
	set_character_color_shading(3,0);
	set_character_color_shading(4,0);
	set_character_color_shading(5,0);
	set_character_color_shading(6,0);
}

if (get_player_color(player) == 12) // Champion Skin Color
{
	set_character_color_slot(0, 192, 224, 224, 0.825); //Body
	set_character_color_slot(1, 128, 192, 192, 0.825); //Shading
	
	set_character_color_slot(2, 96, 80, 64, 0.825); //Tongue Light
	set_character_color_slot(3, 48, 32, 24, 0.825); //Tongue Dark
	
	set_character_color_slot(4, 176, 255, 192, 0.825); // Trident, Artifact, Jetpack Accent
	set_character_color_slot(5, 128, 224, 160, 0.975); // Gaster Blaster Beam & Eye
	set_character_color_slot(6, 64, 64, 64, 0.825); // Jetpack Main

}