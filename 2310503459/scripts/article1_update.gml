if (state == 2)
{
    if (frame_update = 3 && image_index != 0)
    {
        image_index++;
        frame_update = 0;
    }
    else if (frame_update = 10 && image_index = 0)
    {
        image_index++;
        frame_update = 0;
    }
    else
    {
    frame_update++;
    }
}

if (state == 0)
{
    prev_x = x;
    x = lerp(x, player_id.x, 0.1);
    y = lerp(y, player_id.y - 160, 0.4);
    image_angle = prev_x * -4 - x * -4;
}

if (player_id.balloonstate = 2 || player_id.state == PS_DEAD)
{
    state = 2;
    state_timer++;
}

if (image_index == 2 && frame_update = 0)  
{
    sound_play(asset_get("sfx_ell_uspecial_explode"));
    create_hitbox(AT_NSPECIAL, floor(1), floor(x), floor(y-16));
}

if (place_meeting(x, y, asset_get("plasma_field_obj")))
{
    player_id.balloonout = false;
    player_id.balloonstate = 2;    
    player_id.move_cooldown[AT_NSPECIAL] = 800;
    instance_destroy();
    exit;
}

if (state == 0)  
{
    create_hitbox(AT_NSPECIAL, floor(2), floor(x), floor(y-19));
}

if (image_index == 10) 
{
    instance_destroy();
    exit;
}