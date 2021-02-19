//

sprite_index = sprite_get("koopa");

//Variables
active=true;
respawntimer=0;
falltimer=1;
blocktype=0; //0 for coin, 1 for mushroom
spx=0;
spy=0;
startx=x;
targx=x-100;
fx=170;

image_xscale=-2;
image_yscale=2;
can_be_grounded = false;                            //Determines if the article follows platforms when free == false.
ignores_walls = true;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.

depth=33;
y+=spawn_variables[1];
hsp=-1;
x-=30;