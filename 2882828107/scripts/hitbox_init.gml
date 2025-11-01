//hitbox_init
if (attack == AT_USPECIAL){
	if (hbox_num == 1){
		if (player_id.wall_phase)
		|| (has_rune("F") && get_player_damage(player) >= 96){
			image_xscale = 1.2;
			image_yscale = 1.2;
		}
		if !(player_id.wall_phase) && (has_rune("F") && get_player_damage(player) >= 96){
			damage = 45;
			kb_value = 10;
			kb_scale = 1.2;
		}
	}
}