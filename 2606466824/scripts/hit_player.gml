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
	//if (my_hitboxID.hbox_num <= 2) {
	if (my_hitboxID.hbox_num == 1) {
		target = hit_player_obj;
	}
}
if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 3) {
	uspecCancel = 30;
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
		incinRevOffset = sign(old_hsp);
		if (incinRevOffset = 0) {incinRevOffset = 1;}
		print("applying explosion after 10 frames!");
	}
}



if (my_hitboxID.attack == 49 && my_hitboxID.hbox_num > 9 ) {
	hitstop += (5 + hitstop_full);
	hit_player_obj.hitstop += (5 + hit_player_obj.hitstop_full);
	sound_play(sound_get("hit_supereffective"));
	revengeHitShakeFrames = hitstop;
}
if (my_hitboxID.attack == AT_FAIR || my_hitboxID.attack == AT_UAIR ) {
	sound_play(asset_get("sfx_blow_medium1"), false, noone, 1, 1);
}
if (my_hitboxID.attack == AT_FAIR && my_hitboxID.hbox_num == 2 ) {
	sound_play(asset_get("sfx_blow_heavy1"), false, noone, 0.8, 1);
}
if (my_hitboxID.attack == AT_BAIR || my_hitboxID.attack == AT_DAIR || my_hitboxID.attack == AT_DATTACK) {
	if (my_hitboxID.hbox_num == 1) {
		sound_play(asset_get("sfx_blow_heavy1"), false, noone, 0.9, 1);
	} else {
		sound_play(asset_get("sfx_blow_medium1"), false, noone, 1, 1);	
	}
}
if (my_hitboxID.attack == AT_UTHROW && my_hitboxID.hbox_num > 1) {
	sound_play(asset_get("sfx_blow_heavy1"), false, noone, 1, 1);
}
if (my_hitboxID.attack == AT_NTHROW && my_hitboxID.hbox_num > 1) {
	sound_play(asset_get("sfx_blow_heavy1"), false, noone, 1, 1);
	sound_play(asset_get("sfx_blow_heavy2"), false, noone, 1, 1);
}
if (my_hitboxID.attack == AT_DTHROW && my_hitboxID.hbox_num > 1) {
	sound_play(asset_get("sfx_blow_medium1"), false, noone, 1, 1);
}
if (my_hitboxID.attack == AT_FTHROW && my_hitboxID.hbox_num > 1) {
	sound_play(asset_get("sfx_bird_nspecial2"), false, noone, 1, 0.9);
	sound_play(asset_get("sfx_bird_nspecial2"), false, noone, 1, 0.8);
}
if (my_hitboxID.attack == AT_NAIR || my_hitboxID.attack == AT_UTILT || my_hitboxID.attack == AT_DTILT) {
	sound_play(asset_get("sfx_blow_medium3"), false, noone, 0.5, 1);
}

if (my_hitboxID.attack == AT_FSTRONG) {
	if (my_hitboxID.hbox_num == 1) {
		sound_play(asset_get("sfx_blow_heavy2"), false, noone, 1, 1);
	} else {
		sound_play(asset_get("sfx_blow_heavy1"), false, noone, 0.5, 1);	
	}
}
if (my_hitboxID.attack == AT_USTRONG) {
	sound_play(sound_get("punch_heavy"), false, noone, 0.5 + (0.3 * my_hitboxID.hbox_num), 0.88 + (0.07 * my_hitboxID.hbox_num));
	sound_play(asset_get("sfx_blow_heavy2"), false, noone, 0.5, 1);
}

if (my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num == 4) {
	sound_play(sound_get("punch_medium"), false, noone, 0.8, 1);
	sound_play(asset_get("sfx_blow_heavy2"), false, noone, 0.5, 1);
}

if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num > 2) {
	myArrow = spawn_hit_fx (hit_player_obj.x, hit_player_obj.y - 40, revArrow);	
	myArrow.draw_angle = radtodeg(arctan2(hit_player_obj.old_hsp, hit_player_obj.old_vsp)) + 180;
	myArrow.spr_dir = 1;
}

//finalsmash lol
if (my_hitboxID.attack == 49) {
	//print("hi");
	if (my_hitboxID.hbox_num == 1 ) {
		hit_player_obj.should_make_shockwave = false;
		target = hit_player_obj;
		target.spr_dir = spr_dir * -1;
		set_window_value(49, 2, AG_WINDOW_GOTO, 4);
		window_timer = 18;
		grabHeightOffset = round(target.char_height);
		grabHeightOffset -= 50;
		grabHeightOffset = clamp (grabHeightOffset, -18, 18);
	} else {
		target = hit_player_obj;
        if (my_hitboxID.hbox_num > 3) {
            var fs_hfx = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 30, firehfx2)
            fs_hfx.depth = depth - 10;
        }
	}
	move_cooldown[AT_USPECIAL] = 0;
}