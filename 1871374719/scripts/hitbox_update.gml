if (attack == AT_USTRONG)
{

	if (sprite_index == sprite_get("proj_signery") && hitbox_timer == 70)
	{
		sound_play( sound_get( "flowery_imfalling" ));
	}
	if (spr_dir == -1) // Left
	{
		proj_angle = (proj_angle + 10) % 360
	}
	else // Right
	{
		proj_angle = (proj_angle - 10) % 360
	}
}

if (attack == AT_DATTACK)
{
	if (spr_dir == -1) // Left
	{
		proj_angle = (proj_angle - 10) % 360
	}
	else // Right
	{
		proj_angle = (proj_angle + 10) % 360
	}
}

if (attack == AT_FAIR)
{
	if (spr_dir == -1) // Left
	{
		proj_angle = (proj_angle + 10) % 360
	}
	else // Right
	{
		proj_angle = (proj_angle - 10) % 360
	}
	
    if (!free)
    {
	    instance_destroy();
	    exit;
    }
}
