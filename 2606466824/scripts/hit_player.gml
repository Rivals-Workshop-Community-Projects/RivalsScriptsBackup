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
		//target.x = my_hitboxID.x;
		//target.y = my_hitboxID.y;
	}
}

if (revengeMult > 1 && get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_REVENGE_KB_MULTIPLIER) != 0) {
	//take_damage(hit_player_obj.player, player, round(my_hitboxID.damage * (revengeMult - 1)));
	//hit_player_obj.orig_knock *= get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_REVENGE_KB_MULTIPLIER);
	
	
	
	var totalNewDamage = round(my_hitboxID.damage * (revengeMult - 1));
	
	//print(string(totalNewDamage));
		
	set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, round(totalNewDamage / 4));
	set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, my_hitboxID.kb_angle);
	
	totalNewDamage -= round(totalNewDamage / 4);
	totalNewDamage -= round(totalNewDamage / 4);
	
	set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, max(1, totalNewDamage));
	set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, (my_hitboxID.kb_value * 0.9));
	set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, (my_hitboxID.kb_scale * 0.9));
	set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, max(2, my_hitboxID.kb_angle));
	set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, round(my_hitboxID.kb_value * 1.2));
	set_hitbox_value(AT_DSPECIAL, 4, HG_HITPAUSE_SCALING, round(my_hitboxID.kb_scale * 1.2));
	

	if (get_player_color(player) == 24) {	
		spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 30, burstR);			
	} else {
		spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 30, burst);
	}
	
	hit_player_obj.orig_knock = min (hit_player_obj.orig_knock, 15);
	
	if (phone_cheats[CHEAT_PERSIST] < 2) {
		revengeMult = 1;
	}
	hitstop += (5 + hitstop_full);
	hit_player_obj.hitstop += (5 + hit_player_obj.hitstop_full);
	sound_play(sound_get("hit_supereffective"));
	revengeHitShakeFrames = hitstop;
	with (hit_player_obj) {
		incinRevengeTimer = 5;
		print("applying explosion after 10 frames!");
	}
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
	if (my_hitboxID.hbox_num == 1) {
		sound_play(asset_get("sfx_blow_heavy2"), false, noone, 1, 1);
	} else {
		sound_play(asset_get("sfx_blow_heavy1"), false, noone, 0.5, 1);	
	}
}
if (my_hitboxID.attack == AT_USTRONG) {
	sound_play(asset_get("sfx_blow_heavy1"), false, noone, 1, 1);
}

if (my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num == 4) {
	sound_play(sound_get("punch_medium"), false, noone, 0.8, 1);
	sound_play(asset_get("sfx_blow_heavy2"), false, noone, 0.5, 1);
}