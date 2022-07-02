//article_solid_update
exist_timer++;
state_timer++;
blink_timer+= -1;

if (state = 0)
{
vsp += 0.6;
}

if (player_id.sticky_count = 1 || player_id.sticky_count = 3)
{
	with (player_id)
	{
		oldest = other.id;
	}
}


angle = point_direction(x, y, player_id.x, player_id.y);

distance = point_distance(x, y, player_id.x, player_id.y);

strength = 1250 / distance;

if (player_id.meem_num > 0)
{
mangle = point_direction(x, y, obj_article_solid.x, obj_article_solid.y);

mdistance = point_distance(x, y, obj_article_solid.x, obj_article_solid.y);

mstrength = 600 / mdistance;
}



if (free == true)
{
	free_timer++;
}

if (free_timer = 120)
{
	state = 2;
	state_timer = 0;
}
if ((free == false || hit_wall = true) && state == 0)
{
    hsp = 0;
    vsp = 0;
    setState(1);
    
}

if (state == 1)
{
	if (state_timer < 3)
	{
		x = x + 1 * spr_dir;

		if (hit_wall == false && free == true)
		{
			setState(0);
		}
	}
	if (state_timer > 3)
	{

	}
	if (state_timer = 3)
	{
		stickx = x;
		 sticky = y;
	}
		
	}






if (state = 2)
{
	
	with (player_id)
	{
		if (sticky_count > 0)
		{
			sticky_count += -1;
		}
	}
	
	sound_play( sound_get ("sticky_jumper_explode1"));	
	if (player_id.free != true)
	{
		strength = strength / 4;
	}
	
	if (strength > 20)
	{
		strength = 20;
	}
	
	if (strength > 5)
	{
	
	
    player_id.hsp = hsp + lengthdir_x(strength, angle);
    player_id.vsp = vsp + lengthdir_y(strength, angle);
	}
	
	if (hit != noone)
	{
///			if (hit.free != true)
///{
///		estrength = estrength / 1.5;
///	}


	
	if (estrength > 6)
	{
		estrength = 6;
	}
	
	if (estrength > 2 && explodestickies = 0)
	{
	
	
    hit.hsp = lengthdir_x(estrength, eangle) - (5 * hit.spr_dir);
    hit.vsp = lengthdir_y(estrength, eangle) - 5;
	}	
	}
    if (player_id.meem_num > 0)
    {
	
	if (obj_article_solid.free != true)
	{
		mstrength = mstrength / 4;
	}
	
	if (mstrength > 20)
	{
		mstrength = 20;
	}
	
	if (mstrength > 3)
	{
	
	
	
    obj_article_solid.hsp = hsp + lengthdir_x(mstrength, mangle);
    obj_article_solid.vsp = vsp + lengthdir_y(mstrength, mangle);
        obj_article_solid.spr_dir = obj_article_solid.spr_dir * -1;
        player_id.meem_limit += -250;
    }
    }
    

    state = 3;
    state_timer = 0;
    
}


if (state = 3 && state_timer > 10)
{

	 instance_destroy();
	exit;
}




#define setState(new_state) //This custom function makes it easier to switch states. You can't use it outside of articleX_update.gml; if you want to do this from the player's update.gml or something, just copy the contents of this to the with statement.

state = new_state;
state_timer = 0;