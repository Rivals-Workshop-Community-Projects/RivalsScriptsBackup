trace("hitbox_init was called");

if attack == AT_FSPECIAL && hbox_num == 1
{
    bounced = false;
    bouncetime = 0;
	if (player_id.bomb_numbering >= 3.5)
    {
        sprite_index = sprite_get("fspecial_bullyproj");
		mask_index = sprite_get("fspecial_bombproj");
        destroy_fx = player_id.bullybomb_explode;
    }
}

if (attack == AT_DSTRONG && hbox_num == 3){
thitground = false;
}