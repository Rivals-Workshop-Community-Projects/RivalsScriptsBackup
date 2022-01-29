if(attack == AT_USPECIAL_2)
{
    depth = 10;
    if((player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && player_id.attack == AT_USPECIAL_2 && player_id.window == 1|| player_id.state == PS_RESPAWN || was_parried && !free)
    {
        sound_play(asset_get("sfx_abyss_seed_land"), false, noone, 0.7, 2);
        destroyed = true;
    }
    with(oPlayer)
    {
        if(url == other.player_id.url && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && !specEnhanced && attack == AT_FSPECIAL && window == 2 && window_timer == 1)
        {
            if(collision_circle(other.x,other.y-60,40,id,false,false))
            {
                with(other)
                {
                    hsp += 2*other.spr_dir;
                    sound_play(asset_get("sfx_coin_capture"), false, noone, 0.6, 1.2);
                    sfx = spawn_hit_fx(x,y-60, 194);//FLASH
                    sfx.depth = -9;
                }
                white_flash_timer = 8;
                specEnhanced = true;
                vsp = -10;
                hsp = 5*spr_dir;
                afterImageTimer = 18;
                attack_end();
                set_attack(AT_FSPECIAL_AIR);
            }
        }
    }
}

if(attack == AT_NSPECIAL)
{
    depth = 10;
    if(!free)
    {
        transcendent = true;
        proj_angle = 0;
        if(sprite_index == sprite_get("chair_toss"))
        {
            sprite_index = sprite_get("chair_idle");
            sound_play(asset_get("sfx_tow_anchor_land"), false, noone, 0.8, 2);
        }
    }
    else if(sprite_index == sprite_get("chair_toss"))
        proj_angle -= 25;

    if(sprite_index == sprite_get("chair_idle"))
    {
        proj_break = 1;
        for(i = 0; i < 4; i++)
            can_hit[i+1] = false;
        grav = 2;
    }
    
    if((player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && player_id.attack == AT_NSPECIAL && player_id.state_timer == 1 || player_id.state == PS_RESPAWN || was_parried && !free)
    {
        sound_play(asset_get("sfx_abyss_seed_land"), false, noone, 0.7, 2);
        destroyed = true;
    }
    with(oPlayer)
    {
        if(url == other.player_id.url && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && !specEnhanced && attack == AT_FSPECIAL && window == 2 && window_timer == 1)
        {
            if(collision_circle(other.x,other.y-20,30,id,false,false))
            {
                white_flash_timer = 8;
                vsp -= 1;
                hsp += 3.5*spr_dir;
                specEnhanced = true;
                with(other)
                {
                    proj_angle = 0;
                    sprite_index = sprite_get("chair_idle");
                    spr_dir = -other.spr_dir;
                    hsp += 5*other.spr_dir;
                    sound_play(asset_get("sfx_coin_capture"), false, noone, 0.6, 1.2);
                    sfx = spawn_hit_fx(x,y-20, 194);//FLASH
                    sfx.depth = -9;
                }
            }
        }
    }
}
