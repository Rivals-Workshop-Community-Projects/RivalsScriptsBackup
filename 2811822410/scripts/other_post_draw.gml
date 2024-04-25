//
if instance_exists(scanned_id) {
	with scanned_id {
		var _scan = sprite_get("scanned_front");
	}

	if (scanned) {
		var _dist = (scanned_id.scanned_max - scanned) % char_height;
		draw_sprite_ext( _scan, 0, x, y - _dist, 1, 1, 0, c_white, 1 - (_dist / char_height));
	}	
}
