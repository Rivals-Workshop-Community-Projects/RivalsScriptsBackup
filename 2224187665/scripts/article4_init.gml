//

sprite_index = sprite_get("goomba");

//Variables
active=true;
respawntimer=0;
falltimer=1;
blocktype=0; //0 for coin, 1 for mushroom
spx=0;
spy=0;
startx=x;
targx=x-90;
fx=120;
image_xscale=2;
image_yscale=2;
can_be_grounded = false;                            //Determines if the article follows platforms when free == false.
ignores_walls = true;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.

depth=32;
y+=spawn_variables[1];
hsp=-1;
x-=5;