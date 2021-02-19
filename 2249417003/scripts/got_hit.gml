//got_hit.gml


if ((state_cat == SC_HITSTUN || state == PS_HITSTUN_LAND) && enemy_hitboxID.damage >= 1) {
	
	//disable graze mode, subtract meter gained for grazing this attack
	if (ralsei_heart_active) {
		ralsei_heart_active = false;
		if (ralsei_tp < ralsei_max_tp && enemy_hitboxID.hitbox_timer > 1) ralsei_tp -= min(enemy_hitboxID.damage * 2 + 3, 60);
		ralsei_heart_article_id.image_index = 5;
		hitstop = max(hitstop, 30);
		hitpause = true;
		sound_play(sound_get("dr_hurt1"));
		
		//restore dodge if ralsei had a dodge prior to activating graze mode
		has_airdodge = (!free || ralsei_heart_has_airdodge_before_activating);
	}
	else {
		ralsei_tp += min(enemy_hitboxID.damage, 30);
	}
	ralsei_draw_time_since_last_hit = 0;
}


//reset the uair jump counter if stunned.
if (state_cat == SC_HITSTUN) {
	epinel_uair_jump_counter = 0;
	epinel_consecutive_uair_jumps = 0;
	set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
	move_cooldown[AT_USPECIAL] = 0;
}







