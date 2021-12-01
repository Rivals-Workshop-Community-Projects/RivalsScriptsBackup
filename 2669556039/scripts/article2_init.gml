//article1_init

//Sprite and direction
sprite_index = sprite_get("healparticle");//sprite_get("dspecialHead");           //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
mask_index = sprite_get("healparticle");//stil not accurate?
image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation
spr_dir = 1;                                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
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

new_sprite = 0;//sprite_get("gravestatus");             //This is another part of the animation handling. It tells the game "this is the sprite this article should be using; if it's not already, switch it over please"
idle_anim_rate = 5;

air_timer = 0;
was_free = false;
has_landed = false;

overrideImgIndex = false;
forceNextState = -1;

xLast = 0;
yLast = 0;

depth = -10;

timer = 0;