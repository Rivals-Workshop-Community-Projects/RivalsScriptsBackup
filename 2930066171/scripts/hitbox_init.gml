if (attack == AT_NSPECIAL && hbox_num == 1 && orig_player == player) {
	chad_dumb = 1;
	active = true;
	hitbox_spr = mask_index;
	unactive_grav = .25
	player_id.nspecial_projectile_out = self;
	dumb_margin  = player_id.dumb_margin; 
	dumb_hit = false;
	if ((place_meeting(x, y - vsp, asset_get("par_block")) || place_meeting(x, y - vsp, asset_get("par_jumpthrough"))) && active) {
		grounds = 0;
		hsp = 0;
		vsp = -4;
		grav = unactive_grav;
		hitbox_timer = 0;
		active = false;
		sound_play(asset_get("sfx_tow_anchor_land"));
		spawn_hit_fx(x, y, 301);
	}
}