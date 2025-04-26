//articleX_init - runs once, when the article is created. Template by Muno

//Sprite and direction
sprite_index = sprite_get("brick_ball");           //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
image_index = 0;
mask_index = sprite_get("brick_ball");//The frame in the animation the article should start at. 0 = beginning of animation
spr_dir = player_id.spr_dir;                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
uses_shader = true;                                 //Whether or not the article is recolored according to the character's color.gml and costume.
is_hittable = true;

roll_sound = sound_get("ratmountball");
roll_sound_play = false;

//State
state = 0;                                          //The behavior state the article should start in.
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = 10*spr_dir;                                          //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 0;                                            //The vertical speed of the article.
grav = 10;
exist_timer = 0;                                    //How long the article has existed.
hitstun_time = 0;
//Terrain behavior
can_be_grounded = true;                            //Determines if the article follows platforms when free == false.
ignores_walls = false;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.
recent_player = player_id.player;
//Cope with own mortality
should_die = false;                                 //If this is ever set to true, the article will change to state 2 (despawn animation) as soon as it's not busy. This keeps it from despawning in the middle of something
was_free = true;
smash_charge = player_id.strong_charge;
brickbox = noone;