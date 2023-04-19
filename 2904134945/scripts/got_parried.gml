with (asset_get("obj_article1")) if (player_id == other.id) newState = 2;

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num <= 2)
{
	if (!my_hitboxID.was_parried) my_hitboxID.hsp *= 2;
	my_hitboxID.hitbox_timer = 0;
}

hit_player_obj.noelleFrostbite = 0;
hit_player_obj.noelleFrostbiteID = noone;
hit_player_obj.noelleFrostgrave = 0;