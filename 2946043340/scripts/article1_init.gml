//article1_init - runs once, when the article is created

//Sprite and direction
sprite_index = sprite_get("point_spawn");           //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation
spr_dir = player_id.spr_dir;                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character                                
shoulddie = false;
//image_angle = 0;
//is_hittable = true;

//State
prev_state = 0;
state = 0;                                          //The behavior state the article should start in.
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = 0;                                            //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 0;                                            //The vertical speed of the article.

article_was_hit = false;
point_hitbox = noone;
point_pull = false;
enemy_caught = noone;
fspecial_active = false;
fspecial_colision = noone;
fspecial_homing = noone;
homing_dir = 0;
homing_hsp = 0;
homing_vsp = 0;
target_x = 0;
target_y = 0;

//Terrain behavior
can_be_grounded = false;                            //Determines if the article follows platforms when free == false.
ignores_walls = true;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.
