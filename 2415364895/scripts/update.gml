//star spawn timer
with oPlayer
{
	if hitstop
	{
		with other
		{
			starTimerDef = 7;
		}
	}
	else
	{
		with other
		{
			starTimerDef = 20;
		}
	}
}

if starTimer < starTimerDef
	starTimer++;
else
{
	starTimer = 0;
	
	createStar(starX,starY);
}

#define createStar(mx,my)
{
	if starTimerDef = 20
	{
		instance_create(mx,my,"obj_stage_article",3);
	}
	else if starTimerDef = 7
	{
		var xSpawn = random_func(0, 1300,true);
		var xSpawn2 = random_func(24, 1286,true);
		var ySpawn = random_func(0, 600,true);
		var ySpawn2 = random_func(24, 586,true);
		
		var sparkles = instance_create(0+xSpawn,ySpawn,"obj_stage_article",3);
		sparkles.dir = random_func(get_gameplay_time()%12, 359,true);
		
		var sparkles2 = instance_create(0+xSpawn2,ySpawn2,"obj_stage_article",3);
		sparkles2.dir = random_func(get_gameplay_time()%24, 359,true);
	}
}
