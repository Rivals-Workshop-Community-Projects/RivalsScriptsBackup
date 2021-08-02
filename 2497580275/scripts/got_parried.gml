if (my_hitboxID.attack == AT_NSPECIAL) {
	move_cooldown[AT_NSPECIAL] = 300;
	with(obj_article2)
	{
		if(player == other.player)
			state = 2;
	}
}

with(obj_article2)
        {
            if(player == other.player)
                state = 2;
        }

