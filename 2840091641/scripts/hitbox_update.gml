//hitbox_update pHitBox
if(!free or place_meeting(x, y, asset_get("par_block")))//run once hit ground or wall
    {
        createSelfKnockback(player_id.troll)
        sound_play(asset_get("sfx_abyss_explosion_big"));
        instance_destroy();
    }
    
#define createSelfKnockback(isTroll)
        selfDir = point_direction(x, y, player_id.x, player_id.y + 16);
        selfDist = point_distance(x, y, player_id.x, player_id.y + 16);
        if(selfDist < player_id.maximumBlastRadius) //checks if you're in range to get self knockback
        {
            player_id.free = true;
            speedmod = selfDist/player_id.maximumBlastRadius//creates an inverse for damage and knockback taken
            if(!isTroll)
            {
                take_damage(player, -1, player_id.rocketSelfDamage);
                spawn_hit_fx(x, y, 141);
                create_hitbox(AT_NSPECIAL, 2, x, y);
            }
            else
            {
                spawn_hit_fx(x, y, 13);
            }
            
            player_id.vsp -= player_id.rocketJumpSpeed * sin(degtorad(selfDir)) * speedmod;
            player_id.hsp += player_id.rocketJumpSpeed * cos(degtorad(selfDir)) * speedmod;
            if(place_meeting(x, y, player_id))
            {
                player_id.vsp = -player_id.rocketJumpSpeed;
            }
            if(player_id.free = 1)
            {
                player_id.rocketJumping = true;
            }
        }