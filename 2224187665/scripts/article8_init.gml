//Healing Item
//This is also used as the root item object.

sprite_index = sprite_get("food");

//Variables
active=true;
respawntimer=0;
falltimer=1;
blocktype=1;
lifetimer=1200;
spx=0;
spy=0;
grav=0.2;
heal=0;
sp=1;
image_index = blocktype;

can_be_grounded = true;                            //Determines if the article follows platforms when free == false.
ignores_walls = false;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.

vsp=0.03;

