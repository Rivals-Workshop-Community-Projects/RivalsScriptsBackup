with (oPlayer) {
	if (anthem_marked) {
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