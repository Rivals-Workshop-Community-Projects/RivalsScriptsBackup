//draw_hud

var barcolor = c_white; // color of the greater dog charge bar
var cooldowncolor = c_white; // color of the greater dog charge bar
var jabcolor = c_white; // color of the jab icon 
var bombcolor = c_white; // color of the bomb icon 
var lasercolor = c_white; // color of the laser icon 
var artifactcolor = c_white; // color of the artifact icon

//Determine colors/shading for various HUD elements
if (move_cooldown[AT_FSTRONG] >= 1)
	barcolor = c_silver;
else
	barcolor = c_yellow;

if (greaterdog_object != 0)
	cooldowncolor = c_yellow;
else
	cooldowncolor = c_gray;

if(move_cooldown[AT_JAB] >= 1)
	jabcolor = c_dkgray;
else
	jabcolor = c_white;

if (move_cooldown[AT_DAIR] >= 1)
	lasercolor = c_dkgray;
else
	lasercolor = c_white;

if (move_cooldown[AT_UAIR] >= 1)
	bombcolor = c_dkgray;
else
	bombcolor = c_white;

if (move_cooldown[AT_DSPECIAL] >= 1)
	artifactcolor = c_dkgray;
else
	artifactcolor = c_white;

//Draw outline for Greater Dog charge meter
draw_rectangle_color(
	temp_x-2, //X position 1
	temp_y - 20, //Y position 1
	temp_x + 102, //X position 2
	temp_y - 4, //Y position 2
	c_black,
	c_black,
	c_black,
	c_black,
	false); //outline


//Draw Greater Dog cooldown meter
draw_rectangle_color(
	temp_x, //X position 1
	temp_y - 18, //Y position 1
	temp_x + (0 + clamp( (greaterdog_timer/10), 0, 100) ), //X position 2
	temp_y - 6, //Y position 2
	cooldowncolor,
	cooldowncolor,
	cooldowncolor,
	cooldowncolor,
	false); //outline


//Draw the actual Greater Dog charge meter
if (greaterdog_timer <= 1)
{
	draw_rectangle_color(
		temp_x, //X position 1
		temp_y - 18, //Y position 1
		temp_x + (100 - clamp( (move_cooldown[AT_FSTRONG]/15), 0, 100) ), //X position 2
		temp_y - 6, //Y position 2
		barcolor,
		barcolor,
		barcolor,
		barcolor,
		false); //outline
}


//Draw the other HUD icons
draw_sprite_ext(
	sprite_get("hud_jab"), // hud icon
	0, // subimage
	temp_x + 130, // X position
	temp_y - 24, // Y position
	1, // X scale
	1, // Y scale
	0, // Rotation
	jabcolor, // Color
	1); // Alpha
	
draw_sprite_ext(
	sprite_get("hud_bomb"), // hud icon
	0, // subimage
	temp_x + 150, // X position
	temp_y - 24, // Y position
	1, // X scale
	1, // Y scale
	0, // Rotation
	bombcolor, // Color
	1); // Alpha
	
draw_sprite_ext(
	sprite_get("hud_laser"), // hud icon
	0, // subimage
	temp_x + 170, // X position
	temp_y - 24, // Y position
	1, // X scale
	1, // Y scale
	0, // Rotation
	lasercolor, // Color
	1); // Alpha
	
draw_sprite_ext(
	sprite_get("hud_artifact"), // hud icon
	0, // subimage
	temp_x + 190, // X position
	temp_y - 24, // Y position
	1, // X scale
	1, // Y scale
	0, // Rotation
	artifactcolor, // Color
	1); // Alpha