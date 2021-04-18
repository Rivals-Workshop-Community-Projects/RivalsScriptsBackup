//article1_update
// cucumber
player_id.move_cooldown[AT_NSPECIAL] = 24;

if (last_state != state)
{
    last_state = state;
    state_timer = 0;
}


switch(state)
{
    case 0:// falling
        sprite_index = sprite_get("cucumber")
        
        vsp += (15 - vsp) / 30;
        hsp += (0 - hsp) / 50;
        image_angle += rot_spd * -spr_dir;
        
        
         var nitori_url = player_id.url;
        with (obj_article_platform)
        {
            if (player_id.url == other.player_id.url)
            {
                if (state == 1)
                {
                    with (other)
                    {
                        if (collision_rectangle(other.x - 32, other.y, other.x + 32, room_height,self,false,false))
                        {
                           vsp -= 1;
                        }
                    }
                }
            }
        }
        
        with (oPlayer)
        {
            if (self != other.player_id) and (state != PS_DEAD) and (state != PS_RESPAWN)
            {
                if (collision_circle(other.x,other.y,20,self,false,false)) //(place_meeting(x,y,other))
                {
                    other.state = 1;
                }
            }
        }
        
        if (!free) or (hsp == 0)
        {
            state = 1;
        }
    break;
    case 1:
        sprite_index = sprite_get("nothing")
        vsp = 0;
        hsp = 0;
        switch(state_timer)
        {
            case 0:
                spawn_hit_fx( x, y, 195 )
                sound_play(asset_get("sfx_swish_medium"))
                sound_play(asset_get("sfx_watergun_splash"))
                
                create_hitbox( AT_NSPECIAL, 1, x, y )
                
                x += 30 * spr_dir;
                y -= 20;
            break;
            case 6:
                spawn_hit_fx( x, y, 195 )
                sound_play(asset_get("sfx_swish_medium"))
                
                create_hitbox( AT_NSPECIAL, 2, x, y )
                 
                x += 30 * spr_dir;
                y += 10;
                
                if (rep > 0)
                {
                    state_timer = -5;
                    rep -= 1;
                }
            break;
            case 12:
                spawn_hit_fx( x, y, 161 )
                destroyed = true;
                sound_play(asset_get("sfx_swish_heavy"))
                
                create_hitbox( AT_NSPECIAL, 3, x, y )
            break;
        }
    break;
}

if (y > room_height + 50)
{
     destroyed = true;
}

state_timer += 1;



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
           state = 1;
        }
    }
}


if (destroyed)
{
    instance_destroy(self);
}
