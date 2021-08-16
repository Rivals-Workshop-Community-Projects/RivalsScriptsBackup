//article1_init - runs once, when the article is created

//Sprite and direction
sprite_index = sprite_get("block");           //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation
spr_dir = 1;                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
//uses_shader = true;                                 //Whether or not the article is recolored according to the character's color.gml and costume.
//mask_index = sprite_get("hat_mask");

//State
state = 0;                                          //The behavior state the article should start in.
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = 0;                                            //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 0;                                            //The vertical speed of the article.
number = 0;                 //Block Number
lighting_strike = false;    //Tells the article if the lighting should strike

/*

center_x = 100; //	center_x = x;
center_y = 100; //	center_y = y;
amplitude_x = 50;
amplitude_y = 25;
frequency = 5;
timer = 0;

x = amplitude_x * dcos(timer * frequency) + center_x;
y = amplitude_y * dsin(timer * frequency * 2)  + center_y;
timer++;

//Terrain behavior
//can_be_grounded = true;                            //Determines if the article follows platforms when free == false.
//ignores_walls = false;                               //Determines if the article goes through walls.
//free = false;                                        //Whether the article is in the air or not.
//hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.
