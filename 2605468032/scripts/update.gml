//update
if(instance_exists(bubbleg))
{
    if (get_player_color(player) == 7)
    {
        bubbleg.EA = 1;
    }
    if (bubbleg.bloop = 1)
    {
        shrimp_set = 1;
    }
    if (follow == 1)
    {
        bubbleg.x = x - (1 * spr_dir) ;
        bubbleg.y = y + 5;
    }
    if (bubbleg.state == 9)
    {
        shrimp_set = 0;
        if (bubbleg.destroy_timer == 1)
        {
            if (bubbleg.EA == 1)
            spawn_hit_fx(bubbleg.x, bubbleg.y, bubble_pop_ea);
            else
            spawn_hit_fx(bubbleg.x, bubbleg.y, bubble_pop);
        }
    }
    else if (bubbleg.state == 8)
    {
        shrimp_set = 0;
        if (bubbleg.destroy_timer == 1)
        spawn_hit_fx(bubbleg.x, bubbleg.y, bubble_pop2);
    }
    if(instance_exists(bubbleg.bubbled_playerid))
    {
        if (bubbleg.bubbled_playerid == self)
        {
            shrimp_set = 0;
        }
        move_cooldown[AT_DSPECIAL] = 20;
        if (bubbleg.bloop == 1)
        {
            pikmin = bubbleg.bubbled_playerid
            bubbleg.bloop = 0;
        }
    }
}

if (instance_number(oPlayer) > 1)
{
    with(oPlayer)
    {
        if (state == PS_RESPAWN)
        {
            wet = 0;
        }
    }
}
if (pikmin != noone)
{
    y_offset = sprite_get_height(pikmin.hurtbox_spr) / 6;
    if (pikmin.state != PS_RESPAWN)
    pikmin_time--
    if (pikmin_time mod 16 == 0)
    {
        pikmin_frame++;
        pikmin_sound = 1
    }
    else if (pikmin_frame mod 4 == 2)
    {
        if (pikmin_sound == 1)
        {
            spawn_hit_fx(pikmin.x - (20 * pikmin.spr_dir), pikmin.y - (y_offset + 25), 301);
            take_damage(pikmin.player, player, 2);
            sound_play(asset_get("sfx_orca_bite"))
            pikmin_sound = 0;
        }
    }
    
    if (pikmin_time <= 0 or pikmin.state == PS_RESPAWN)
    {
        if (pikmin.state != PS_RESPAWN)
        {
            create_hitbox(AT_FSPECIAL, 2, pikmin.x - (20 * pikmin.spr_dir), pikmin.y - floor(y_offset * 2))
        }
        else if (pikmin.state == PS_RESPAWN)
        {
            shrimp_set = 0;
        }
    
        pikmin = noone
        pikmin_time = 320;
        pikmin_frame = 0;
    }
}
if (state != PS_ATTACK_AIR and state != PS_ATTACK_GROUND)
{
    follow = 0;
    pop = 0;
    shrimp = shrimp_set;
    nspec_charge = 0;
    if ((state == PS_RESPAWN or state == PS_DEAD) and pikmin != noone)
    {
        
        create_hitbox(AT_FSPECIAL, 2, pikmin.x - (20 * pikmin.spr_dir), pikmin.y - floor(y_offset * 2))
        
        pikmin = noone
        pikmin_time = 320;
        pikmin_frame = 0;
    }
}

if (free == false)
{
    fspec_use = 0;
}