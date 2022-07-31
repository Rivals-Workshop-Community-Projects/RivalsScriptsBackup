//hitbox_update pHitBox
if(!free or place_meeting(x, y, asset_get("par_block")))//run once hit ground or wall
{
    selfDir = point_direction(x, y, player_id.x, player_id.y + 16);
    selfDist = point_distance(x, y, player_id.x, player_id.y + 16);
    if(selfDist < 130) //checks if you're in range to get self knockback
    {
        player_id.free = true;
        speedmod = selfDist/130//creates an inverse for damage and knockback taken
        take_damage(player, -1, 8);
        player_id.vsp -= 13 * sin(degtorad(selfDir)) * speedmod;
        player_id.hsp += 13 * cos(degtorad(selfDir)) * speedmod;
        if(place_meeting(x, y, player_id))
        {
            player_id.vsp = -12;
        }
        if(player_id.free = 1)
        {
            player_id.rocketJumping = true;
        }
    }  
    sound_play(asset_get("sfx_abyss_explosion_big"));
    create_hitbox(AT_NSPECIAL, 2, x, y);
    spawn_hit_fx(x, y, 141);
    instance_destroy();
}