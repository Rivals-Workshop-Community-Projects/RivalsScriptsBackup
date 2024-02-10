//init_shader.gml
//we use this script for color shenanigans, when we want to mess with the colors in the colors.gml script a bit beyond what we can do normally
//this includes messing with the shading contrast, applying transperency etc.

if(get_player_color(player) == 8){
	var i = 0;
	repeat(8){
		if(i == 0){
			set_character_color_shading(i, 0.7);
		}else { set_character_color_shading(i, 0); }
		
		i++;
	}
}