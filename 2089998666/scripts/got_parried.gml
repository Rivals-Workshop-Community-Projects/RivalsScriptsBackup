//got_parried

if (my_hitboxID.attack == AT_FSPECIAL) {
	if (my_hitboxID.hbox_num == 1) {
		my_hitboxID.eggBounce = 3;
		my_hitboxID.hitbox_timer = 2;
		my_hitboxID.grav = .6;
		my_hitboxID.air_friction = 0;	
		my_hitboxID.hsp = sign(my_hitboxID.x - my_hitboxID.player_id.x) * 12;
		my_hitboxID.vsp = sign(my_hitboxID.y - my_hitboxID.player_id.y) * 10;
	}
	if (my_hitboxID.hbox_num == 2) {
		my_hitboxID.hitbox_timer = 0;
	}
}


if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num <= 10  && bossmode = 1 {
	
	if fparry < 600 {
       fparry += 100
	}
	
	parry_lag = 120
	if bsta < 50 {
		bsta = 0
		set_state (PS_PRATFALL)
	}
	bsta -= 100
	
	if get_gameplay_time() % 2 = 1 {
	sound_play(asset_get("sfx_shovel_hit_heavy2"));
	sound_play(asset_get("sfx_shovel_hit_heavy2"));
	} else {
	sound_play(asset_get("sfx_shovel_hit_heavy1"));	
	sound_play(asset_get("sfx_shovel_hit_heavy1"));	
	}
		spawn_hit_fx (hit_player_obj.x, hit_player_obj.y - 40, 306)
	if spr_dir = 1 {
	spawn_hit_fx (hit_player_obj.x - 50, hit_player_obj.y - 140, bpparry)
	} else {
	spawn_hit_fx (hit_player_obj.x + 50, hit_player_obj.y - 140, bpparry2)	
	}
}

if my_hitboxID.attack != AT_EXTRA_3 && my_hitboxID.attack != AT_FSPECIAL && bossmode = 1 {
	if fparry < 600 {
       fparry += 100
	}
    parry_lag = 120
	bsta -= 100
	

	set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
	set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
	bsta -= 50
	if yosword = 1 {
	create_hitbox( AT_FSPECIAL, 19, x, y - 50);
	yosword = 3	
	}

	spawn_hit_fx (hit_player_obj.x, hit_player_obj.y - 40, 306)
	if get_gameplay_time() % 2 = 1 {
	sound_play(asset_get("sfx_shovel_hit_heavy2"));
	sound_play(asset_get("sfx_shovel_hit_heavy2"));
	} else {
	sound_play(asset_get("sfx_shovel_hit_heavy1"));	
	sound_play(asset_get("sfx_shovel_hit_heavy1"));	
	}
	
	if spr_dir = 1 {
	spawn_hit_fx (hit_player_obj.x - 50, hit_player_obj.y - 200, bpparry)
	} else {
	spawn_hit_fx (hit_player_obj.x + 50, hit_player_obj.y - 200, bpparry2)	
	}
	
}