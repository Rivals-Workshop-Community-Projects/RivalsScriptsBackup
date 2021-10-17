//articleX_init - runs once, when the article is created. Template by Muno

//Sprite and direction
sprite_index = sprite_get("empty");           //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation                      //The direction the article should face when it spawns. Here I have it set to face the same way as the character
uses_shader = true;                                 //Whether or not the article is recolored according to the character's color.gml and costume.

//State
state = 0;                                          //The behavior state the article should start in.
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = 0;                                            //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 0;                                            //The vertical speed of the article.
exist_timer = 0;                                    //How long the article has existed.
depth = 4;

//Terrain behavior
can_be_grounded = true;                            //Determines if the article follows platforms when free == false.
ignores_walls = false;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.
mask_index = sprite_get("puddle_mask")

//Cope with own mortality
should_die = false;                                 //If this is ever set to true, the article will change to state 2 (despawn animation) as soon as it's not busy. This keeps it from despawning in the middle of something

//DEFINE YOUR OWN VARIABLES HERE!

//Sprites (the number in [brackets] is the state)
sprite[0] = sprite_get("puddle");             //Example sprites
sprite[1] = sprite_get("puddle");
sprite[2] = sprite_get("puddle_fade");
sprite[3] = sprite_get("puddle_electric");
sprite[4] = sprite_get("article_idle");
sprite[5] = sprite_get("puddle_edge");
sprite[6] = sprite_get("article_idle");
sprite[7] = sprite_get("article_idle");
sprite[8] = sprite_get("puddle_electric");
sprite[9] = sprite_get("article_idle");


mask[0] = sprite_get("puddle_mask");             //Example sprites
mask[1] = sprite_get("puddle_mask");
mask[2] = sprite_get("puddle_mask");
mask[3] = sprite_get("article_idle");
mask[4] = sprite_get("article_idle");
mask[5] = sprite_get("puddle_mask");
mask[6] = sprite_get("article_idle");
mask[7] = sprite_get("article_idle");
mask[8] = sprite_get("puddle_mask");
mask[9] = sprite_get("article_idle");


anim_type[0] = 0;
anim_type[1] = 1;
anim_type[2] = 2;
anim_type[3] = 3;
anim_type[4] = 4;
anim_type[5] = 5;
anim_type[6] = 6;
anim_type[7] = 7;
anim_type[8] = 8;
anim_type[9] = 0;

//stuff

edge_state = 0;

slipped = noone;
old_slipped = noone;

marked_for_electricity = 0;

edge = 0;


min = "X"
max = "n"

rechecking = 0;

hitbox_timer = 0;