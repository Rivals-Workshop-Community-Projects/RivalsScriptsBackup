
// APPLE BOUNCE

switch (attack)
{
	case AT_TAUNT_2:
		if (!free)
		{
			vsp = -vsp_mem / 2;
		}
		else
		{
			vsp_mem = vsp;
			if (abs(vsp_mem) < 0.5)
			{
				vsp_mem = 0;
			}
		}
	break;
	case AT_NSPECIAL:
		// setting the hitbox the the same location as his yinyang
		/*if (instance_exists(my_yinyang)){
			x = my_yinyang.x + my_yinyang.hsp;
			y = my_yinyang.y + my_yinyang.vsp;
		} else{
			destroyed = true;
		}*/
		
		/*
		if (my_yinyang.hsp * my_yinyang.spr_dir > 0)
		{
			kb_angle = 65  ;
		}
		else
		{
			kb_angle = 125;
		}
		*/
	break;
	case AT_DSTRONG:
		if  ((hbox_num == 1) or (hbox_num == 3))
		{
			with (player_id)
			{
				var time = get_hitbox_value(AT_DSTRONG, other.hbox_num, HG_LIFETIME)
				var deyoffset = get_hitbox_value(AT_DSTRONG, other.hbox_num, HG_HITBOX_Y);
				var new_yoffset = get_hitbox_value(AT_DSTRONG, other.hbox_num + 1, HG_HITBOX_Y);
				var xoffset = get_hitbox_value(AT_DSTRONG, other.hbox_num + 1, HG_HITBOX_X) * spr_dir ;
				
				if (other.hitbox_timer == time - 1)
				{
					create_hitbox( AT_DSTRONG, other.hbox_num + 1, other.x + xoffset,other.y - deyoffset + new_yoffset);
				}
			}
		}
	break;
	case AT_DSPECIAL:
	case AT_FSPECIAL_AIR:
	case AT_FSPECIAL_2:
	case AT_DSPECIAL_2:
		if (!free) //or (hsp == 0)
		{
				destroyed = true;
		}
	break;
	case AT_FSPECIAL:
		if (!has_rune("L"))
		{
			if (!free) //or (hsp == 0)
			{
					destroyed = true;
			}
		}
		else
		{
			proj_angle = find_angle(0,0,hsp,vsp)
			
			if (y < view_get_yview())
			{
			    if (vsp < 0)
			    {
			        vsp = abs(vsp);
			    }
			}
			
			if (y > view_get_yview() + view_get_hview())
			{
			    if(vsp > 0)
			    {
			        vsp = -abs(vsp);
			    }
			}
			
			if (x < view_get_xview())
			{
			    if (hsp < 0)
			    {
			        hsp = abs(hsp);
			    }
			}
			if (x > view_get_xview() + view_get_wview()) 
			{
			    if (hsp > 0)
			    {
			        hsp = -abs(hsp);
			    }
			}
		}
	break;
	
}


switch(attack)
{
	case AT_DSPECIAL:
	/*case AT_FSTRONG:*/
		if (mem_spd > 0)
	    {
	    	mem_spd -= 0.1
	    }
	    
	    hsp = lengthdir_x(mem_spd,mem_angle);
	    vsp = lengthdir_y(mem_spd,mem_angle);
	break;
	case AT_FSPECIAL_2:
	case AT_DSPECIAL_2:
		proj_angle += 2;
		
		var target = noone;
		with(oPlayer)
		{
			if (get_player_team(self) != get_player_team(other.player_id))
			{
				if (collision_circle(x,y,280,other, false,true))
				{
					target = self;
				}
			}
			
		}
		
		with(player_id)
		{
			var max_acc = get_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_HSPEED);
		}
		
		if (target != noone)
		{
			var ang = find_angle(x,y,target.x,target.y - 45);
			
			var acc = 0.1
			hsp += lengthdir_x(acc,ang);
			if (abs(hsp) > max_acc)
			{ 
				hsp = max_acc * sign(hsp)
							
			}
			vsp += lengthdir_y(acc,ang);
			if (abs(vsp) > max_acc)
			{ 
				vsp = max_acc * sign(vsp)
							
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





