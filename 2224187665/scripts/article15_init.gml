//

sprite_index = sprite_get("firework");

//Variables
active=true;
visible=false;
appeartimer=3;
image_xscale=2;
image_yscale=2;

can_be_grounded = false;                            //Determines if the article follows platforms when free == false.
ignores_walls = true;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
