//
if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.player_id == id && my_hitboxID.type == 2) {

	my_hitboxID.proj_angle = point_direction(x, y, hit_player_obj.x, hit_player_obj.y - char_height / 2) + 45 * spr_dir;
	my_hitboxID.spr_dir *= -1;
	my_hitboxID.hsp = lengthdir_x(needle_speed * 2, point_direction(x, y, hit_player_obj.x, hit_player_obj.y - char_height / 2));
	my_hitboxID.vsp = lengthdir_y(needle_speed * 2, point_direction(x, y, hit_player_obj.x, hit_player_obj.y - char_height / 2));

	my_hitboxID.hitbox_timer = 0;
}

if (my_hitboxID.type != 2 || (my_hitboxID.attack == AT_UTILT && my_hitboxID.player_id == id)) {
	item_mistake_rate = 0;
}