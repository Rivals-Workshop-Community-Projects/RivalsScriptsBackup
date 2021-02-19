//hitbox_update.gml
if (attack == AT_DSPECIAL && hbox_num == 2 && hitbox_timer == 69) destroyed = 1;

if (attack == AT_DTHROW && hbox_num == 1 && hitbox_timer == 69) destroyed = 1;

if (attack == AT_NSPECIAL)
{
	switch (hbox_num)
	{
		case 1:
		{
			if (hitbox_timer == 59) destroyed = 1;
			else if (hitbox_timer < 35)
			{
				with(obj_article1)
				{
					if (other.player_id == player_id && point_distance(x,y,other.x,other.y) < 35 && !free)
					{
						hsp = other.hsp;
						spr_dir = other.spr_dir;
					}
				}
			}
		}
		break;
		case 2:
			if (hitbox_timer == 59) destroyed = 1;
			if (hitbox_timer%6==0) spawn_hit_fx(x,y,player_id.pew_effect);
			break;
		case 3:
			if (hitbox_timer == 99) destroyed = 1;
			if (hitbox_timer%6==0) spawn_hit_fx(x + random_func(0, 50, 1)-25,y + random_func(1, 50, 1)-25,player_id.pew_effect);
			break;
	}
}

if (attack == AT_EXTRA_3 && hbox_num == 1 && hitbox_timer == 9) destroyed = 1;



if (attack == AT_EXTRA_3 && hbox_num == 3) {
	if (hitbox_timer == 120)
	{
		vsp = -30;
		sound_play(asset_get("sfx_kragg_rock_pillar"));
	}
	if (y <= 0)
	{
		vsp = 30;
		sound_play(asset_get("sfx_kragg_rock_pillar"));
		hit_priority = 0;
	}
}