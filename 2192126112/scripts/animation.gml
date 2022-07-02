if (state == PS_SPAWN) {
    if (introTimer < 14 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
}

if (dtaunt_mode = 1)
{
	sprite_index = 	sprite_get("tpose");
}


if (state == PS_PARRY && state_timer = 0)
{
    if ((random_func (3, 3, true)) == 0)
    		{
    			parry_type = 1;
    		}
    		else if ((random_func (3, 3, true)) > 0)
    		{
    			parry_type = 2;
    		}

}

if (state == PS_PARRY)
{
    		if (parry_type = 1)
    		{
    		sprite_index = sprite_get("parrypan");
    		}
    		else if (parry_type = 2)
    		{
    			sprite_index = sprite_get("parry");
    		}
}


if (attack != AT_NSPECIAL || (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND))
{
current_sprite = sprite_index;
current_frame = image_index;
}
if (attack == AT_NSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND))
{
	sprite_index = current_sprite;
	image_index = current_frame;
}