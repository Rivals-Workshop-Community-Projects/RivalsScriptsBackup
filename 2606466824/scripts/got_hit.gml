move_cooldown[AT_USPECIAL] = 0;
move_cooldown[AT_FSPECIAL] = 0;
revengeTarget = noone;

if (phone_cheats[CHEAT_PERSIST] % 2 == 0) {
	if (enemy_hitboxID.kb_scale > 0) {
		revengeMult -= 0.05 + (incomingDamage * 0.01);
	} else {
		revengeMult -= 0.03;	
	}
}
revengeMult = clamp(revengeMult, 1, 4);

if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_DSPECIAL) {
	incomingDamage = enemy_hitboxID.damage * (1 + (hit_player_obj.strong_charge/120));
	take_damage(player, hit_player_obj.player, round(incomingDamage * -0.75));
	hitstop += (10);
	if (enemy_hitboxID.type == 1) {
		hit_player_obj.hitstop += (10);
		hit_player_obj.old_hsp /= 4;
		hit_player_obj.old_vsp /= 4;
	} else {
		hitstop = 10;
	}
	//print_debug ("lol revenge");
	revengeMult += 0.5 + (incomingDamage * 0.15);
	revengeMult = clamp(revengeMult, 1, 4);
	revengeAnchor = get_player_damage(player);
	plasma_pause = false;
	wrapped = false;
	sound_play(sound_get("dspec_2"));
	revengeTarget = hit_player_obj.player;
}

if (get_player_damage(player) > revengeAnchor + 50) {
	//uncomment the next line if people are cowards and complain about revenge
	//revengeMult = 1;
}

if ((attack == AT_FSPECIAL || attack == AT_FTHROW || attack == AT_NTHROW || attack == AT_UTHROW || attack == AT_DTHROW)) {
	triggerSafety = 2;
}

char_height = 62;