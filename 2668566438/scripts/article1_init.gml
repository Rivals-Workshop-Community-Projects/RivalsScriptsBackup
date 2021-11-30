//Sprite and direction
sprite_index = sprite_get("puddle");           //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation
spr_dir = 1;                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
uses_shader = true;                                 //Whether or not the article is recolored according to the character's color.gml and costume.

//State
state = 0;                                          //The behavior state the article should start in.
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = 0;                                            //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 0;                                            //The vertical speed of the article.

//Terrain behavior
can_be_grounded = false;                            //Determines if the article follows platforms when free == false.
ignores_walls = true;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.
                                  //The current amount of frames remaining in the buffer window. When this reaches zero, the article will throw away the buffered state request.
                    
new_sprite = sprite_get("puddle");             //This is another part of the animation handling. It tells the game "this is the sprite this article should be using; if it's not already, switch it over please"
animation_type = 1;
puddle_idle_anim_rate = 5;
//The maximum number of this article that should exist at once.

//Cure depression
shoulddie = false;                                  //If this is set to true, the article will change to state 2 (despawn animation) as soon as it's not busy. This keeps it from despawning in the middle of something

isBeeDrillPuddle = true;