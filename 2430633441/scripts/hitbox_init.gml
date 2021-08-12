if attack == AT_DSPECIAL && instance_exists(player_id.sun_ins) {
	x = player_id.sun_ins.x;
	y = player_id.sun_ins.y-40;
}

if attack == AT_USTRONG with (player_id) {
other.hbox_group = get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_GROUP);
print("Hbox group "+string(other.hbox_group));
}