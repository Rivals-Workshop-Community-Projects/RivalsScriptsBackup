/// my_hitboxID.attack
pausing = false
RCing = 0

tauntnum += 1

timeflow += enemy_hitboxID.damage * 6
move_cooldown[AT_EXTRA_2] = 15
move_cooldown[AT_UTHROW] = hitstop


if projecting {
    with asset_get("pHitBox") {
			if player_id = other {
			if attack == AT_USPECIAL y += 20
			destroyed = true 
			}
		}

}