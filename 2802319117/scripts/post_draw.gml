if (keymarked == 1 and instance_exists(phantom)) //will draw icons for when the opponent is keymarked
{
	draw_sprite_ext(sprite_get("player_icon"), 0, phantom.x - 10, phantom.y - 90 - char_height, 1, 1, 0, get_player_hud_color(player), 1);
	draw_sprite(sprite_get("key_icon"), 0, phantom.x - 6, phantom.y - 120 - char_height);	
}