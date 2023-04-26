//abyss rune laser pointer

//Sprite and direction           
//The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
sprite_index = sprite_get("dstrong_laser");      
image_index = 20;                                 //The frame in the animation the article should start at. 0 = beginning of animation
spr_dir = player_id.spr_dir;                       //The direction the article should face when it spawns. Here I have it set to face the same way as the character
uses_shader = false;                                 //Whether or not the article is recolored according to the character's color.gml and costume.
//mask_index = sprite_get("hat_mask");

//State
state = 0;                                          //The behavior state the article should start in.
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = 0;                                            //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 0; 
timer = 0;
total_timer = 0;

ignores_walls = true;  