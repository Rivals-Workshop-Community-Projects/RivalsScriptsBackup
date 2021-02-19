// temp

with obj_article1 if player_id == other{
	var hfx = spawn_hit_fx(x, y, other.vfx_legion_afterimage);
	hfx.spr_dir = spr_dir;
	sound_play(other.sfx_astral_chain_legion_dismiss);
	instance_destroy(self);
}