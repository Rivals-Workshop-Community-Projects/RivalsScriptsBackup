//article1_init - runs once, when the article is created

//Sprite and direction
sprite_index = sprite_get("dairB");				//The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
image_index = player_id.image_index;                                    //The frame in the animation the article should start at. 0 = beginning of animation
//myimgindex = player_id.image_index;
spr_dir = player_id.spr_dir;                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
uses_shader = true;                                 //Whether or not the article is recolored according to the character's color.gml and costume.

//State
state = 0;                                          //The behavior state the article should start in.
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = 0;                                            //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 0;

//The vertical speed of the article.

//Terrain behavior
can_be_grounded = false;                             //Determines if the article follows platforms when free == false.
ignores_walls = true;                              //Determines if the article goes through walls.
free = true;                                       //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.

//State buffering (for if the article is busy when you send it a state command)
bufferedstate = 0;                                  //The state fed to the article by the player. Set this in your character's code, and the article will set itself to the requested state as long as it's available within 20 frames of the input
buffertimer = 0;                                    //The current amount of frames remaining in the buffer window. When this reaches zero, the article will throw away the buffered state request.

//Animation speeds and timers
idle_anim_rate = 0;									//Example animation speed value 1. The animation in question will increment every 8 frames in this case
die_anim_rate = 0;									//Example animation speed value 2.
die_time = 0;										//Example variable used in this case to determine how long the article should take to die (state 2). 
animation_type = 2;                                 //This variable is part of the animation handling found in article1_update. It determines when, or how frequently, the image_index should increment
new_sprite = sprite_get("article");					//This is another part of the animation handling. It tells the game "this is the sprite this article should be using; if it's not already, switch it over please"
