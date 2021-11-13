// got parried

switch (my_hitboxID.attack )
{
    case AT_FSPECIAL:
    case AT_DAIR:
    case AT_NSPECIAL:
        parry_lag = 80;
    break;
    case AT_DSPECIAL:
        with (obj_article3)
        {
        	if (player_id == other)
        	{
        	    state = 2
        	    var ang = find_angle(x,y,player_id.x,player_id.y - 32);
        	    
        	    angle = ang
        	    
                hsp = lengthdir_x(18,ang);
        	    vsp = lengthdir_y(18,ang);
        	    
        	}
        }
    break;
}

with(obj_article_platform)
{
	if (player_id == other)
    {
       destroyed = true;
    }
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

