//animation.gml

if (state == PS_SPAWN) {
    if (introTimer < 13 && introTimer >= 0) 
    {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
        depth = -6;
    } 
    else if (introTimer < 0) 
    {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } 
    else
    {
        switch (croagstance)
        {
            case 2:{sprite_index = sprite_get("idle");}break;
            case 1:{sprite_index = sprite_get("idle2");image_index = rivalsdevsarestupid_idlevar;}break;
        }
        depth = -5;
    }
}

switch (croagstance)
{
    case 1:
    {
        switch(state)
        {
            case PS_IDLE:
            {
                sprite_index = sprite_get("idle2");
                image_index = rivalsdevsarestupid_idlevar;
            }break;
            
            case PS_WALK:
            {
                sprite_index = sprite_get("walk2");
                image_index = rivalsdevsarestupid_walkvar;
            }break;
            
            case PS_DASH:
            {
                sprite_index = sprite_get("dash2");
                image_index = rivalsdevsarestupid_dashvar;
            }break;
            
            case PS_DASH_START:
            {
                sprite_index = sprite_get("dashstart2");
            }break;
            
            case PS_DASH_STOP:
            {
                sprite_index = sprite_get("dashstop2");
            }break;
            
            case PS_DASH_TURN:
            {
                sprite_index = sprite_get("dashturn2");
            }break;
        }
    }break;
    
    case 2:
    {
        switch(state)
        {
            case PS_IDLE:
            {
                sprite_index = sprite_get("idle");
            }break;
            
            case PS_WALK:
            {
                sprite_index = sprite_get("walk");
            }break;
            
            case PS_DASH:
            {
                sprite_index = sprite_get("dash");
            }break;
        }
    }break;
}

if state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND
{
    switch (attack)
    {
        case AT_FSTRONG:
        {
            if window == 2
            {
                if croagfstrongcharge <= 1
                {
                    image_index = 2;
                }
                else if croagfstrongcharge <= 2 && croagfstrongcharge >= 1
                {
                    image_index = 3;
                }
                else if croagfstrongcharge <= 3 && croagfstrongcharge >= 2
                {
                    image_index = 4;
                }
                else if croagfstrongcharge <= 4 && croagfstrongcharge >= 3
                {
                    image_index = 5;
                }
            }
        }break;
        
        case AT_NSPECIAL:
        {
            if window == 2
            {
            	if poison_sting_charge <= 15
            	{
            		image_index = 1;
            	}
                else if poison_sting_charge >= 15 && poison_sting_charge <= 30
                {
                    image_index = 2;
                }
                else if poison_sting_charge >= 30
                {
                    image_index = 3;
                }
            }
        }break;
        
        case AT_NSPECIAL_2:
        {
            if window == 2
            {
            	if poison_sting_charge <= 15
            	{
            		image_index = 1;
            	}
                else if poison_sting_charge >= 15 && poison_sting_charge <= 30
                {
                    image_index = 2;
                }
                else if poison_sting_charge >= 30
                {
                    image_index = 3;
                }
            }
        }break;
    }
}