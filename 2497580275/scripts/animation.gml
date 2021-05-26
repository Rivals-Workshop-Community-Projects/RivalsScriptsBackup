switch(attack)
{
    case AT_FSPECIAL:
        if(window == 1)
        {
            set_attack_value(AT_FSPECIAL, AG_SPRITE, (!fspec_Air ? sprite_get("fspecial") : sprite_get("fspecial_air")));
            set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, (!fspec_Air ? sprite_get("fspecial_hurt") : sprite_get("fspecial_air_hurt")));
        }
    break;
}

if(state == PS_SPAWN)
{
    if(introTimer < 14 && introTimer >= 0)
    {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    }
    else if (introTimer < 0)
    {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } 
    else
        sprite_index = sprite_get("idle");
}