//hitbox update

if (!free && ((hbox_num == 1 && (attack == AT_USPECIAL || attack == AT_USPECIAL_GROUND)) || (attack == AT_DSPECIAL)
)) {
	destroyed = true;
	if (!was_parried) {
		destroy_fx = 1;
		minion = instance_create(x, y+18, "obj_article1");
		minion.player_id = player_id;
		minion.player = player;
		minion.spr_dir = 1;
		player_id.minion = minion;
	}
}

if (hbox_num >= 5 && hbox_num <= 7) {
	if (player_id.minion_can_hit_owner && attack == AT_JAB) {
		can_hit_self = true;
		//print("can hit self");
	} else if (!player_id.minion_can_hit_owner) {
		can_hit_self = false;
		//print("cannot hit self");
	}
}