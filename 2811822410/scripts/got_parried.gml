//

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.type == 2) {
	my_hitboxID.hitbox_timer = 0;	
	my_hitboxID.disc_hit_player = self;	
	//my_hitboxID.player = hit_player_obj.player;	
	print("Scanned")
	//scanned
}
my_hitboxID.scanned = false;

if instance_exists(fstrong_one) {
	fstrong_one.state = "die";
	fstrong_one.state_timer = 0;
	sound_play(asset_get("sfx_bubblepop"));
}

if instance_exists(fstrong_two) {
	fstrong_two.state = "die";
	fstrong_two.state_timer = 0;
	sound_play(asset_get("sfx_bubblepop"));
}