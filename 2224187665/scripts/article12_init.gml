//Healing Item
//This is also used as the root item object.

sprite_index = sprite_get("pball");
mask_index = sprite_get("pballmask");

//Variables
active=true;
respawntimer=0;
falltimer=1;
blocktype=1;
lifetimer=1200;
statetimer=0;
spx=0;
spy=0;
grav=0.2;
heal=0;
rng=random_func( floor((x/8)%7+(y/16)%6), 100, true ); //Determine which items should come out.
cooldown=0; //Cooldown for hitting it.
hp=30;
state=0 //0-Stationary 1-Floating Up 2-Flashing 3-Open

can_be_grounded = true;                            //Determines if the article follows platforms when free == false.
ignores_walls = false;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.

vsp=0.03;

