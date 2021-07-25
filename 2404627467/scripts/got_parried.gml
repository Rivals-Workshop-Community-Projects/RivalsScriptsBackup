with (hit_player_obj) {
	if (anthem_marked && anthem_marked_id == other.id) {
		anthem_marked = false;
		anthem_marked_id = noone;
		anthem_marked_timer = 0;
		anthem_marked_amount = 0;
		for (var i = 0; i < array_length(anthem_marked_hboxes); i++) {
			if (instance_exists(anthem_marked_hboxes[i]))
				instance_destroy(anthem_marked_hboxes[i]);
		}
	}
}

if (my_hitboxID.attack == AT_FSPECIAL && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2)) {
    my_hitboxID.hitbox_timer = 0;
}