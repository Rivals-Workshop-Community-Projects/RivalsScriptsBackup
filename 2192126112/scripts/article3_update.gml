//article_solid_update
exist_timer++;
state_timer++;
blink_timer += -1;

if (state = 0)
{
vsp += 0.6;
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


with (player_id)
{

if (attack = AT_NSPECIAL && window == 1 && window_timer = 1) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
{
    other.state = 2;
    other.state_timer = 0;
}
}


if (free == true)
{
	free_timer++;
}

if (free_timer = 120)
{
	player_id.det_timer = 5;
		player_id.sticky_oldest = 3;
}
if (free == true)
{
	free_timer++;
}

if (state == 1 && player_id.sticky_oldest == 3 && blink_timer > 0)
{
	sprite_index = sprite_get("highlightsticky");
}
else
{
	sprite_index = sprite_get("sticky");
	if (blink_timer < -30)
	{
	blink_timer = 30;
	}
		
}


if (state = 2)
{
	
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
    instance_destroy();
	exit;
}





#define setState(new_state) //This custom function makes it easier to switch states. You can't use it outside of articleX_update.gml; if you want to do this from the player's update.gml or something, just copy the contents of this to the with statement.

state = new_state;
state_timer = 0;

// vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define window_time_is(frame) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer == frame and !hitpause
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!