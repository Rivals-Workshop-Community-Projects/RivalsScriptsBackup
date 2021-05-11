//
//if dt_fx > 21{
//	dt_fx = 0;
//}
if dance_timer > 60{
	with (other_player_id)
	{
		shader_start();
		draw_sprite(sprite_get("nspecial_fx2"), other.id.dt_fx/7, other.x, other.y+32);
		shader_end();
	}
	dt_fx += 1;
}