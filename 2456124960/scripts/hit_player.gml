if (attack == AT_FAIR && false) {
	if (old_vsp > -4) {
		old_vsp = -4;
	}
	if (abs(old_hsp) > 4) {
		//old_hsp *= 0.8;
	}
}

if (my_hitboxID.attack == AT_FAIR) {
	sound_play(asset_get("sfx_icehit_medium1"), false, noone, 0.4);
	sound_play(asset_get("sfx_blow_medium2"), false, noone, 0.6);
}

if (my_hitboxID.attack == AT_FSTRONG) {
	if (my_hitboxID.hbox_num == 1) {
		sound_play(asset_get("sfx_ori_energyhit_medium"), false, noone, 0.6);
	}
	if (my_hitboxID.hbox_num == 2) {
		sound_play(asset_get("sfx_ori_energyhit_medium"), false, noone, 1);
	}
}

if (attack == AT_BAIR && true) {
	sound_play(asset_get("sfx_blow_medium2"), false, noone, 0.6);
	old_hsp /= 2;
	old_hsp += 5 * spr_dir;
	if (old_vsp > -3) {
		old_vsp = -3;
	}
}

if (attack == AT_DAIR && true) {
	if (my_hitboxID.hbox_num == 1) {
		if (old_vsp > -10) {
			old_vsp = -10;
		}
		if (abs(old_hsp) > 3) {
			old_hsp *= 0.6;
		}
	} else {
		if (old_vsp > -6) {
			old_vsp = -6;
		}
		if (abs(old_hsp) > 4) {
			old_hsp *= 0.9;
		}
	}
}

if (attack == AT_DATTACK) {
	dattackCancelPower += 10;
	if (my_hitboxID.hbox_num == 2) {
		set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 0);
		set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 0);
		set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED, 0);
		set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED_TYPE, 0);
	}
}

outgoingDamage = get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_DAMAGE);

if (get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_HITBOX_TYPE) == 1) {
	if (actionMeterStatus == 1) {
		if (activeBuffUses > 0) {
			actionMeterFill += 0.8 + (outgoingDamage * 0.4);
		} else {
			actionMeterFill += 1 + (outgoingDamage * 0.9);
		}
	}
	actionMeterStatus = 1;
}

if (activeBuff == 1 && my_hitboxID.attack != AT_NSPECIAL && my_hitboxID.attack != AT_FSPECIAL) {
	print_debug("hit someone with damage buff! original damage: " + string(outgoingDamage));
	if (outgoingDamage > 3) {
		print_debug("original hit did at least 4 damage! applying one more.");
		take_damage(hit_player_obj.player, player, 1);
	}
	if (outgoingDamage > 7) {
		print_debug("original hit did at least 8 damage! applying one more.");
		take_damage(hit_player_obj.player, player, 1);
	}
	take_damage(hit_player_obj.player, player, 1);
	if (my_hitboxID.attack == AT_NAIR && my_hitboxID.hbox_num == 1) {
		print_debug("nope");
		take_damage(hit_player_obj.player, player, 1);
	}
	activeBuffUses--;
	sound_play(get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_HIT_SFX), false, noone, 0.8);
	spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 30, powerhit)
}

if (attack == AT_FTILT) {
	if (hit_player_obj.burned == true) {
		take_damage(hit_player_obj.player, player, -4);
		hit_player_obj.burn_timer += 70;
		sound_play(asset_get("sfx_burnend"));
		spawn_hit_fx(hit_player_obj.x, hit_player_obj.y, 13)
	}
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1) {
	crystal.fake_hsp = 0;
	crystal.fake_vsp = -7;
	spawn_hit_fx(round((my_hitboxID.x + hit_player_obj.x) /2), round((my_hitboxID.y + hit_player_obj.y) /2), hitA)	
}