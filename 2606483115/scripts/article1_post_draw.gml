//Geyser draw

//Lifetime meter
if(state == 2){
	var lifetime_percentage = 1 - (lifetime / player_id.geyser_duration)
	var alpha_fade = clamp(state_timer / 12, 0, 1)
	draw_sprite_ext(sprite_get("geyser_timer"), floor(36 * lifetime_percentage), x, y + (sprite_height / 2) + 8, 1, 1, 0, c_white, alpha_fade)
}