//

sprite_index = sprite_get("brick");

//Variables
active=true;
respawntimer=0;
blocktype=0; //0 for brick block, 1 for item block

if (random_func( (x/8)%7+(y/16)%6, 20, true )<9)
{
	if ("blocknum" in obj_stage_main)
	{
		if (obj_stage_main.blocknum<2)
		{
			blocktype=1;
			sprite_index = sprite_get("block");
			obj_stage_main.blocknum+=1;
		}
	}
	else
	{
		obj_stage_main.blocknum=1;
		sprite_index = sprite_get("block");
		blocktype=1;
	}
	
}