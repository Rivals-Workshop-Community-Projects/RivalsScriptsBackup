if (my_hitboxID.attack == AT_DAIR && window < 3 && my_hitboxID.hbox_num == 1) {
	window = 3;
    window_timer = 0;
    old_vsp = -7;
	sound_play(sound_get("sfx_bounce"))
	destroy_hitboxes();
}

if (my_hitboxID.attack == AT_UAIR){
	if (window == 4){
		window = 5
		window_timer = 0
		destroy_hitboxes();
		spawn_hit_fx( hit_player_obj.x * hit_player_obj.spr_dir, hit_player_obj.y - 40, 302 );
	}
}

if (my_hitboxID.attack == AT_NSPECIAL && window == 2){
	hsp = 4
	old_hsp = hsp * spr_dir
	window = 4
	move_cooldown [AT_NSPECIAL] = 60
}

if (my_hitboxID.attack == AT_FSPECIAL){
	window = 3
	window_timer = 3
	destroy_hitboxes();
	if (my_hitboxID.hbox_num == 2){ //Strong Hitbox
		x = x + 18 * spr_dir
		spawn_hit_fx( hit_player_obj.x - 14 * hit_player_obj.spr_dir, hit_player_obj.y - 30, 304 );
		//set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED, -10);
		lightspeed_hitwithstronghitbox = true
	} else if (my_hitboxID.hbox_num == 3){
		lightspeed_hitwithstronghitbox = false
		x = x + 10 * spr_dir
		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED, -6.8);
	}
}