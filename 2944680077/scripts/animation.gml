//Animation




if state == PS_IDLE_AIR && djumps == 1 {
    sprite_index = sprite_get("doublejump");
    image_index = 8;
}

//when you want to use animation.gml during attacks, you need to first check if youre in an attack state
//otherwise these frames would appear outside of attack states
/*if state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND
{
    switch (attack)
    {
        case AT_USPECIAL:
        {
            
        }break;
    }
}*/

/* Specific Sprites for Newcomer States
if state == PS_BURIED{sprite_index = sprite_get("[Desired Sprite Strip]");}
if state == PS_CRYSTALIZED{sprite_index = sprite_get("Desired Sprite Strip");}
if state == PS_FLASHED{sprite_index = sprite_get("Desired Sprite Strip");}
*/