//
if (custom_clone) {
	should_make_shockwave = false;
	set_player_damage(player, ceil(clamp(get_player_damage(player) - enemy_hitboxID.damage, 0, 999)));
	if (enemy_hitboxID.type == 1) {
		hit_player_obj.hitstop = get_hitstop_formula(0, enemy_hitboxID.damage, enemy_hitboxID.hitpause, enemy_hitboxID.hitpause_growth, enemy_hitboxID.extra_hitpause);
	}
	//print(hit_player_obj.hitstop)
	if (!rune_indestructible) {
		//instance_destroy(clone_owner.miku_clone)
		clone_owner.move_cooldown[AT_DSPECIAL] = 120 //120
		clone_owner.clone_attack_hold = false;
		//visible = false;
		invincible = true;
		invince_time = 30;
		clone_owner.clone_hit_timer = 30;
		clone_active = false;
	}
	//if (enemy_hitboxID.effect == 3) {
	burned = false;
	burn_timer = 150;
	bubbled = false;
	bubble_time = 0;
	poison = 0;
	stuck = false;
	wrapped = false;
	marked = false;
	//}
	
	with pHitBox {
		if (player_id == other.id) {
			instance_destroy(self)
		}
	}
} 

clone_attack_hold = false;
grabbed_obj = -4;

//attack = 0;