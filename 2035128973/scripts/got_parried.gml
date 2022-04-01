asCharge = 0;

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 2 && my_hitboxID.sprite_index == asset_get("empty_sprite"))
{
	if (!my_hitboxID.was_parried) my_hitboxID.hsp *= 2;
	my_hitboxID.hitbox_timer = 0;
	my_hitboxID.transcendent = 1;
}

if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 1)
{
	my_hitboxID.destroyed = 1;
}