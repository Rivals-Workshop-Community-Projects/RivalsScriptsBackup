with (enemy_hitboxID) {
	other.incomingDamage = damage;
}
if (activeBuff == 2) {
	if (incomingDamage > 2) {
		print_debug("original hit did at least 3 damage! resisting one.");
		take_damage(player, hit_player_obj.player, -1);
		if (incomingDamage > 6) {
			print_debug("original hit did at least 7 damage! resisting one more.");
			take_damage(player, hit_player_obj.player, -1);
			if (incomingDamage > 10) {
				print_debug("original hit did at least 11 damage! resisting one more.");
				take_damage(player, hit_player_obj.player, -1);
			}
		}
		activeBuffUses--;
		sound_play(asset_get("sfx_bird_sidespecial_start"));
		spawn_hit_fx(x, y - 30, armorblock)
	}
}

if (actionMeterFill > 199) {actionMeterFill -= 40;}
actionMeterFill -= 2 + (incomingDamage * 1.8);
if (actionMeterFill < 0) {
	actionMeterFill = 0;
	actionMeterStatus = 0;
}
if ((prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR) && (attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_USPECIAL_2 || attack == AT_USPECIAL_GROUND || attack == AT_NSPECIAL ||  attack == AT_NSPECIAL_2 ||  attack == AT_NSPECIAL_AIR)) {
	actionMeterFill = 0;
	actionMeterStatus = 0;
}