//article1_update
if ((x+hsp > room_width || x+hsp < 0) || (y+vsp > room_height))
{
    instance_destroy();   
}

switch(Mayacolor)
{
    case 0:
        sprite_index = sprite_get("Maya0");
        break;
    case 1:
        sprite_index = sprite_get("Maya1");
        break;
    case 2:
        sprite_index = sprite_get("Maya2");
        break;
    case 3:
        sprite_index = sprite_get("Maya3");
        break;
    case 4:
        sprite_index = sprite_get("Maya4");
        break;
    case 5:
        sprite_index = sprite_get("Maya5");
        break;
    case 6:
        sprite_index = sprite_get("Maya6");
        break;
    case 7:
        sprite_index = sprite_get("Maya7");
        break;
    case 8:
        sprite_index = sprite_get("Maya8");
        break;
    case 9:
        sprite_index = sprite_get("Maya9");
        break;
    case 10:
        sprite_index = sprite_get("Maya10");
        break;
    case 11:
        sprite_index = sprite_get("Maya11");
        break;
    case 12:
        sprite_index = sprite_get("Maya12");
        break;
    case 13:
        sprite_index = sprite_get("Maya13");
        break;
    case 14:
        sprite_index = sprite_get("Maya14");
        break;
    case 15:
        sprite_index = sprite_get("Maya15");
        break;
}

if (timer >= 0)
{
    switch(phase)
    {
        case 0:
            switch(spr_dir)
            {
                case 1:
                    switch(position_meeting(x + (130 * spr_dir), y + 100, asset_get("par_block")))
                    {
                        case true:
                            stop = 0;
                            switch(timer < 61)
                            {
                                case true:
                                    stop = 0;
                                    break;
                                case false:
                                    stop = 1;
                                    break;
                            }
                            break;
                        case false:
                            stop = 1;
                            break;
                    }
                    switch(stop)
                    {
                        case 0:
                            hsp = 3 * spr_dir;
                            if (timer mod 6 == 0)
                            {
                                create_hitbox(AT_FSTRONG, 1, x + (80 * spr_dir), y + 35);
                                sound_play(asset_get("sfx_swipe_weak2"));
                            }
                            break;
                        case 1:
                            if (timer2 < 40)
                            {
                                loop = 1;
                                if (timer2 == 1)
                                {
                                    image_index = 9;
                                    hsp = (4 * spr_dir);
                                }
                                else if (timer2 = 3)
                                {
                                    create_hitbox(AT_FSTRONG, 2, x + (100 * spr_dir), y + 65);
                                }
                                if (hsp > 0)
                                {
                                    hsp -= (0.25 * spr_dir);
                                }
                                timer2++;
                            }
                            else if (timer2 == 40)
                            {
                                timer2 = 0;
                                phase = 1;   
                            }
                            break;
                    }
                    break;
                case -1:
                    switch(position_meeting(x + (140 * spr_dir), y + 100, asset_get("par_block")))
                    {
                        case true:
                            stop = 0;
                            switch(timer < 61)
                            {
                                case true:
                                    stop = 0;
                                    break;
                                case false:
                                    stop = 1;
                                    break;
                            }
                            break;
                        case false:
                            stop = 1;
                            break;
                    }
                    switch(stop)
                    {
                        case 0:
                            hsp = 3 * spr_dir;
                            if (timer mod 6 == 0)
                            {
                                create_hitbox(AT_FSTRONG, 1, x + (80 * spr_dir), y + 25);
                                sound_play(asset_get("sfx_swipe_weak2"));
                            }
                            break;
                        case 1:
                            if (timer2 < 40)
                            {
                                loop = 1;
                                if (timer2 == 1)
                                {
                                    image_index = 9;
                                    hsp = (4 * spr_dir);
                                }
                                else if (timer2 = 3)
                                {
                                    create_hitbox(AT_FSTRONG, 2, x + (100 * spr_dir), y + 65);
                                }
                                if (hsp < 0)
                                {
                                    hsp -= (0.25 * spr_dir);
                                }
                                timer2++;
                            }
                            else if (timer2 == 40)
                            {
                                timer2 = 0;
                                phase = 1;   
                            }
                            break;
                    }
            }
            break;
        case 1:
            loop = 2;
            timer2 += 1;
            switch(timer2)
            {
                case 48:
                    timer2 = 0;
                    phase = 2;
                    break;
            }
            break;
        case 2:
            hsp = -4 * spr_dir;
            timer2 += 1;
            if (timer2 > 5 and timer2 mod 5 == 0)
            {
                image_alpha -= 0.2;
            }
            if (image_alpha == 0)
            {
                instance_destroy();
            }
            break;
    }
}
if (instance_exists(asset_get("obj_article2")))
{
    timer += 1;
    switch(loop)
    {
        case 0:
            if (timer mod 4 == 0)
            {
                image_index++;
                if (image_index == 8)
                {
                    image_index = 1;
                }
            }
            break;
        case 1:
            if (timer mod 4 == 0)
            {
                if (image_index < 12)
                {
                    image_index++;
                }
            }
            break;
        case 2:
            if (timer mod 4 == 0)
            {
                image_index++;
                if (image_index == 32)
                {
                    image_index = 25;
                }
            }
            break;
    }
}






