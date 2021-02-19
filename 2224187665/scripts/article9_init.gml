//Koopa Shell


sprite_index = sprite_get("bombsit");

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
hitcooldown=60;
state=0; //0-Static 1-Moving
hitangle=0;
hitspeed=0;
prehsp=0;
prevx=x;
prevy=y;
image_index = blocktype;

can_be_grounded = true;                            //Determines if the article follows platforms when free == false.
ignores_walls = false;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.

vsp=0.01;