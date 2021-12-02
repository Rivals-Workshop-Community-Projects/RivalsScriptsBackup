// make the nametag go higher while ustrong's fist is raised
/*if phone_attacking && attack == AT_USTRONG && window > 2 && !(window == 4 && window_timer > phone_window_end / 2)
{
	hud_offset = lerp(hud_offset, 180, 0.5);
}*/

// fix weird jittering that can happen when it tries to return to 0
if (abs(hud_offset) < 1)
{
	hud_offset = 0;
}

//	Hurtbox Ordering
switch (state)
{
    case PS_DASH:
        hurtboxID.sprite_index = sprite_get("r_dashbox");
    break;	
	
	case PS_IDLE:
    case PS_RESPAWN:
    case PS_SPAWN:    
    case PS_WALK:
	case PS_WALK_TURN:
	case PS_DASH_TURN:
	case PS_WAVELAND:
	case PS_DASH_STOP:
	case PS_JUMPSQUAT:
	case PS_FIRST_JUMP:
    case PS_IDLE_AIR:
    case PS_DOUBLE_JUMP:
    case PS_WALL_JUMP:
	case PS_LAND:
	case PS_LANDING_LAG:
	case PS_PRATLAND:
	case PS_PRATFALL:
	case PS_PARRY_START:
	case PS_PARRY:
	case PS_WALL_TECH:
	case PS_HITSTUN:
	case PS_HITSTUN_LAND:
	case PS_TUMBLE:
	case PS_WRAPPED:
	case PS_FROZEN:
        hurtboxID.sprite_index = asset_get("ex_guy_hurt_box");
    break;
}

//	Fight Intro

var intro_time = get_gameplay_time();

if (intro_time <= 52 * 2 - 1) 
{
	sprite_index = sprite_get("intro");
	image_index = floor(intro_time/2);
}