// draw_hud.gml
// Draws images on top of the Player's HUD
// use temp_x and temp_y to refer to the player's specific HUD position

shader_start();

if (move_cooldown[AT_DSPECIAL] == 0 && move_cooldown[AT_DSPECIAL_AIR] == 0){
	draw_sprite( sprite_get("HUD_Icon"), 0, temp_x + 186, temp_y - 18)
}
else {
	draw_sprite( sprite_get("HUD_Icon"), 1, temp_x + 186, temp_y - 18)
}
if ("mim_wisp" in self && mim_wisp != noone && instance_exists(mim_wisp)){
	draw_sprite( sprite_get("HUD_Icon"), 1, temp_x + 186, temp_y - 18)

}

shader_end();