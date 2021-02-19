//got_hit - called when you're hit by a hitbox

if (attack == AT_DSPECIAL && window == 2) {
	var hit_type = get_hitbox_value(enemy_hitboxID.attack, enemy_hitboxID.hbox_num, HG_HITBOX_TYPE);
	if (hit_type == 2) {
		enemy_hitboxID.hsp *= -1;
	}
}

if (attack == AT_DSPECIAL && window == 4) {
	reflect_fx = 0;
}