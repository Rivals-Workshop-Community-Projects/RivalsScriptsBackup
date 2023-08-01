//Afterimage buddy. Template by Muno

//Sprite and directio
sprite_index = sprite_get("pillarbody");           //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation
image_alpha = 1;
spr_dir = player_id.spr_dir;
uses_shader = false;                                 //Whether or not the article is recolored according to the character's color.gml and costume.

//State
idle_timer = 0;
state = 0;                                          //The behavior state the article should start in.
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
pulse_timer = 0;
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = 0;                                            //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 0;                                            //The vertical speed of the article.
set_y = y;
dest_y = y-300;

//Terrain behavior
can_be_grounded = false;                            //Determines if the article follows platforms when free == false.
ignores_walls = true;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.
hourglass_obj = noone;
closestPlayer = noone;
closestDist = 0;

destroy_fx = hit_fx_create(sprite_get("pillardestroy"), 15);
top_fx = hit_fx_create(sprite_get("pillartop"), 30);