bake_time = -bake_cooldown;

if bake_mode >= 1 {
		bake_time = -bake_cooldown
		spawn_hit_fx(x, y, hfx[2])
		sound_play(asset_get("sfx_forsburn_spew2"))
}
bake_mode = 0;
hit_player_obj.amarelle_effect[0] = 0;
hit_player_obj.amarelle_effect[1] = 0;
hit_player_obj.amarelle_timer = 0;
outline_color = [0, 0, 0]
init_shader();

if my_hitboxID.attack == AT_FSPECIAL {
	window = 9;
	window_timer = 0;
}