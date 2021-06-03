//sd

if attack == AT_FTILT || attack == AT_UAIR
{
    if hitbox_timer >= 20
    {
        hsp*=0.9;
        if length-hitbox_timer >= 0.1 && length-hitbox_timer <= 1
    	{
    		var mx = x;
    		var my = y;
    		with player_id
    		{
    			spawn_hit_fx(mx,my, bpop);
    		}
    	}
    }
}

if attack == AT_NSPECIAL && (hbox_num == 1 || hbox_num == 6)
{
	if (collision_line(x+30, y+2, x-30, y+2,asset_get("par_block"), false, true))
	{
		destroy_fx = 1;
		destroyed = true;
	}
}

//star cauldron attack
if attack == AT_NSPECIAL && hbox_num == 4
{
	destroy_fx = 1;
	
	if state == 0
	{
		image_index += 0.2;
		if atFrame(5)
			state = 1;
	}
	else if state == 1
	{
		image_index += 0.3;
		if atFrame(12)
			image_index = 5;
		if !place_meeting(x,y,player_id)
		{
			hsp += starAccel * (player_id.x < x ? -1: 1);
			y = lerp(y, player_id.y, 0.02);
			starAccel += starAccelAdd;
		}
		else
		{
			hsp = 0;
			image_index = 13;
			state = 2;
		}
	}
	else if state == 2
	{
		image_index += 0.5;
		if atFrame(image_number-1)
			destroyed = true;
	}
}

if attack == AT_NSPECIAL && hbox_num = 5
{
	if state == 0
	{
		image_index += 0.2;
		if atFrame(4)
		{
			state = 1;
			vsp = -4;
		}
	}
	else
	{
		image_index += 0.4;
		if atFrame(image_number)
			image_index = 4;
	}
}

#define atFrame(frame)
{
	return image_index >= frame;
}