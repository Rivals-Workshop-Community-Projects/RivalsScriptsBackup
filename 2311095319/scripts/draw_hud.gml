//draw_hud.gml

if (hasfirebrand == true){
	draw_sprite(sprite_get("firehud"), floor(1), temp_x + 26, temp_y);
} else if (hasfirebrand == false){
	draw_sprite(sprite_get("fireball"), floor(1), temp_x + 26, temp_y + 999999999999999999999999999999);
}

user_event(11);