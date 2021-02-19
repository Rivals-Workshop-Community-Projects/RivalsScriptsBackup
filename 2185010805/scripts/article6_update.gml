statetimer ++;

if statetimer=500
	{
	state=1;
	image_index=0;
	spritetimer = 0;
	sprite_index = sprite_get("platform_die");
	}

if statetimer=1500
	{
	state=3;
	image_index=0;
	spritetimer = 0;
	sprite_index = sprite_get("platform_spawn");
	y-=800;
	}
	
if statetimer=2000
	{
	statetimer=0;
	}

spritetimer  ++;
if state=0
	{
	if spritetimer = 8 
		{
		spritetimer = 0;
		if image_index=36
			{
			image_index=0;
			}
		else
			{
			image_index+=1;
			}
		}
	}
else if state=1
	{
	if spritetimer = 6 
		{
		spritetimer = 0;
		if image_index = 7
			{
			state=2;
			y+=800;
			}
		else
			{
			image_index+=1;
			}
		}
	}
else if state=3
	{
	if spritetimer = 6
		{
		spritetimer = 0;
		if image_index = 13
			{
			state=0;
			image_index=0;
			spritetimer = 0;
			sprite_index = sprite_get("platform");
			}
		else
			{
			image_index+=1;
			}
		}
	}