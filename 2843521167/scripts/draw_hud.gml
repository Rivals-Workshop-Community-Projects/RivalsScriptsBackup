//draw_hud.gml
draw_sprite(sprite_get("hudcd_icon"), 0, temp_x+156-8, temp_y+16);

if (move_cooldown[AT_NSPECIAL] = 0)
{
	draw_sprite(sprite_get("hud_icon"), 0, temp_x+156-8, temp_y+16)
}

draw_sprite(sprite_get("hudcd2_icon"), 0, temp_x+184-8, temp_y+16);

if (move_cooldown[AT_DSPECIAL] = 0)
{
	draw_sprite(sprite_get("hud2_icon"), 0, temp_x+184-8, temp_y+16)
}
