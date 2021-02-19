//Healing Item
//This is also used as the root item object.

sprite_index = asset_get("emptysprite");

//Variables
active=true;
respawntimer=0;
falltimer=1;
blocktype=1; //0 for maxim tomato, 1 for heart container
spx=0;
spy=0;
grav=0.1;
lifetimer=1200;
blocktype=random_func( floor((x/8)%7+(y/16)%6), 3, true );
switch (blocktype)
{
	case 0:
	case 2:
	sprite_index = sprite_get("tomato");
	blocktype=0;
	break;
	case 1:
	sprite_index = sprite_get("heart");
	grav=0.01;
	break;
}
image_index = blocktype;

can_be_grounded = true;                            //Determines if the article follows platforms when free == false.
ignores_walls = false;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.

vsp=0.01;