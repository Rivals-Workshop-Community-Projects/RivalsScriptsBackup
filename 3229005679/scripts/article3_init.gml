//article1_init - runs once, when the article is created

//Sprite and direction
                                                      //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation
spr_dir = player_id.spr_dir;                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
uses_shader = true;                                 //Whether or not the article is recolored according to the character's color.gml and costume.
image_xscale *= 2;
image_yscale *= 2;
small_sprites = 1;
sprite_index = sprite_get("weenieSpawn");
mask_index = sprite_get("weenieMask")
hurtbox_spr = sprite_get("weenieMask");
article_anim_speed = 0.2;
visible = true;
image_alpha = 1;
depth = player_id.depth+1;
destroyed = false;

//State
state = 1;                                          //The behavior state the article should start in.
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = 0;                                            //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 0;                                            //The vertical speed of the article.
is_hittable = true;
hittable_hitpause_mult = 0.5;

//Terrain behavior
can_be_grounded = true;                            //Determines if the article follows platforms when free == false.
ignores_walls = false;                               //Determines if the article goes through walls.
free = false;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.
article_gravity = 0.5;
article_max_fall_speed = 13;
article_friction = 0.5;

//Custom
can_be_hit[player_id.player] = 2;
afterimage_array = 0;
weenieBox = noone;