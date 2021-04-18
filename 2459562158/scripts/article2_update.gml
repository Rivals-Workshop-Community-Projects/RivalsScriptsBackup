//article2_update
// slave
player_id.move_cooldown[AT_DAIR] = 2;

if (last_state != state)
{
    last_state = state;
    state_timer = 0;
}
state_timer += 1;

switch(state)
{
    case 0:// falling
    
   
    vsp += (max_fall - vsp) / 10;

   
    max_fall = max_fall_ref;
    
    var nitori_url = player_id.url;
    
    with (obj_article_platform)
    {
        if (player_id.url == other.player_id.url)
        {
            if (state == 1)
            {
                var size = sprite_get_width(sprite_index) / 2 - 20;
                with (other)
                {
                    if (collision_rectangle(other.x - size, other.y, other.x + size, room_height,self,false,false))
                    {
                        max_fall = max_fall_geyser;
                    }
                }
            }
        }
    }
    
    
    
    
    if (my_hitbox == noone)
    {
        my_hitbox = create_hitbox( AT_DAIR, 1, x + floor(hsp), y + floor(vsp) )
    }
    else
    {
        if (!instance_exists(my_hitbox))
        {
            my_hitbox = noone;
        }
        else
        {
            if (!hitstop)
            {
                my_hitbox.x = x + hsp;
                my_hitbox.y = y + vsp;
            }
            else
            {
                my_hitbox.x = x;
                my_hitbox.y = y;
            }
        }
    }
    
    
    while(place_meeting(x,y + vsp,asset_get("par_block")))
    {
        vsp -= 1;
        state = 1;
    }
    break;
    case 1:
    if (state_timer == 1)
    {
        vsp = -5
        sound_play(asset_get("sfx_tow_anchor_land"))
        
        shake_camera( 5, 6)
        
        instance_destroy(my_hitbox);
        my_hitbox = noone;
    }
    
    if (vsp < inactive_max_fall)
    {
        vsp += inactive_grav
    }
    
    break;
}



with (asset_get( "plasma_field_obj" )) {
    with (other.id) {
        var _team = get_player_team( get_instance_player( other ));
        if (_team != get_player_team( player )
        && point_distance(
        x + 10 * spr_dir,
        y,
        get_instance_x( other ),
        get_instance_y( other )
        ) < 180) {
           destroyed = true;
        }
    }
}


if (y > room_height + 50)
{
    destroyed = true;  
}

if (destroyed)
{
    instance_destroy(my_hitbox)
    instance_destroy(self);
}
