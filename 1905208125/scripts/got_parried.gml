with asset_get("obj_article1") {
    if player_id == other.id {
        if host != noone && host == other.hit_player_obj {
            instance_destroy(self);
        }
    }
}

if my_hitboxID.attack == AT_NSPECIAL || my_hitboxID.attack == AT_FSPECIAL {
	my_hitboxID.hitbox_timer = 0;
		my_hitboxID.hsp *= 1.5;
}