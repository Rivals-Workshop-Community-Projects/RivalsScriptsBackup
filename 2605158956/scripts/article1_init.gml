//Sprite and direction
sprite_index = sprite_get("bomb");   //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation
spr_dir = player_id.spr_dir;                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
uses_shader = true;                                 //Whether or not the article is recolored according to the character's color.gml and costume.

//State
state = 0;                                          //The behavior state the article should start in.
state_timer = 0;                                      //The point in time during that state the article should start in. (0 = beginning)
bomb_tick = 0;
hsp = 0;                                    //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 0;                                            //The vertical speed of the article.
grav = 0;

//Terrain behavior
can_be_grounded = false;                            //Determines if the article follows platforms when free == false.
ignores_walls = true;                              //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.

spawn_protection = true;
was_kicked = false;

//SuperSonicNK Hitbox Detection cuz im dumb lmao - mcducky
//article init
hbox_group = array_create(4,array_create(50,array_create(10,0))); //ew

hitstun = 0;
hitstun_full = 0;
hit_lockout = 0;
kb_adj = 1;
kb_dir = 0;
orig_knock = 0;

TBexplosion = hit_fx_create(sprite_get("explosion"),48);