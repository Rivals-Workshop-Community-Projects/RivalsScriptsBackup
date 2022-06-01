// called when the character gets KO'd

with (asset_get("oPlayer")) {
	if (samson_honeyed && samson_honeyed_ID == other.id) {
		samson_honeyed = false;
	}
}


with (obj_article1) {
	{
		if player_id == other.id
		{
		should_die = true;
		}
	}
}

floating = 1;

with (asset_get("oPlayer")) {
	if (samson_dipper_grab && samson_dipper_grab_id == other.id) {
		samson_dipper_grab = false;
	}
}