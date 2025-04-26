//article1_init - runs once, when the article is created

//Sprite and direction
sprite_index = sprite_get("firemen");           	//The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
image_index = 1;                                    //The frame in the animation the article should start at. 0 = beginning of animation
spr_dir = player_id.spr_dir;                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character                                
shoulddie = false;
image_alpha = 1;
uses_shader = true;
mask_index = sprite_get("firemen_collision");

//State
prev_state = 0;
state = 0;                                          //The behavior state the article should start in.
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = 0;                                            //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 0;                                            //The vertical speed of the article.
grav = .6;
max_fall = 12;
bounceTimer = 0;

transition_state = 0;
firemenHealth = 5;
dietimer = 0;
tiredTimer = firemenHealth;

//Terrain behavior
can_be_grounded = true;                            //Determines if the article follows platforms when free == false.
ignores_walls = false;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.