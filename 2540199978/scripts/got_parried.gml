if (my_hitboxID.attack == AT_NSPECIAL_2)
{
	with (asset_get("obj_article1")) if (player_id == other.id) newState = 3;
}