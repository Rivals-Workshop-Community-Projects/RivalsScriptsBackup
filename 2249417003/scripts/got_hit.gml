//got_hit.gml


if ((state_cat == SC_HITSTUN || state == PS_HITSTUN_LAND) && enemy_hitboxID.damage >= 1) {
	
	//disable graze mode, subtract meter gained for grazing this attack
	if (ralsei_heart_active) {
		ralsei_heart_active = false;
		if (ralsei_tp < ralsei_max_tp && enemy_hitboxID.hitbox_timer > 1) ralsei_tp -= min(enemy_hitboxID.damage * 3.5 + 3, 60);
		ralsei_heart_article_id.image_index = 5;
		hitstop = max(hitstop, 40);
		hitpause = true;
		hitstun += 10;
		sound_play(sound_get("dr_hurt1"));
		
		//restore dodge if ralsei had a dodge prior to activating graze mode
		has_airdodge = (!free || ralsei_heart_has_airdodge_before_activating);
	}
	else if (enemy_hitboxID.player == player) {
		//take 10 extra damage from fspecial backfire.
		if (enemy_hitboxID.attack == AT_FSPECIAL && enemy_hitboxID.hbox_num == 5) {
			take_damage(player, player, 10);
		}
	}
	else {
		ralsei_tp += min(enemy_hitboxID.damage, 30);
	}
	ralsei_draw_time_since_last_hit = 0;
}










