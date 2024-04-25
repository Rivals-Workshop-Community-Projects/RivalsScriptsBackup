/*
if (is_oc && visible && initial_invince && should_show_plat) { //platform
	draw_sprite_ext( sprite_get("plat_real"), 0, x, y, 1, 1, 0, c_white, 1);
}
*/

if instance_exists(scanned_id) {
	with scanned_id {
		var _scan = sprite_get("scanned_back");
	}

	if (scanned) {
		var _dist = (scanned_id.scanned_max - scanned) % char_height;
		draw_sprite_ext( _scan, 0, x, y - _dist, 1, 1, 0, c_white, 1 - (_dist / char_height));
	}	
}