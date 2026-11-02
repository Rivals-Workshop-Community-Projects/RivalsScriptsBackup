if results_timer == 5
{
	sound_play(sound_get("sfx_explosion"),0,0);
}
if results_timer == clamp(results_timer, 1, 50) 
{
	draw_sprite_ext(sprite_get("realistic_explosion"), (results_timer)/3, 110, 450, 8, 8, 0, c_white, 1);
}