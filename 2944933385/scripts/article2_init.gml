//Sprite and direction
fruit_num = player_id.fruit_num;
sprite_index = sprite_get("fruit");           //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
image_index = fruit_num;                                    //The frame in the animation the article should start at. 0 = beginning of animation
spr_dir = player_id.spr_dir;                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
uses_shader = false;                                 //Whether or not the article is recolored according to the character's color.gml and costume.
owner = player_id.player;
//State
state = 0;                                          //The behavior state the article should start in.
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = 0;                                            //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = -0.5;                                            //The vertical speed of the article.
if (fruit_num == 5){
    vsp = -2;
}
grav = 0;                                           //Constant vsp weighing onto the fruit.
exist_timer = 0;                                    //How long the article has existed.
resistance = 1;                                     //Basically the equivalent to hitbox priority: will be destroyed by other hitboxes if their priority is higher.
bounces = 0;
max_bounces = 1;
passes_through = false;
airtime = 0;
max_airtime = 50;
wall_bounce = false;
looped = false;
loop_point_x = 0;
loop_point_y = 0;
parried = false;
//Terrain behavior
can_be_grounded = true;                            //Determines if the article follows platforms when free == false.
ignores_walls = false;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.
//Cope with own mortality
should_die = false;                                 //If this is ever set to true, the article will change to state 2 (despawn animation) as soon as it's not busy. This keeps it from despawning in the middle of something
galaxian_sound = sound_get("sfx_galaxian");
//DEFINE YOUR OWN VARIABLES HERE!
collected = false;
hbox_x_offset = 0;