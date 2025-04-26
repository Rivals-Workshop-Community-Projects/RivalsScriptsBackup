//article3_update
state_timer++;
//rot = player_id.dspecial_sacrifice_angle;
//rot = 180;
rot = floor(state_timer / 2) % (sprite_get_number(s_dspecial_pentagram) - 2) + 1;
if(player_id.spr_dir == 1)
{
	rot = (sprite_get_number(s_dspecial_pentagram) - 1) - rot;
}

scale_x = 0.3;
scale_y = 1;
scale_multiplier = clamp((state_timer / 3),0,1);
if(state_timer >= 15)
{
	scale_multiplier = clamp(scale_multiplier - ((state_timer - 14) / 8),0,1);
}

if(state_timer >= 24)
{
	instance_destroy(self);
}