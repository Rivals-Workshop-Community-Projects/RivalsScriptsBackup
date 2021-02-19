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

// Intro 
if (state == PS_SPAWN) {

		if (state_timer == 4)
		{
		sound_play(introsfx1);
		}
		if (state_timer == 79)
		{
			sound_play(introsfx2);
		}
    if (introTimer < 20 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;


    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
}


// FSpecial Tilting
if (attack == AT_FSPECIAL) && state == PS_ATTACK_AIR && (window == 3 || window == 4){
    if (spr_dir == -1)
	{
		spr_angle = point_direction(0,-24,-vsp,-50)-90
    }
	else
	{
		spr_angle = point_direction(0,-24,vsp,-50)-90
	}
}
if (attack == AT_FSPECIAL) && state == PS_ATTACK_GROUND{
		spr_angle = 0;
}
if (attack != AT_FSPECIAL)
{
	spr_angle = 0;
}