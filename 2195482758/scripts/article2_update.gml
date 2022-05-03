// Explosion article


// Get sprite
if(fc_timer <= 0)
{
    with(player_id)
    {
        var single_explosion = sprite_get("explosion_single");
        var double_explosion = sprite_get("explosion_double");
        var triple_explosion = sprite_get("explosion_triple");
         
        var single_firecracker = sprite_get("firecracker_single");
        var double_firecracker = sprite_get("firecracker_double");
        var triple_firecracker = sprite_get("firecracker_triple");
    }
    
    switch(explosions_to_do)
    {
        case 1:
        sprite_index = single_explosion;
        break;
        case 2:
        sprite_index = double_explosion;
        break;
        case 3:
        sprite_index = triple_explosion;
        break;
    }
    }
    else
    {
    switch(explosions_to_do)
    {
        case 1:
        sprite_index = single_firecracker;
        break;
        case 2:
        sprite_index = double_firecracker;
        break;
        case 3:
        sprite_index = triple_firecracker;
        break;
    }

 image_index = img_ind;
}

// Delay timer (can be manually overridden)
if(fc_timer <= 0)
{
// Animate
image_index = 14-((((despawn_timer - 0) * (14 - 0)) / (max_despawn_timer - 0)) + 0)

// Self explanitory
ignores_walls = true;
hit_wall = false;


x = floor(x);
y = floor(y);

// Set up values based on whether or not the explosion should have knockback
with(player_id)
{
    if(expl_can_hit)
    {
        set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 2.5);
        set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 2.5);
    }
    else
    {
        set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 0);
        set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 0);
    }
    
    // if(other.explosions_to_do == 3 && expl_can_hit)
    // {
    //     set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 4);
    //     set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 2);
    // }
}

// Get the current animation frame, and spawn 3 hitboxes accordingly
switch(ceil(image_index))
{
    case 2:
    if(fc_hitbox[0] == noone)
    {
        with(player_id) sound_play(sound_get("tenru_firecracker"));
        
        if(explosions_to_do == 1)
        {
            fc_hitbox[0] = create_hitbox(AT_NSPECIAL, 2, x-4*(-spr_dir), y);
            if(kirby != noone) fc_hitbox[0].can_hit[kirby.player] = false;
        }
        else
        {
            fc_hitbox[0] = create_hitbox(AT_NSPECIAL, 2, x+8*(-spr_dir), y-16);
            if(kirby != noone) fc_hitbox[0].can_hit[kirby.player] = false;
        }
        
        fc_hitbox[0].player = player;
        fc_hitbox[0].can_hit[player] = false;
    }
    break;
    case 4:
    if(fc_hitbox[1] == noone && explosions_to_do > 1)
    {
        with(player_id) sound_play(sound_get("tenru_firecracker"));
        fc_hitbox[1] = create_hitbox(AT_NSPECIAL, 2, x-24*(-spr_dir), y-14);
        if(kirby != noone) fc_hitbox[1].can_hit[kirby.player] = false;
        
        fc_hitbox[1].player = player;
        fc_hitbox[1].can_hit[player] = false;
    }
    break;
    case 6:
    if(fc_hitbox[2] == noone && explosions_to_do > 2)
    {
        with(player_id) sound_play(sound_get("tenru_firecracker"));
        
        fc_hitbox[2] = create_hitbox(AT_NSPECIAL, 2, x, y+4);
        if(kirby != noone) fc_hitbox[2].can_hit[kirby.player] = false;
       
        fc_hitbox[2].player = player;
        fc_hitbox[2].can_hit[player] = false;
    }
    break;

}

// Destroy after a timer 
if(despawn_timer == 0)
{
    instance_destroy();
}
else
{
    despawn_timer--;
}
}
else
{
    fc_timer--;
}
