//Sprite and direction
sprite_index = sprite_get("comet_spawn");           //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation
spr_dir = player_id.spr_dir;                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
//uses_shader = true;                                 //Whether or not the article is recolored according to the character's color.gml and costume.

//State
state = 0;                                          //The behavior state the article should start in.
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
exist_timer = 0;                                    //How long the article has existed.

//Terrain behavior
can_be_grounded = false;                            //Determines if the article follows platforms when free == false.
ignores_walls = true;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.

//Cope with own mortality
should_die = false;									//If this is ever set to true, the article will change to state 2 (despawn animation) as soon as it's not busy. This keeps it from despawning in the middle of something                     
killarticles = false;
puddleHitbox = noone;
hurtcounter = 0;
activate = false

comet_clinged = false;
hit_tetramino = 0;
combustable = false
combust_now = false

is_hitpause = false;
//DEFINE YOUR OWN VARIABLES HERE!

hitbox_activate = false;

//Sprites (the number in [brackets] is the state)
sprite[0] = sprite_get("comet_spawn"); 
sprite[1] = sprite_get("comet_idle"); 
sprite[2] = sprite_get("comet_startup"); 
sprite[3] = sprite_get("comet_launch");
sprite[4] = sprite_get("comet_launch");
sprite[5] = sprite_get("comet_launch");
sprite[6] = sprite_get("comet_startup"); 
//sprite[6] = sprite_get("article_idle");
//sprite[7] = sprite_get("article_idle");
//sprite[8] = sprite_get("article_idle");
//sprite[9] = sprite_get("article_idle");

anim_type[0] = 0;
anim_type[1] = 1;
anim_type[2] = 2;
anim_type[3] = 3;
anim_type[4] = 4;
anim_type[5] = 5;
anim_type[6] = 6;
//anim_type[6] = 0;
//anim_type[7] = 0;
//anim_type[8] = 0;
//anim_type[9] = 0;     