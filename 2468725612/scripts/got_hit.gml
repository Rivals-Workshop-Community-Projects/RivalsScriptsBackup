if (custom_clone){
	take_damage(player, hit_player_obj.player, -floor( enemy_hitboxID.damage * 1));
	orig_knock = enemy_hitboxID.kb_value * 1.1;
	player.hitpause = ((enemy_hitboxID.hitpause + enemy_hitboxID.damage) * (enemy_hitboxID.hitpause_growth) * (.05));
}

if (!custom_clone && hologram_is_alive == true){
	if (attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR){
		hologram.hurtboxID.sprite_index = sprite_get("hurtbox_idle");
	}
}


