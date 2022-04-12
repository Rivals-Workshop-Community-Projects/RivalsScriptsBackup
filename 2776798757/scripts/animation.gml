switch (state){
    case PS_IDLE:
    case PS_RESPAWN:
    case PS_SPAWN:
        image_index = floor(image_number*state_timer/(image_number*6.5));
    break;
    
    case PS_WALK:
        image_index = floor(image_number*state_timer/(image_number*5));
    break;
}

switch (state){
	case PS_IDLE:
		if (cmd == true){
			sprite_index = sprite_get( "idle2" );
		}
		image_index = floor(image_number*state_timer/(image_number*3));
		break;
}

switch (state){
	case PS_SPAWN:
		if (cmd == true){
			sprite_index = sprite_get( "idle2" );
		}
		image_index = floor(image_number*state_timer/(image_number*3));
		break;
}

switch (state){
	case PS_RESPAWN:
		if (cmd == true){
			sprite_index = sprite_get( "idle2" );
		}
		image_index = floor(image_number*state_timer/(image_number*3));
		break;
}

switch (state){
	case PS_HITSTUN:
		if (cmd == true){
			sprite_index = sprite_get( "hurt2" );
		}
		image_index = floor(image_number*state_timer/(image_number*3));
		break;
}

switch (state){
	case PS_HITSTUN_LAND:
		if (cmd == true){
			sprite_index = sprite_get( "hurt2" );
		}
		image_index = floor(image_number*state_timer/(image_number*3));
		break;
}

switch (state){
	case PS_TUMBLE:
		if (cmd == true){
			sprite_index = sprite_get( "hurt2" );
		}
		image_index = floor(image_number*state_timer/(image_number*3));
		break;
}

switch (state){
	case PS_WRAPPED:
		if (cmd == true){
			sprite_index = sprite_get( "hurt2" );
		}
		image_index = floor(image_number*state_timer/(image_number*3));
		break;
}

switch (state){
	case PS_FROZEN:
		if (cmd == true){
			sprite_index = sprite_get( "hurt2" );
		}
		image_index = floor(image_number*state_timer/(image_number*3));
		break;
}

switch (state){
	case PS_CROUCH:
		if (cmd == true){
			sprite_index = sprite_get( "crouch2" );
		}
}

switch (state){
	case PS_WALK:
		if (cmd == true){
			sprite_index = sprite_get( "walk2" );
		}
		image_index = floor(image_number*state_timer/(image_number*5));
		break;
}

switch (state){
	case PS_WALK_TURN:
		if (cmd == true){
			sprite_index = sprite_get( "walkturn2" );
		}
		image_index = floor(image_number*state_timer/(image_number*3));
		break;
}

switch (state){
	case PS_DASH:
		if (cmd == true){
			sprite_index = sprite_get( "dash2" );
		}
		image_index = floor(image_number*state_timer/(image_number*3));
		break;
}

switch (state){
	case PS_DASH_STOP:
		if (cmd == true){
			sprite_index = sprite_get( "dashstop2" );
		}
}

switch (state){
	case PS_DASH_START:
		if (cmd == true){
			sprite_index = sprite_get( "dashstart2" );
		}
}

switch (state){
	case PS_DASH_TURN:
		if (cmd == true){
			sprite_index = sprite_get( "dashturn2" );
		}
}

switch (state){
	case PS_WAVELAND:
		if (cmd == true){
			sprite_index = sprite_get( "waveland2" );
		}
}

switch (state){
	case PS_PARRY:
		if (cmd == true){
			sprite_index = sprite_get( "parry2" );
		}
}

switch (state){
	case PS_PARRY_START:
		if (cmd == true){
			sprite_index = sprite_get( "idle2" );
		}
}

switch (state){
	case PS_JUMPSQUAT:
		if (cmd == true){
			sprite_index = sprite_get( "jumpstart2" );
		}
}

switch (state){
	case PS_LAND:
		if (cmd == true){
			sprite_index = sprite_get( "land2" );
		}
}

switch (state){
	case PS_LANDING_LAG:
		if (cmd == true){
			sprite_index = sprite_get( "landinglag2" );
		}
}

switch (state){
	case PS_PRATLAND:
		if (cmd == true){
			sprite_index = sprite_get( "land2" );
		}
}

switch (state){
	case PS_FIRST_JUMP:
		if (cmd == true){
			sprite_index = sprite_get( "jump2" );
		}
}

switch (state){
	case PS_IDLE_AIR:
		if (cmd == true){
			sprite_index = sprite_get( "jump2" );
		}
}

switch (state){
	case PS_WALL_JUMP:
		if (cmd == true){
			sprite_index = sprite_get( "walljump2" );
		}
}

switch (state){
	case PS_DOUBLE_JUMP:
		if (cmd == true){
			sprite_index = sprite_get( "doublejump2" );
		}
}

switch (state){
	case PS_PRATFALL:
		if (cmd == true){
			sprite_index = sprite_get( "pratfall2" );
		}
}

switch (state){
	case PS_TECH_GROUND:
		if (cmd == true){
			sprite_index = sprite_get( "tech2" );
		}
}

switch (state){
	case PS_TECH_BACKWARD:
		if (cmd == true){
			sprite_index = sprite_get( "roll_backward2" );
		}
}

switch (state){
	case PS_TECH_FORWARD:
		if (cmd == true){
			sprite_index = sprite_get( "roll_forward2" );
		}
}

switch (state){
	case PS_ROLL_BACKWARD:
		if (cmd == true){
			sprite_index = sprite_get( "roll_backward2" );
		}
}

switch (state){
	case PS_ROLL_FORWARD:
		if (cmd == true){
			sprite_index = sprite_get( "roll_forward2" );
		}
}

switch (state){
	case PS_AIR_DODGE:
		if (cmd == true){
			sprite_index = sprite_get( "airdodge2" );
		}
}

if (cmd == true){
set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab2"));
}

if (cmd == true){
set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt2"));
}

if (cmd == true){
set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt2"));
}

if (cmd == true){
set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt2"));
}

if (cmd == true){
set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack2"));
}

if (cmd == true){
set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong2"));
}

if (cmd == true){
set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong2"));
}

if (cmd == true){
set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong2"));
}

if (cmd == true){
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair2"));
}

if (cmd == true){
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair2"));
}

if (cmd == true){
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair2"));
}

if (cmd == true){
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair2"));
}

if (cmd == true){
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair2"));
}

if (cmd == true){
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt2"));
}

if (cmd == true){
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial2"));
}

if (cmd == true){
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial2"));
}

if (cmd == true){
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial2_2"));
}

if (cmd == true){
set_attack_value(AT_USPECIAL_GROUND, AG_SPRITE, sprite_get("uspecialg2"));
}

if (cmd == true){
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial2"));
}

if (cmd == true){
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial2"));
}

if (cmd == true){
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial2"));
}

if (cmd == true){
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial2"));
}

if (cmd == true){
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial2"));
}

if (cmd == true){
set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecial2"));
}

if (cmd == true){
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("fspecial2"));
}

if (cmd == true){
set_attack_value(AT_DSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecial2"));
}

if (cmd == true){
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("fspecial2"));
}

if (cmd == true){
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecial2"));
}

if (cmd == true){
set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("fspecial2"));
}

if (cmd == true){
set_attack_value(AT_FSTRONG_2, AG_AIR_SPRITE, sprite_get("fspecial2"));
}

if (cmd == true){
set_attack_value(AT_DSTRONG_2, AG_SPRITE, sprite_get("fspecial2"));
}

if (cmd == true){
set_attack_value(AT_DSTRONG_2, AG_AIR_SPRITE, sprite_get("fspecial2"));
}

if (cmd == true){
set_attack_value(AT_USTRONG_2, AG_SPRITE, sprite_get("ustrong_2_2"));
}

if (cmd == true){
set_attack_value(AT_USTRONG_2, AG_AIR_SPRITE, sprite_get("ustrong_3"));
}

if (cmd == true){
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("fspecial2"));
}

if (cmd == true){
set_attack_value(AT_EXTRA_1, AG_AIR_SPRITE, sprite_get("fspecial2"));
}