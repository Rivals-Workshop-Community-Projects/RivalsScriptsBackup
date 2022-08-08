//update.gml
if (!free || state == PS_WALL_JUMP || state == PS_HITSTUN || state == PS_HITSTUN_LAND || state == PS_TUMBLE)
{
    move_cooldown[AT_USPECIAL] = 0;
    move_cooldown[AT_FSPECIAL] = 0;
    if (move_cooldown[AT_DSPECIAL] > 90)
    {
	move_cooldown[AT_DSPECIAL] = 45;
    }
}

with (asset_get("oPlayer"))
{  
	if "baseWalk" in self {
    if (pastelle_soaked && pastelle_soaked_id == other.id && !hitpause) 
	{
		pastelle_soaked_time--;
		if (pastelle_soaked_time <= 0)
		{
			pastelle_soaked = false;
			walk_speed = baseWalk;
			dash_speed = baseDash;
			ground_friction = baseGround;
			air_accel = baseAir;
			gravity_speed = baseGrav;
			jump_speed = baseJump;
			djump_speed = baseDjump;
			max_fall = baseFall;
			fast_fall = baseFast;
			knockback_adj = baseKnock;
			air_friction = baseFric;
		}
	}
	if (state == PS_RESPAWN || state == PS_DEAD)
	{
		pastelle_soaked = false;
		pastelle_soaked_time = 0;

		walk_speed = baseWalk;
		dash_speed = baseDash;
		ground_friction = baseGround;
		air_accel = baseAir;
		gravity_speed = baseGrav;
		jump_speed = baseJump;
		djump_speed = baseDjump;
		max_fall = baseFall;
		fast_fall = baseFast;
		knockback_adj = baseKnock;
		air_friction = baseFric;
	}
    if (pastelle_soaked)
    {
	outline_color = [15, 11, 105];
	init_shader();
	
    }
    if (!pastelle_soaked)
    {
	outline_color = [0, 0, 0];
	init_shader();

	walk_speed = baseWalk;
	dash_speed = baseDash;
	ground_friction = baseGround;
	air_accel = baseAir;
	gravity_speed = baseGrav;
	jump_speed = baseJump;
	djump_speed = baseDjump;
	max_fall = baseFall;
	fast_fall = baseFast;
	knockback_adj = baseKnock;
	air_friction = baseFric;
    }
  }
}

with (asset_get("oPlayer")) {
	
		if "baseWalk" in self {
			
	if (pastelle_soaked && pastelle_soaked_id == other.id && !hitpause) 
	{
		pastelle_soaked_time--;
		if (pastelle_soaked_time <= 0)
		{
			pastelle_soaked = false;
			walk_speed = baseWalk;
			dash_speed = baseDash;
			ground_friction = baseGround;
			air_accel = baseAir;
			gravity_speed = baseGrav;
			jump_speed = baseJump;
			djump_speed = baseDjump;
			max_fall = baseFall;
			fast_fall = baseFast;
			knockback_adj = baseKnock;
			air_friction = baseFric;
		}
	}
	if (state == PS_RESPAWN || state == PS_DEAD)
	{
		pastelle_soaked = false;
		pastelle_soaked_time = 0;

		walk_speed = baseWalk;
		dash_speed = baseDash;
		ground_friction = baseGround;
		air_accel = baseAir;
		gravity_speed = baseGrav;
		jump_speed = baseJump;
		djump_speed = baseDjump;
		max_fall = baseFall;
		fast_fall = baseFast;
		knockback_adj = baseKnock;
		air_friction = baseFric;
	}
}
}