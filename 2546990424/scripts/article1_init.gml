//article1_init - runs once, when the article is created

//Sprite and direction
//sprite_index = sprite_get("idle_clone");           //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation
spr_dir = 1;                                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
uses_shader = true;                                 //Whether or not the article is recolored according to the character's color.gml and costume.
image_xscale *= 2;
image_yscale *= 2;
shoulddie = false;
image_angle = 0;

mask_index = sprite_get("dspecial_mask");

//State
state = 0;                                          //The behavior state the article should start in.
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = 0;                                            //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 0;                                            //The vertical speed of the article.

whirlwind_first = false;    //If this is the first Whirlwind created
whirlwind_second = false;   //If this is the second Whirlwind created
whirlwind_shaking = 0;

//Hitbox detection stuff
whirlwind_x_hitbox = 0;
whirlwind_y_hitbox = 0;
whirlwind_hitbox_num = 0;
whirlwind_active_hitbox = 0;
whirlwind2_active_hitbox = 0;

//Terrain behavior
can_be_grounded = false;                            //Determines if the article follows platforms when free == false.
ignores_walls = true;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.
