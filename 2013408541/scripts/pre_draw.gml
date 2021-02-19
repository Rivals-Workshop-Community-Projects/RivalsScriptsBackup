if ("waryowl" in self && waryowl >= 500)
{
	shader_start();
    draw_sprite ( sprite_get("dspecwind1"), get_gameplay_time() * 0.5, x, y );
	shader_end();
}