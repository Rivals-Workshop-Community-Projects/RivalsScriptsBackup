if (!hasBone) BoneSprites();

switch(state)
{
    case PS_SPAWN:
		draw_indicator = 0;
        var length = 12; // num of anim frames
        var spd = 6; // in game frames per anim frame
        if (state_timer % spd == 0) introTimer++;
        sprite_index = sprite_get(introTimer<length?"intro":"idle");
        if (introTimer < 0) image_index = 0;
        else if (introTimer < length) image_index = introTimer;
        break;
	case PS_AIR_DODGE:
		if (!free) break;
	case PS_ROLL_BACKWARD:
	case PS_ROLL_FORWARD:
		rollSpr = sprite_index;
		if (image_index<3) rollArray[image_index]={rollX:x,rollY:y,rollDir:spr_dir,rollAlpha:16};
		break;
	case PS_PRATFALL:
        image_index = lerp(0, image_number - 1, (vsp + fast_fall) / (fast_fall * 2));
		break;
}

#define BoneSprites()
{
	switch (state)
	{
	    case PS_IDLE:
	    case PS_RESPAWN:
	    case PS_SPAWN:
			sprite_index = sprite_get("idle_boneless");
	        image_index = state_timer*idle_anim_speed;
			break;
	    case PS_WALK:
			sprite_index = sprite_get("walk_boneless");
	        image_index = state_timer*walk_anim_speed;
			break;
	    case PS_WALK_TURN:
			sprite_index = sprite_get("walkturn_boneless");
			break;
	    case PS_DASH_START:
			sprite_index = sprite_get("dashstart_boneless");
			break;
	    case PS_DASH_STOP:
			sprite_index = sprite_get("dashstop_boneless");
			break;
	    case PS_DASH_TURN:
			sprite_index = sprite_get("dashturn_boneless");
			break;
	    case PS_DASH:
			sprite_index = sprite_get("dash_boneless");
	        image_index = state_timer*dash_anim_speed;
			break;
	    case PS_CROUCH:
			sprite_index = sprite_get("crouch_boneless");
			break;
	    case PS_PARRY_START:
		if (!can_shield)
		{
			sprite_index = sprite_get("idle_boneless");
	        image_index = 0;
			break;
		}
	    case PS_PARRY:
			sprite_index = sprite_get("parry_boneless");
			break;
	    case PS_AIR_DODGE:
			sprite_index = sprite_get("airdodge_boneless");
			break;
	    case PS_FIRST_JUMP:
	    case PS_IDLE_AIR:
		case PS_PRATFALL:
		case PS_WALL_JUMP:
		case PS_WALL_TECH:
			sprite_index = sprite_get("jump_boneless");
			break;
	    case PS_JUMPSQUAT:
	    case PS_LAND:
	    case PS_LANDING_LAG:
	    case PS_PRATLAND:
			sprite_index = sprite_get("jumpstart_boneless");
			break;
	    case PS_TECH_GROUND:
	    case PS_WAVELAND:
			sprite_index = sprite_get("waveland_boneless");
			break;
	    case PS_ROLL_BACKWARD:
	    case PS_ROLL_FORWARD:
	    case PS_TECH_BACKWARD:
	    case PS_TECH_FORWARD:
			sprite_index = sprite_get("roll_boneless");
			break;
	    case PS_DOUBLE_JUMP:
			sprite_index = sprite_get("doublejump_boneless");
			break;
	    case PS_ATTACK_GROUND:
	    case PS_ATTACK_AIR:
			if (attack == AT_FSPECIAL_2) sprite_index = sprite_get("fspecial_extra");
			break;
	}
}