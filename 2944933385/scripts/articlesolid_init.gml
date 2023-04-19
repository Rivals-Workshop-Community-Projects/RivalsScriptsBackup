//articleX_init - runs once, when the article is created. Template by Muno

//Sprite and direction
sprite_index = sprite_get("hydrant");           //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
mask_index = sprite_get("hydrant_hurtbox");
image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation
spr_dir = 1;                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
uses_shader = true;                                 //Whether or not the article is recolored according to the character's color.gml and costume.
is_hittable = true;
//State
state = 0;                                          //The behavior state the article should start in.
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
prev_state = 0;
prev_timer = 0;
prev_index = 0;
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = 0;                                            //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 8;                                            //The vertical speed of the article.
exist_timer = 0;                                    //How long the article has existed.
is_free = true;
health = 14;
//Terrain behavior
can_be_grounded = true;                            //Determines if the article follows platforms when free == false.
ignores_walls = false;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.
recent_player = player_id.player;
//Cope with own mortality
should_die = false;                                 //If this is ever set to true, the article will change to state 2 (despawn animation) as soon as it's not busy. This keeps it from despawning in the middle of something
init_free = false;
prev_hbox_num = 0;
prev_hbox_group = 0;
hbox_refresh_time = 0;
hbox_refresh = false;
prev_attack = 0;
hitstun_time = 0;
kb_angle = 0;
fancynum = 0.12;
kb_adj = 0.8;
bkb = 0;
kb_scaling = 0;
hbox_spr_dir = 1;

idle_time = 0;
sprays = 0;
spray_dir = 0; // 0 = side, 1 = up

left_block = noone;
right_block = noone;

