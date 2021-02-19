//

sprite_index = sprite_get("lakitu");

//Variables
active=true;
respawntimer=0;
falltimer=1;
peektimer=400;
state=0;//0-Up-right long 1-Down-left short 2-Up-right short 3-Down-left long
blocktype=0; //0 for coin, 1 for mushroom
spx=0;
spy=0;
vx=x;
vy=y;
startx=x;
starty=y;
targx=x+70;
targy=y-10;
fx=170;

can_be_grounded = false;                            //Determines if the article follows platforms when free == false.
ignores_walls = true;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.

depth=31;
y+=spawn_variables[1];
hsp=-1;
x-=30;