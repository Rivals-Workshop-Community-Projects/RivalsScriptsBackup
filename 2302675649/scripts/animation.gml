small_sprites = true;

switch(state)
{
    case PS_SPAWN:
		if (state_timer % 5 == 0) introTimer++;
		sprite_index = sprite_get(introTimer<19?isFurry?"introFur":"intro":isFurry?"idleFur":"idle");
		if (introTimer < 0) image_index = 0;
		else if (introTimer < 19) image_index = introTimer;
		break;
    case PS_IDLE:
    case PS_RESPAWN:
		if (isFurry) sprite_index = sprite_get("idleFur");
		else if (floor(state_timer*idle_anim_speed/6)%6 == 5)
		{
			if (floor(state_timer%(6/idle_anim_speed)) == 0) idleIndex = random_func(0, array_length_1d(idleList), 1);
			sprite_index = idleList[idleIndex];
		}
		image_index = floor(image_number*state_timer/(image_number/idle_anim_speed));
		break;
    case PS_CROUCH:
    case PS_TECH_GROUND:
		if (isFurry) sprite_index = sprite_get("crouchFur");
		break;
    case PS_WALK:
		if (isFurry)
		{
			sprite_index = sprite_get("walkFur");
			image_index = state_timer*walk_anim_speed;
		}
		break;
    case PS_WALK_TURN:
		if (isFurry) sprite_index = sprite_get("walkturnFur");
		break;
	case PS_DASH_START:
		if (isFurry) sprite_index = sprite_get("dashstartFur");
		break;
	case PS_DASH_STOP:
		if (isFurry) sprite_index = sprite_get("dashstopFur");
		break;
    case PS_DASH_TURN:
		if (isFurry) sprite_index = sprite_get("dashturnFur");
		break;
	case PS_DASH:
		if (isFurry)
		{
			sprite_index = sprite_get("dashFur");
			image_index = state_timer*dash_anim_speed;
		}
		break;
	case PS_JUMPSQUAT:
		if (isFurry) sprite_index = sprite_get("jumpstartFur");
		break;
	case PS_ROLL_BACKWARD:
	case PS_ROLL_FORWARD:
		if (image_index<6) rollArray[image_index]={rollX:x,rollY:y,rollDir:spr_dir,rollAlpha:16};
    case PS_TECH_BACKWARD:
    case PS_TECH_FORWARD:
		if (isFurry) sprite_index = sprite_get("rollFur");
		break;
	case PS_PARRY_START:
		if (isFurry && !can_shield)
		{
			sprite_index = sprite_get("idleFur");
		    image_index = 0;
			break;
		}
	case PS_PARRY:
		if (isFurry) sprite_index = sprite_get("parryFur");
		break;
	case PS_PRATFALL:
        image_index = lerp(0, image_number - 1, (vsp + fast_fall) / (fast_fall * 2));
	case PS_FIRST_JUMP:
	case PS_IDLE_AIR:
		if (isFurry) sprite_index = sprite_get("jumpFur");
		break;
    case PS_DOUBLE_JUMP:
	case PS_WALL_JUMP:
		if (isFurry) sprite_index = sprite_get("doublejumpFur");
		break;
	case PS_LANDING_LAG:
		if (attack == AT_UAIR && hitpause)
		{
			sprite_index = sprite_get(isFurry?"uairFur":"uair");
			image_index = 11;
			break;
		}
	case PS_LAND:
	case PS_PRATLAND:
	case PS_WAVELAND:
		if (isFurry) sprite_index = sprite_get("landFur");
		break;
	case PS_AIR_DODGE:
		draw_y = -3*room_height;
		draw_indicator = false;
		if (isFurry) sprite_index = sprite_get("airdodgeFur");
		break;
	case PS_TUMBLE:
		if (isFurry) sprite_index = sprite_get("spinhurtFur");
		break;
	case PS_HITSTUN_LAND:
		if (isFurry) sprite_index = sprite_get("hurtgroundFur");
		break;
	case PS_HITSTUN:
	case PS_WRAPPED:
	case PS_FROZEN:
		if (isFurry)
		{
			if (sprite_index == sprite_get("bighurt")) sprite_index = sprite_get("bighurtFur");
			else if (sprite_index == sprite_get("bouncehurt")) sprite_index = sprite_get("bouncehurtFur");
			else if (sprite_index == sprite_get("downhurt")) sprite_index = sprite_get("downhurtFur");
			else if (sprite_index == sprite_get("uphurt")) sprite_index = sprite_get("uphurtFur");
			else sprite_index = sprite_get("hurtFur");
		}
		break;
	case PS_ATTACK_GROUND:
	case PS_ATTACK_AIR:
			switch (attack)
			{
				case AT_EXTRA_1:
					small_sprites = false;
					if (isFurry) sprite_index = sprite_get("dripFur");
					break;
				case AT_JAB: if (isFurry) sprite_index = sprite_get("jabFur"); break;
				case AT_FTILT: if (isFurry) sprite_index = sprite_get("ftiltFur"); break;
				case AT_DTILT: if (isFurry) sprite_index = sprite_get("dtiltFur"); break;
				case AT_UTILT: if (isFurry) sprite_index = sprite_get("utiltFur"); break;
				case AT_DATTACK: if (isFurry) sprite_index = sprite_get("dattackFur"); break;
				case AT_UTHROW: if (isFurry) sprite_index = sprite_get("grabFur"); break;
				case AT_NTHROW:
					//if (window == 5)
					//{
					//	if (free)
					//	{
					//		sprite_index = sprite_get(isFurry?"jumpFur":"jump");
					//		image_index = lerp(0, image_number - 1, (vsp + fast_fall) / (fast_fall * 2));
					//	}
					//	else
					//	{
					//		sprite_index = sprite_get(isFurry?"landFur":"land");
					//		image_index = window_timer>8;
					//	}
					//	hurtboxID.sprite_index = hurtbox_spr;
					//}
					//else
						if (isFurry) sprite_index = sprite_get("strongFur");
					break;
				case AT_NSPECIAL: if (isFurry) sprite_index = sprite_get("nspecialFur"+(free?"_air":"")); break;
				case AT_FSPECIAL: if (isFurry) sprite_index = sprite_get("fspecialFur"); break;
				case AT_DSPECIAL: if (isFurry) sprite_index = sprite_get("dspecialFur"); break;
				case 49: if (isFurry) sprite_index = sprite_get("uspecialFur"); break;
				case AT_TAUNT: if (isFurry) sprite_index = sprite_get("tauntFur"); break;
				case AT_NAIR: if (isFurry) sprite_index = sprite_get("nairFur"); break;
				case AT_FAIR: if (isFurry) sprite_index = sprite_get("fairFur"); break;
				case AT_BAIR: if (isFurry) sprite_index = sprite_get("bairFur"); break;
				case AT_DAIR: if (isFurry) sprite_index = sprite_get("dairFur"); break;
				case AT_UAIR: if (isFurry) sprite_index = sprite_get("uairFur"); break;
				case AT_USPECIAL:
					if (isFurry) sprite_index = sprite_get("uspecialFur");
					if (window == 1 && window_timer > uspecStartup/2)
					{
					    image_index = 1;
					}
					break;
			}
		break;
}