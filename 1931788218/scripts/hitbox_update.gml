//hitbox_update

if ((attack == AT_FTILT || attack == AT_FAIR) && (!free || destroyed))
{
	
	if (player_id.fxG)
		spawn_hit_fx(x,y,hit_fx_create(sprite_get("explosionG"), 30))
	else
		spawn_hit_fx(x,y,hit_fx_create(sprite_get("explosion"), 30))
    sound_play(sound_effect);
    destroyed = true;
    if (effect == -2)
    {
	    player_id.hsp = lengthdir_x(12 + point_distance(player_id.x, player_id.y, x, y) / 64, point_direction(player_id.x, player_id.y, x, y))
	    player_id.vsp = lengthdir_y(8 + point_distance(player_id.x, player_id.y, x, y) / 64, point_direction(player_id.x, player_id.y, x, y))
    }
}

if (attack == AT_EXTRA_2 && article.timetype != -1 && !in_hitpause)
{
	x = article.x;
	y = article.y - 20;
}
else if (attack == AT_EXTRA_2)
{
	destroyed = true;
}

//CODED BY HOWEAL TANKAA
//TAKE INSPIRATION FREELY