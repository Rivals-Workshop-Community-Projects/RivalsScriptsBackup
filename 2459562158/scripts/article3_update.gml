//article3_update

player_id.move_cooldown[AT_DSPECIAL] = 10;

if (last_state != state)
{
    last_state = state;
    state_timer = 0;
}
state_timer += 1;


if (aimed_id != noone)
{
	if (aimed_id.state == PS_RESPAWN) or (aimed_id.state == PS_DEAD) or ((state == 1) and (state_timer > 110))
	{
		aimed_id = noone; 
	}
}

if (aimed_id != noone)
{
	x_target = aimed_id.x + aimed_id.hsp;
	y_target = aimed_id.y + aimed_id.vsp - 30;
}

switch(state)
{
    case 0:
       image_index += im_spd;
       
       if (image_index >= 4)
       {
           state = 1;
       }
    break;
    case 1:
       
        
        if (state_timer < 30) or (aimed_id != noone) 
        {
            angle_to = find_angle(x,y,x_target,y_target);
            
            is_min[0] = abs(angle_to - angle); 
            is_min[1] = abs((angle_to + 360) - angle)
            is_min[2] = abs((angle_to - 360) - angle)
            
            angle_min = min(is_min[0], is_min[1], is_min[2] )
            
            if (angle_min == is_min[1])
            {
                angle_to = (angle_to + 360)
            }
            else if (angle_min == is_min[2])
            {
                angle_to = (angle_to - 360) 
            }
            
        }
        
        angle += (angle_to - angle) / 8
        
        if (state_timer < 30)
        {
            hsp += (0 - hsp ) / 25;
            vsp += (max_fall - vsp ) / 18;
        }
        else
        {
            
            if (aim_spd < aim_spd_max)
            {
                aim_spd += aim_acc;
            }
            
            hsp = lengthdir_x(aim_spd,angle);
            
            vsp = lengthdir_y(aim_spd,angle);
            
            
            image_index += im_spd;
        }
        
    break;
}


image_angle = angle;

if (x < -200) or (x > room_width + 200 ) or (y < -200) or (y > room_height + 200)
{
    destroyed = true;
}

if(place_meeting(x + hsp,y + vsp,asset_get("par_block")))  
{
    explode = true;
}

with (oPlayer)
{
    if (self != other.player_id) and (state != PS_DEAD) and (state != PS_RESPAWN) and (self != other.player_id.grab_id) and ((collision_circle(other.x,other.y,16,hurtboxID,false,true)))
    {
        if (collision_circle(other.x,other.y,16,self,false,false)) //(place_meeting(x,y,other))
        {
            other.explode = true;
        }
    }
}

if (!free)
{
    explode = true;
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
          explode = true;
        }
    }
}


if (explode)
{
	
    with(player_id)
    {    
         spawn_hit_fx( other.x, other.y, missile_explode_fx)
    }
    
    sound_play(asset_get("sfx_ori_grenade_hit"))
    
    create_hitbox( AT_DSPECIAL, 1, x, y );
	destroyed = true;
}

if (destroyed)
{
    instance_destroy(self);
}

#define find_angle(x, y, x_to,y_to)


xd = argument2 - argument0;
yd = argument3 - argument1;

if (sign(xd) == sign(yd))
{
	if (yd != 0)
	{
		var angle = darctan(xd / yd) - 90 + (yd < 0) * 180;
	}
	else
	{
		var angle = 0;
	}
	
}
else
{
	if (yd != 0)
	{
		
		var angle = darctan(xd / yd) + 270 + 180 * (yd < 0)
	}
	else
	{
		var angle = 180 * (xd < 0);
	}
	
}
return angle;
