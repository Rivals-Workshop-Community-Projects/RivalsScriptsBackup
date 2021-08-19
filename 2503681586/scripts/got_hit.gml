//
debugA = enemy_hitboxID.kb_value
debugB = enemy_hitboxID.kb_scale

if is_nana && "is_bubble" !in self  {
	with hit_player_obj {
		if "planet_can_hit" in self {
			planet_can_hit[other.player + 10] = 0
		}
	}
}

if attack == AT_FSPECIAL_2 && window != 1
 {
	clownState = 1
}

if enemy_hitboxID.orig_player == player  {
	if enemy_hitboxID.attack == AT_DAIR {
		if is_nana && "is_bubble" in self  {
			hit_player_obj.old_vsp = -12
			bubbleState = 0
		} else {
			if clownState == 0 {
			clownState = 1
			hit_player_obj.old_vsp = -12
			}
		}
	}
	
	if is_nana && "is_bubble" !in self {
		if enemy_hitboxID.attack != AT_DAIR {
			if clownState == 1 {
				sound_play(asset_get("sfx_orca_absorb"))
			}
			clownState = 0
		}
		take_damage(player, player, floor(-1 * enemy_hitboxID.damage))
		move_cooldown[AT_FSPECIAL] = 30
		move_cooldown[AT_USPECIAL] = 30
		move_cooldown[AT_NSPECIAL] = 30
		move_cooldown[AT_DSPECIAL] = 30
		state = PS_IDLE
		hsp = 0
		vsp = 0
		old_hsp = 0
		old_vsp = 0
		orig_knock = 0
	} 
} else {
	if is_nana && "is_bubble" !in self {
		
		//sound_play(asset_get("sfx_orca_absorb"))
		should_make_shockwave = false
		army_leader.nanaDamage += enemy_hitboxID.damage
		take_damage(player, player, floor(-1 * enemy_hitboxID.damage))

		orig_knock = enemy_hitboxID.kb_value + (army_leader.nanaDamage * enemy_hitboxID.kb_scale * 0.12 * knockback_adj )
		hitstop_full = enemy_hitboxID.hitpause + (army_leader.nanaDamage * enemy_hitboxID.hitpause_growth* .05)
		hitstun = enemy_hitboxID.kb_value * 4 * ((knockback_adj - 1) * 0.6 + 1) + army_leader.nanaDamage * 0.12 * enemy_hitboxID.kb_scale * 4 * 0.65 * knockback_adj

		if clownState = 0 {
			if (orig_knock >= 10) {
				clownState = 1
				sound_play(asset_get("sfx_orca_absorb"))
				state = PS_HITSTUN
				soft_armor = 0
				
			} 	else {
				clownState = 0
			}
		}
	}
}

if "is_bubble" in self {
	should_make_shockwave = false
	take_damage(player, player, floor(-1 * enemy_hitboxID.damage))
	if enemy_hitboxID.orig_player != player {
		bubbleState = 0
	}
}

