//
if (custom_clone) {
	should_make_shockwave = false;
	set_player_damage(player, clamp(get_player_damage(player) - enemy_hitboxID.damage, 0, 999));
	instance_destroy(clone_owner.miku_clone)
	clone_owner.move_cooldown[AT_DSPECIAL] = 120 //120
}

attack = 0;