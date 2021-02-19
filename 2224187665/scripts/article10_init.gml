//Koopa Shell


sprite_index = sprite_get("star");
mask_index = sprite_get("starmask");

//Variables
active=true;
respawntimer=0;
falltimer=1;
blocktype=0; //0 for green shell, 1 for red shell
spx=0;
spy=0;
lifetimer=1200;
hbtimer=4; //How long before a hitbox is created.
grav=0.2;
hitcooldown=2;
invpl=noone;
coltimer=1;		
state=1; //0-Static 1-Moving
hitangle=0;
hitspeed=0;
prehsp=0;
prevx=x;
prevy=y;
sparkle = obj_stage_main.sparkle;
halfheight=0;
if (obj_stage_main.starman)
{
	instance_create(x,y,"obj_stage_article", 9);
	instance_destroy();
}
else
{
	obj_stage_main.starman=true;
}

can_be_grounded = true;                            //Determines if the article follows platforms when free == false.
ignores_walls = false;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.

vsp=0.01;
hsp=3;

if (random_func(7,20,true)<10)
{
	hsp=-3;
}