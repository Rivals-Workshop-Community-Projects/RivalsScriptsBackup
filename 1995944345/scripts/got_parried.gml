if hit_player_obj.mycolich_player == player {

hit_player_obj.mycolich_sporetime = min(1, hit_player_obj.mycolich_sporetime)

}
if my_hitboxID.attack == AT_NSPECIAL_2 {
	selfstab = 0;
	my_hitboxID.destroyed = 1;
}

if my_hitboxID.attack == AT_FSPECIAL {
	
	var fx = spawn_hit_fx(x+floor(fspecial_nodex)*spr_dir, y+floor(fspecial_nodey), fx_sprites[AT_FSPECIAL])
	fx.image_xscale = spr_dir
	fx.depth = hit_player_obj.depth-1
	sound_play(asset_get("sfx_may_whip2"));

	hsp -= spr_dir*8
}