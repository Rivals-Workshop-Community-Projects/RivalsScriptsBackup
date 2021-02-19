//article1_update
if ((x+hsp > room_width || x+hsp < 0) || (y+vsp > room_height)) {
    if (type != 3)
    {
        instance_destroy();   
    }
}
if ((thing != noone) && instance_exists(thing))
{    
    thing.x = x;
    thing.y = y;
}

switch(type)
{
    case 0:
        if (bounce < 1)
        {
            sprite_index = sprite_get("evidence1");   
        }
        if (timer == 0)
        {
            vsp = -9;
            hsp = 8 * spr_dir;
        }
        if free{
            vsp += 0.6;
            rotate += 1;
        }
        else
        {
            if (ground == 0)
            {
                bounce += 1;
                vsp += -3
                ground += 1;
            }
        }
        if (bounce == 1)
        {
            spin = 1;
            if ((hsp > 0 and spr_dir == 1) or (hsp < 0 and spr_dir = -1))
            {
                hsp += -0.3 * spr_dir;   
            }
            else if ((hsp < 0 and spr_dir == 1) or (hsp > 0 and spr_dir = -1))
            {
                hsp = 0;
            }
            lifetime -= 1;
        }
        if (!free)
        {
            switch(image_index)
            {
                case 0:
                    sprite_index = sprite_get("evidence1");
                    break;
                case 1:
                    sprite_index = sprite_get("evidenceup1");
                    break;
                case 2:
                    sprite_index = sprite_get("evidenceup1");
                    break;
                case 3:
                    sprite_index = sprite_get("evidenceup1");
                    break;
                case 4:
                    sprite_index = sprite_get("evidencedown1");
                    break;
                case 5:
                    sprite_index = sprite_get("evidencedown1");
                    break;
                case 6:
                    sprite_index = sprite_get("evidencedown1");
                    break;
                case 7:
                    sprite_index = sprite_get("evidence1");
                    break;
            }
        }
        break;
    case 1:
        if (bounce < 2)
        {
            sprite_index = sprite_get("evidence2");   
        }
        if (timer == 0)
        {
            vsp = -12;
            hsp = 8 * spr_dir;
        }
        if free{
            vsp += 0.6;
        }
        else
        {
            if (ground <= 1)
            {
                bounce += 1;
                vsp = -4
                ground += 1;
            }
            
            if (bounce == 2)
            {   
                hsp += -0.4 * spr_dir;
                if ((hsp < 0 and spr_dir == 1) or (hsp > 0 and spr_dir = -1))
                {
                    hsp = 0 * spr_dir;
                }
            }
            lifetime -= 1;
        }
        if (bounce == 1)
        {
            if ((hsp > 0 and spr_dir == 1) or (hsp < 0 and spr_dir = -1))
            {
                hsp = 4 * spr_dir;
            }
            else if ((hsp < 0 and spr_dir == 1) or (hsp > 0 and spr_dir = -1))
            {
                hsp = 0;
            }
            
            if !free
            {
                vsp = -9;
            }
        }
        break;
    case 2:
        if (bounce < 1)
        {
            sprite_index = sprite_get("evidence3");   
        }
        if (timer == 0)
        {
            vsp = -8;
            hsp = 12.9 * spr_dir;
        }
        if free{
            vsp += 0.6;
            rotate += 1;
        }
        else
        {
            if (ground == 0)
            {
                bounce += 1;
                vsp += -3
                ground += 1;
            }
        }
        if (bounce == 1)
        {
            spin = 1;
            if ((hsp > 0 and spr_dir == 1) or (hsp < 0 and spr_dir = -1))
            {
                hsp += -0.3 * spr_dir;   
            }
            else if ((hsp < 0 and spr_dir == 1) or (hsp > 0 and spr_dir = -1))
            {
                hsp = 0;
            }
            lifetime -= 1;
        }
        break;
    case 3:
        sprite_index = sprite_get("evidence4");
        if (timer == 0)
        {
            vsp = -11;
            hsp = 10 * spr_dir;
        }        
        if free{
            vsp += 0.6;
        }
        else
        {
            if (ground == 0)
            {
                hsp = 0;
                if (infected == 0)
                {
                    destroy = 1;
                    lifetime -= 1;
                }
            }
        }
        if (infected == 1)
        {
            poisontime -= 1;
            if (poisontime mod 50 == 0)
            {
                take_damage(person, -1, 1);
            }
            lifetime = poisontime;
        }
        break;
    case 4:
        sprite_index = sprite_get("evidence7");
        if (timer == 0)
        {
            vsp = -9;
            hsp = 8 * spr_dir;
        }
        else if (timer == 95)
        {
            x2 = x;
            y2 = y;
            spawn_hit_fx(x, y, 143);
            create_hitbox(AT_EXTRA_1, 9, x, y);
            instance_destroy();
            exit;
        }
        if free{
            vsp += 0.6;
            lifetime -= 1;
        }
        else
        {
            if (ground == 0)
            {
                bounce += 1;
                vsp += -4;
                ground += 1;
            }
            lifetime -= 1;
        }
        if (bounce == 1)
        {
            if ((hsp > 0 and spr_dir == 1) or (hsp < 0 and spr_dir = -1))
            {
                hsp += -0.3 * spr_dir;   
            }
            else if ((hsp < 0 and spr_dir == 1) or (hsp > 0 and spr_dir = -1))
            {
                hsp = 0;
            }
        }
        break;
    case 5:
        sprite_index = sprite_get("evidence8");
        hsp = 10 * spr_dir;
        break;
    case 6:
        sprite_index = sprite_get("evidence5");
        hsp = 10 * spr_dir;
        break;
    case 7:
        sprite_index = sprite_get("evidence6");
        if (timer == 0)
        {
            vsp = -9;
            hsp = 11 * spr_dir;
        }
        if free{
            vsp += 0.6;
        }
        else
        {
            if (ground <= 1)
            {
                bounce += 1;
                vsp = 0;
                ground += 1;
            }
            
            if (bounce == 2)
            {   
                hsp += -0.3 * spr_dir;
                if ((hsp < 0 and spr_dir == 1) or (hsp > 0 and spr_dir = -1))
                {
                    hsp = 0 * spr_dir;
                }
            }
            lifetime -= 1;
        }
        if (bounce == 1)
        {
            if ((hsp > 0 and spr_dir == 1) or (hsp < 0 and spr_dir = -1))
            {
                hsp = 7 * spr_dir;
            }
            else if ((hsp < 0 and spr_dir == 1) or (hsp > 0 and spr_dir = -1))
            {
                hsp = 0;
            }
            
            if !free
            {
                vsp = -4;
            }
        }
        break;
}
if (free and get_gameplay_time() mod 2 = 0 and spin == 0)
{
    image_index++;
}
if (lifetime == 0)
{
    instance_destroy();
}
if vsp > 0{
    can_be_grounded = true;
}
else {
    can_be_grounded = false;
}

if (hsp <= 0 and spr_dir == 1)
{
    instance_destroy(thing);
    hsp = 0;
}
else if (hsp >= 0 and spr_dir == -1)
{
    instance_destroy(thing);
    hsp = 0;
}
if (land == 1)
{
    switch(type)
    {
        case 0:
            if (hsp > 0 and spr_dir == 1)
            {
                hsp -= 0.8 * spr_dir;
            }
            else if (hsp < 0 and spr_dir == -1)
            {
                hsp -= 0.8 * spr_dir;
            }
            break;
    }
}
timer += 1;