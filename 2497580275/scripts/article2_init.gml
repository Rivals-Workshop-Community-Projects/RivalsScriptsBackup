//Knife man. Template by Muno

//Sprite and direction + hero boomerang
if (get_player_color( player ) == 8) {
    sprite_index = sprite_get("hero_proj");
    } else {sprite_index = sprite_get("nspecial_projectile");}//The sprite that the article will (initially) use. Replace text in quotes with your sprite's name

image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation
spr_dir = player_id.spr_dir;                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
uses_shader = true;                                 //Whether or not the article is recolored according to the character's color.gml and costume.

//State
state = 0;                                          //The behavior state the article should start in.
hit_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = 6*spr_dir;                                    //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 0;                                            //The vertical speed of the article.

//Terrain behavior
can_be_grounded = false;                            //Determines if the article follows platforms when free == false.
ignores_walls = true;                              //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.

vertMove = -1;
if(player_id.down_down)
    vertMove = -15;
else if(player_id.up_down)
    vertMove = 15;