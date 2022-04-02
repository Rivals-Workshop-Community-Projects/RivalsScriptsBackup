//hitbox_update
switch(attack)
{
	case AT_FSPECIAL:
		with (player_id)
		{
			other.x = x + x_hand;
			other.y = y_hand;
			
			if (grab_id != noone) or (window == 3) or !(((state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR)) and (attack == AT_FSPECIAL))
			{
				other.destroyed = true;
			}
		}
	break;
    case AT_DSTRONG:
        if (!free) or (hsp == 0)
        {
            destroyed = true;
            
            var hit = spawn_hit_fx( x, y, 195 );
            hit.pause = 9;
            sound_play(asset_get("sfx_waterhit_heavy2"))
            
            y = 5000;
        }
        
        if (image_index > 2)
        {
            image_index = 2;
        }
        
        proj_angle = find_angle(x,y,x + hsp, y + vsp) + 180 * (spr_dir == -1)
        
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
    break;
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
