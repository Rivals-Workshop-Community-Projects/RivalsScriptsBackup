if (motorbike == true) //Change all the sprites used if Carol is on the bike
{
	tsprite_index=-1;
	bsprite_index=-1;
	switch (state)
	{
		case PS_IDLE:
		case PS_SPAWN:
		case PS_RESPAWN:
		sprite_index=sprite_get("idle2");
		image_index=state_timer * idle_anim_speed;
		break;
		case PS_IDLE_AIR:
		sprite_index=sprite_get("bike_idle_air");
		break;
		case PS_CROUCH:
		sprite_index=sprite_get("crouch2");
		image_index=state_timer * crouch_anim_speed;
		break;
		case PS_JUMPSQUAT:
		sprite_index=sprite_get("land2");
		image_index=state_timer;
		break;		
		case PS_FIRST_JUMP:
		sprite_index=sprite_get("bike_idle_air");
		image_index=state_timer;
		break;
		case PS_DOUBLE_JUMP:
		sprite_index=sprite_get("doublejump2");
		image_index=state_timer;
		break;
		case PS_WALL_JUMP:
		case PS_WALL_TECH:
		sprite_index=sprite_get("walljump2");
		image_index=state_timer* walk_anim_speed;
		break;
		case PS_LAND:
		case PS_LANDING_LAG:
		case PS_PRATLAND:
		sprite_index=sprite_get("land2");
		break;
		case PS_WALK:
		sprite_index=sprite_get("walk2");
		image_index=state_timer * walk_anim_speed;
		break;
		case PS_WALK_TURN:
		sprite_index=sprite_get("walkturn2");
		image_index=state_timer * walk_anim_speed;
		break;
		case PS_DASH_START:
		sprite_index=sprite_get("dashstart2");
		image_index=state_timer * dash_anim_speed;
		break;	
		case PS_DASH:
		sprite_index=sprite_get("dash2");
		image_index=state_timer * dash_anim_speed;
		break;
		case PS_DASH_STOP:
		sprite_index=sprite_get("dashstop2");
		image_index=state_timer * dash_anim_speed;
		break;
		case PS_DASH_TURN:
		sprite_index=sprite_get("dashturn2");
		himage_index=state_timer * dash_anim_speed;
		break;
		case PS_WAVELAND:
		sprite_index=sprite_get("waveland2");
		image_index=state_timer/3;
		break;
		case PS_AIR_DODGE:
		sprite_index=sprite_get("airdodge2");
		image_index=state_timer/3;
		break;
		case PS_PARRY:
		sprite_index=sprite_get("bike_idle_air");
		image_index=state_timer;
		break;
		case PS_ROLL_BACKWARD:
		case PS_TECH_BACKWARD:
		sprite_index=sprite_get("roll_backward2");
		if (image_index < 3)
		{
			image_index = 0;
		}
		else
		{
			image_index=state_timer/3;
		}
		break;
		case PS_ROLL_FORWARD:
		case PS_TECH_FORWARD:
		sprite_index=sprite_get("roll_forward2");
		if (image_index < 3)
		{
			image_index = 0;
		}
		else
		{
			image_index=state_timer/3;
		}
		break;
		case PS_TECH_GROUND:
		sprite_index=sprite_get("tech2");
		image_index=state_timer/3;
		break;		
		case PS_HITSTUN:
		case PS_HITSTUN_LAND:
		case PS_BURIED:
		case PS_FLASHED:
		case PS_WRAPPED:
		case PS_FROZEN:
		case PS_DEAD:
		switch (hurt_img)
		{
			case 0:
				sprite_index=sprite_get("bighurt_bike");
			break;
			case 1:
				sprite_index=sprite_get("hurt_bike");
			break;
			case 2:
				sprite_index=sprite_get("downhurt_bike");
			break;
			case 3:
				sprite_index=sprite_get("bouncehurt_bike");
			break;
			case 4:
				sprite_index=sprite_get("uphurt_bike");
			break;
			case 5:
				if (!free)
				{
					sprite_index=sprite_get("hurtground_bike");					
				}
			break;
		}
		image_index=state_timer;
		break;
		case PS_TUMBLE:
		sprite_index=sprite_get("tumble_bike");
		image_index=state_timer * 0.25;
		break;		
		case PS_PRATFALL:
		sprite_index=sprite_get("pratfall2");
		image_index=state_timer * pratfall_anim_speed;
		break;
	}
}
else
{
	switch (state)
	{
		case PS_ATTACK_AIR:
			switch (attack)
			{
				case AT_EXTRA_2:
					hurtboxID.sprite_index = sprite_get("pounce_hurt");
				break;
				case AT_DAIR:
					if (window == 1)
					{
						sprite_index = sprite_get("dair_startup");
						hurtboxID.sprite_index = sprite_get("dair_startup_hurt");
					}
					else
					{
						hurtboxID.sprite_index = sprite_get("dair_hurt");
					}
				break;
				default:
				break;
			}
		break;
		//The following code is a template for being buried, flashed or Crystalized off the bike, the code was originally developed by DynamicLemons will change it later
		case PS_BURIED:
		case PS_FLASHED:
			sprite_index=(sprite_get("hurt"));
		break;
		default:
		break;
	}
}

if ("crystalized_damage_remaining" in self && crystalized_damage_remaining != 0 || state == PS_CRYSTALIZED)
{
	if (motorbike)
	{
    	sprite_index = sprite_get("hurt_bike_crystalized");
	}
	else
	{
    	sprite_index = sprite_get("hurt_crystalized");
	}
    small_sprites = 1;
}
else small_sprites = 0;