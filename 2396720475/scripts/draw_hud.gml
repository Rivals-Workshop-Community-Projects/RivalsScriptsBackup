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
	if (get_player_color(player) != 14){
		draw_sprite_ext(sprite_get("needle_hud"), 0, temp_x + 120, temp_y - 12, 1, 1, 0, c_white, 1);
	}
	else {
		draw_sprite_ext(sprite_get("slime_needle_hud"), 0, temp_x + 120, temp_y - 12, 1, 1, 0, c_white, 1);	
	}
}
else {
	if (get_player_color(player) != 14){
		draw_sprite_ext(sprite_get("needle_hud"), 1, temp_x + 120, temp_y - 12, 1, 1, 0, c_white, 1);
	}
	else {
		draw_sprite_ext(sprite_get("slime_needle_hud"), 1, temp_x + 120, temp_y - 12, 1, 1, 0, c_white, 1);
	}
}

/*
// Draws the battery on the HUD
draw_sprite_ext(sprite_get("battery"), 0, temp_x + 160, temp_y - 12, 1, 1, 0, c_white, 1);
if ("chargeshot" in self){
	draw_sprite_part(sprite_get("battery"), 3, 0, 0, chargeshot, 16, temp_x + 160, temp_y - 12);
}

// Draws the current Grab Meter
if ("GrappleMode" in self){
	draw_sprite_ext(sprite_get("meter"), 4, temp_x + 40, temp_y - 2, 1, 1, 0, c_white, 1);

	draw_sprite_part(sprite_get("meter"), GrappleMode, 0, 0, LoveMeter[GrappleMode]/2, 8, temp_x + 10, temp_y - 6);
	if (GrappleMode == 0){
		draw_sprite_ext(sprite_get("gifts"), GrappleMode, temp_x + 4, temp_y - 12, 1, 1, 0, c_white, 1);
	}
	else{
		draw_sprite_ext(sprite_get("gifts"), GrappleMode, temp_x + 4, temp_y - 8, 1, 1, 0, c_white, 1);			
	}
	draw_debug_text(temp_x + 12, temp_y - 8, string(LoveMeter[GrappleMode]));
}
*/

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
