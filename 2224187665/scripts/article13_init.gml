//Healing Item
//This is also used as the root item object.

sprite_index = asset_get("emptysprite");

blocktype=random_func( floor((x/8)%7+(y/16)%6), 100, true );
if(is_aether_stage())
{
	if(blocktype<32)
	{
		instance_create(x,y,"obj_stage_article", 7);
		instance_destroy();
	}
	else if (blocktype<50)
	{
		instance_create(x,y,"obj_stage_article", 8);
		instance_destroy();
	}
	else if (blocktype<60)
	{
		
		instance_create(x,y,"obj_stage_article", 9);
		instance_destroy();
	}
	else if (blocktype<87)
	{
		instance_create(x,y,"obj_stage_article", 12);
		instance_destroy();
	}
	else if (blocktype<92)
	{
		instance_create(x,y,"obj_stage_article", 11);
		instance_destroy();
	}
	else if (blocktype<98)
	{
		instance_create(x,y,"obj_stage_article", 2);
		instance_destroy();
	}
	else
	{
		instance_create(x,y,"obj_stage_article", 10);
		instance_destroy();
	}
}
else
{
	if(blocktype<32)
	{
		instance_create(x,y,"obj_stage_article", 7);
		instance_destroy();
	}
	else if (blocktype<50)
	{
		instance_create(x,y,"obj_stage_article", 8);
		instance_destroy();
	}
	else if (blocktype<86)
	{
		
		instance_create(x,y,"obj_stage_article", 9);
		instance_destroy();
	}
	else if (blocktype<92)
	{
		instance_create(x,y,"obj_stage_article", 11);
		instance_destroy();
	}
	else if (blocktype<98)
	{
		instance_create(x,y,"obj_stage_article", 2);
		instance_destroy();
	}
	else
	{
		instance_create(x,y,"obj_stage_article", 10);
		instance_destroy();
	}
}
image_index = blocktype;

can_be_grounded = true;                            //Determines if the article follows platforms when free == false.
ignores_walls = false;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.

vsp=0.01;