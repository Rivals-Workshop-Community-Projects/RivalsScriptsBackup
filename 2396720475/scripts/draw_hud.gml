// draw_hud.gml
// Draws images on top of the Player's HUD
// use temp_x and temp_y to refer to the player's specific HUD position

//draw_set_alpha(.5);

if (move_cooldown[AT_DSPECIAL] == 0){
	draw_sprite_ext(sprite_get("box_hud"), 0, temp_x + 180, temp_y - 12, 1, 1, 0, c_white, 1);
}
else {
	draw_sprite_ext(sprite_get("box_hud"), 1, temp_x + 180, temp_y - 12, 1, 1, 0, c_white, 1);
}

if (move_cooldown[AT_USPECIAL] == 0){

	if ("SecretColor" in self && SecretColor == 4){
		draw_sprite_ext(sprite_get("slime_needle_hud"), 0, temp_x + 120, temp_y - 12, 1, 1, 0, c_white, 1);	
	}
	else {
		draw_sprite_ext(sprite_get("needle_hud"), 0, temp_x + 120, temp_y - 12, 1, 1, 0, c_white, 1);
	}

}
else {
	if ("SecretColor" in self && SecretColor == 4){
		draw_sprite_ext(sprite_get("slime_needle_hud"), 1, temp_x + 120, temp_y - 12, 1, 1, 0, c_white, 1);
	}
	else {
		draw_sprite_ext(sprite_get("needle_hud"), 1, temp_x + 120, temp_y - 12, 1, 1, 0, c_white, 1);
	}
}


// This is just some test code I wanna leave in
/*

with (oPlayer){
//	draw_debug_text(other.temp_x - 10, other.temp_y - 60, "Superamor: " +  string(super_armor);
	draw_debug_text(other.temp_x - 10, other.temp_y - 60, "Superamor: " +  string(hitstop));
}

if (get_training_cpu_action() != CPU_FIGHT){
	draw_debug_text( 32, 16, "Press Taunt to gain 10 points of meter");
}
//	draw_debug_text( 32, 136, "Soft Armor: " + string(soft_armor));
	draw_debug_text( 32, 136, "Dthrow Timer: " + string(dthrowCheck));

*/

/*
// Testing Display Stuff
draw_debug_text(100, 40, "xPos: " + string(x));
draw_debug_text(100, 60, "yPos: " + string(y));


if ("needleplatform_solid" in self && instance_exists(needleplatform_solid)){
	draw_debug_text(100, 100, "xPos: " + string(needleplatform_solid.x));
	draw_debug_text(100, 120, "yPos: " + string(needleplatform_solid.y));
}

if ("angle2" in self){
	draw_debug_text(100, 160, "Angle: " + string(angle2));
}
*/
