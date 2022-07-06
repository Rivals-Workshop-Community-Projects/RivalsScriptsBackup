if ("other_player_id" in self && instance_exists(other_player_id) && !get_synced_var(other_player_id.player) && "boneMark" in other_player_id && draw_indicator && instance_exists(other_player_id.boneMark) && other_player_id.boneMark == id)
{
	with (other_player_id.boneObj) if (state == 1)
	{
		with (other.other_player_id) shader_start();
		draw_sprite_ext(sprite_get("boneMark"), 0, other.x, floor(other.y-other.char_height/2), 2*other.spr_dir, 2, image_angle, c_white, 1);
		shader_end();
	}
}