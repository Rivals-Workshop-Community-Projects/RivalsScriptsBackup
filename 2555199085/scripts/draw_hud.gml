//draw_sprite( sprite_get( "sickGains" ), 3, temp_x + i * 22 + 5 , temp_y - 2);
//draw_debug_text( temp_x + 0, temp_y - 142, string(debugText[4]) )

if plantCooldown != 0 { 
draw_sprite_ext( sprite_get("plantSeedCool"), ceil(11 - 11 * (plantCooldown / plantMaxCooldown)) - 1, temp_x + 168, temp_y - 12, 1, 1, 0, c_white, 1)
} else {
draw_sprite_ext( sprite_get("plantSeedCool"), 11, temp_x + 168, temp_y - 12, 1, 1, 0, c_white, 1)
}
draw_debug_text(temp_x + 173, temp_y - 24, string(plantCooldown) )


for (i = 0; i < 3; i++) {
	if plantSun > i {
		draw_sprite_ext( sprite_get("plantSunHud"), 1, temp_x + 138 - (i * 30), temp_y - 18, 2, 2, 0, c_white, 1)
	} else {
		draw_sprite_ext( sprite_get("plantSunHud"), 0, temp_x + 138 - (i * 30), temp_y - 18, 2, 2, 0, c_white, 1)
	}
}



