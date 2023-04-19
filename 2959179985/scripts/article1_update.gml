if (free)
{
    vsp = 3.8;
}
else if (!free)
{
    vsp = 0;
}
if (hold == 1)
{
    hsp = 12 * player_id.spr_dir;
    hold_timer++
    if (hold_timer >= 10)
    {
        hold = 0;
        phase = 0;
        hsp = 0;
    }
}
if (free)
{
    sprite_index = sprite_get("bento_air")
    aerial = 1;
}
else if (!free and aerial == 1)
{
    sprite_index = sprite_get("bento")
    if (transition == 0)
    {
        image_index = 3;
        transition = 1;
    }
    if (image_index < 5)
    {
        if (timer mod 4 == 0)
        image_index++;
    }
}
switch(phase)
{
    case 0:
        if (!free or free)
        {
            timer++;
            if (timer <= 20)
            {
                if (image_index < 5)
                {
                    if (anim_timer mod 4 == 0)
                    {
                        image_index++;
                    }
                }
                anim_timer++;
            }
            else if (timer > 20)
            {
                phase = 1;
                timer = 0;
            }
        }
        break;
    case 1:
        timer++;
        if (timer > 420)
        {
            phase = 2;
            timer = 0;
        }
        with(oPlayer)
        {
            if (player != other.player)
            {
                if (place_meeting(x, y, other))
                {
                    other.explode = 1;
                }
            }
        }
        if (explode == 1)
        {
            create_hitbox(AT_DSPECIAL, 1, x, y);
            spawn_hit_fx(x, y - 10, 143);
            sound_play(asset_get("sfx_ell_explosion_medium"), 0, 0, 0.8, 1.6)
            instance_destroy();
            exit;
        }
        break;
    case 2:
        timer++;
        if (timer <= 18)
        {
            if (anim_timer mod 6 == 0)
            {
                image_index++;
            }
            anim_timer++;
        }
        else if (timer > 18)
        {
            instance_destroy();
            exit;
        }
        break;
    case 3:
        image_alpha -= 0.25
        if (image_alpha < 0.1)
        {
            instance_destroy();
            exit;
        }
        break;
}