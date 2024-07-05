/*switch (mode)
{
    case 0:
        if (cooldown == 0)
        {
            anim_time++;
            if (anim_time mod 12 = 0)
            {
                image_index += 1;
            }
        }
        else if (cooldown == 1)
        {
            cooldown_timer++;
        }
        
        if (cooldown_timer >= 120)
        {
            dead = 1;
        }
        with (pHurtBox) {
            if (place_meeting(x, y, other)) {
                if ((playerID.state == PS_HITSTUN || playerID.state == PS_HITSTUN_LAND || playerID.state == PS_TUMBLE) and (playerID.hitpause = false) and (playerID.state_cat != SC_GROUND_COMMITTED and playerID.state_cat != SC_GROUND_NEUTRAL and playerID.invincible == false) and player != other.player)
                {
                    other.unfreeze = 1;
                }
            }
        }
        if (trigger == 1)
        {
            with(pHitBox)
            {
                if (player == other.player)
                {
                    if (attack == AT_BAIR or attack == AT_FSPECIAL or attack == AT_NSPECIAL)
                    {
                        if (knife_set == 2)
                        {
                            frozen = 2;
                            if (freeze_lockout == 1)
                            freeze_lockout += 1;
                        }
                    }
                }
            }
            trigger = 0;
        }
        break;
    case 1:
        if (cooldown == 0)
        {
            anim_time++;
            if (anim_time mod 12 = 0)
            {
                image_index += 1;
            }
        }
        else if (cooldown == 1)
        {
            cooldown_timer++;
        }
        
        if (cooldown_timer >= 120)
        {
            dead = 1;
        }
        with (pHurtBox) {
            if (place_meeting(x, y, other)) {
                if ((playerID.state == PS_HITSTUN || playerID.state == PS_HITSTUN_LAND || playerID.state == PS_TUMBLE) and (playerID.hitpause = false) and (playerID.state_cat != SC_GROUND_COMMITTED and playerID.state_cat != SC_GROUND_NEUTRAL and playerID.invincible == false) and player != other.player)
                {
                    other.unfreeze = 1;
                }
            }
        }
        
        with(pHitBox)
        {
            if (place_meeting(x, y, other))
            {
                if (player_id != other.player_id)
                {
                    other.destroy = 1;
                }  
            }
        }
        
        if (destroy == 1)
        {
            if (sound = 1)
            {
                var hit = spawn_hit_fx(x, y, 301)
                hit.pause = 8;
                sound_play(asset_get("sfx_shovel_hit_light2"));
                sound = 0;
            }
            with(pHitBox)
            {
                if (player_id == other.player_id)
                {
                    if (type == 2)
                    {
                        if (frozen == 1 )
                        destroyed = 1;
                    }
                }
            }
            destroy = 0;
        }
        //print("Unfreeze: " + string(unfreeze));
}*/
if (cooldown == 0)
{
    anim_time++;
    if (anim_time mod 12 = 0)
    {
        image_index += 1;
    }
}
else if (cooldown == 1)
{
    cooldown_timer++;
}

if (cooldown_timer >= 120)
{
    dead = 1;
}
with (pHurtBox) {
    if (place_meeting(x, y, other)) {
        if ((playerID.state == PS_HITSTUN || playerID.state == PS_HITSTUN_LAND || playerID.state == PS_TUMBLE) and (playerID.hitpause = false) and (playerID.state_cat != SC_GROUND_COMMITTED and playerID.state_cat != SC_GROUND_NEUTRAL and playerID.invincible == false) and player != other.player)
        {
            other.unfreeze = 1;
        }
    }
}

with(pHitBox)
{
    if (place_meeting(x, y, other))
    {
        if (player_id != other.player_id)
        {
            other.destroy = 1;
        }  
    }
}

if (dead == 1)
{
    if (explode == 1)
    {
        create_hitbox(AT_DSPECIAL_2, 1, x + 3, y);
        spawn_hit_fx(x + 5, y + 32, player_id.tp_effect);
        sound_play(sound_get("uspecial"));
    }
    else
    {
        spawn_hit_fx(x, y, 301);
        sound_play(asset_get("sfx_zetter_shine"));     
    }
    instance_destroy();
    exit;
}
//print("Unfreeze: " + string(unfreeze));