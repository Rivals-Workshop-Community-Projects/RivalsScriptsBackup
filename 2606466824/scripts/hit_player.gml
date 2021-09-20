if (my_hitboxID.attack != AT_NSPECIAL) {
	target = noone;
}

if (my_hitboxID.attack == AT_FSPECIAL && hit_player_obj.state == PS_HITSTUN) {
	if (my_hitboxID.hbox_num == 1 ) {
		hit_player_obj.should_make_shockwave = false;
		target = hit_player_obj;
		target.spr_dir = spr_dir * -1;
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_GOTO, 4);
		window_timer = 13;
		grabHeightOffset = round(target.char_height);
		grabHeightOffset -= 50;
		grabHeightOffset = clamp (grabHeightOffset, -18, 18);
	} else {
		target = hit_player_obj;
	}
	move_cooldown[AT_USPECIAL] = 0;
}
if (my_hitboxID.attack == AT_FTHROW || my_hitboxID.attack == AT_UTHROW || my_hitboxID.attack == AT_DTHROW || my_hitboxID.attack == AT_NTHROW) {
	if (my_hitboxID.hbox_num == 1) {
		hit_player_obj.should_make_shockwave = false;
		target = hit_player_obj;
		grabHeightOffset = round(target.char_height);
		grabHeightOffset -= 50;
		grabHeightOffset = clamp (grabHeightOffset, -18, 18);
		target.can_wall_tech = false;
	} else if (target != noone) {
		target.can_wall_tech = true;
	}
}
if (my_hitboxID.attack == AT_DSTRONG) {
	if (my_hitboxID.hbox_num < 4) {
		hit_player_obj.should_make_shockwave = false;
		target = hit_player_obj;
	}
}

if (my_hitboxID.attack == AT_USPECIAL && hit_player_obj.state == PS_HITSTUN) {
	if (my_hitboxID.hbox_num <= 2) {
		target = hit_player_obj;
		target.x = my_hitboxID.x;
		target.y = my_hitboxID.y;
	}
}

if (revengeMult > 1 && get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_REVENGE_KB_MULTIPLIER) != 0) {
	take_damage(hit_player_obj.player, player, round(my_hitboxID.damage * (revengeMult - 1)));
	//hit_player_obj.orig_knock *= get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_REVENGE_KB_MULTIPLIER);
	if (phone_cheats[CHEAT_PERSIST] < 2) {
		revengeMult = 1;
	}
	hitstop += (5 + hitstop_full);
	hit_player_obj.hitstop += (5 + hit_player_obj.hitstop_full);
	sound_play(sound_get("hit_supereffective"));
	revengeHitShakeFrames = hitstop;
}



if (my_hitboxID.attack == AT_FAIR) {
	sound_play(asset_get("sfx_blow_medium1"), false, noone, 1, 1);
}
if (my_hitboxID.attack == AT_BAIR) {
	sound_play(asset_get("sfx_blow_heavy1"), false, noone, 0.5, 1);
}
if (my_hitboxID.attack == AT_DAIR) {
	sound_play(asset_get("sfx_blow_heavy1"), false, noone, 0.5, 1);
}

if (my_hitboxID.attack == AT_FSTRONG) {
	sound_play(asset_get("sfx_blow_heavy2"), false, noone, 1, 1);
}
if (my_hitboxID.attack == AT_USTRONG) {
	sound_play(asset_get("sfx_blow_heavy1"), false, noone, 1, 1);
}

if (my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num == 4) {
	sound_play(sound_get("punch_medium"), false, noone, 0.8, 1);
	sound_play(asset_get("sfx_blow_heavy2"), false, noone, 0.5, 1);
}